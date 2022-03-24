import React, { useEffect, useState } from "react";
import {
    makeStyles, Paper,
    TableBody, TableCell, TableRow, Typography
} from "@material-ui/core";
import { TeacherScheduleApi } from "../../../api/TeacherScheduleApi";
import { useTable } from "../../component/CustomTable";

let search = window.location.search;
let params = new URLSearchParams(search);
let id_teacher = parseInt(params.get('id'));

const useStyles = makeStyles((theme) => ({
    root: {
        width: "100%",
        padding: theme.spacing(3),
        paddingTop: theme.spacing(3)
    },
    title: {
        width: "100px",
        marginTop: theme.spacing(1),
        color: theme.palette.text.secondary,
        paddingBottom: theme.spacing(1)
    },
    search: {
        width: "100%",
        marginBottom: theme.spacing(2),
        display: "flex",
        justifyContent: "space-around",
        alignItems: "flex-end"
    },
    searchBox: {
        width: "80%"
    },
    tableCell: {
        minWidth: "50px",
        maxWidth: "200px",
        overflow: "hidden",
        textOverflow: "ellipsis",
        whiteSpace: "wrap"
    },

}));

const headerCells = [
    { title: "Mã nhóm", disableSorting: true, name: "subjectGroup.code" },
    { title: "Tên môn", disableSorting: true, name: "subjectGroup.termSubject.subject.name" },
    { title: "Ngày học", disableSorting: true, name: "learningDay" },
    { title: "Kíp học", disableSorting: true, name: "shift" },
    { title: "Tuần học", disableSorting: true, name: "learningWeek" },
    { title: "Phòng học", disableSorting: true, name: "room" },
    { title: "DSSV", disableSorting: true, name: "dssv" },
]



const showLabels = item => [
    item.subjectGroupCode,
    item.subjectName,
    item.learningDay,
    item.shift,
    item.learningWeek,
    item.room,
]


export default function ScheduleTable() {

    //Dữ liệu bảng
    const [record, setRecord] = useState([]);
    //Tổng số phần tử
    const [total, setTotal] = useState(0);

    //Xử lý chuyển trang
    const handlePage = async (pageNumber, recordPerPage, title, sortOrder) => {

        setPageNumber(pageNumber);
        let data = await TeacherScheduleApi.getByTeacherSchedule(id_teacher, 0, 5, title
            , "asc", 5, "")

        setRecord(data)
        if (data.length !== 0) {
            setTotal(data[0].totalItem);
        } else {
            setTotal(0);
        }

    }

    //Lấy thuộc tính của bảng
    const {
        CustomTable,
        CustomHeader,
        CustomPagination,
        setPageNumber
    } = useTable(headerCells, handlePage, total);
    //Cập nhật


    //CSS
    const classes = useStyles();

    return (
        <Paper elevation={3} className={classes.root}>

            <Typography variant="subtitle2" className={classes.title}>
                {"Lịch giảng dạy"}
            </Typography>
            <CustomTable>
                <CustomHeader />
                <TableBody>
                    {
                        record.length === 0
                            ? (

                                <TableRow>
                                    <TableCell align="center" colSpan={headerCells.length}>
                                        {"Không có dữ liệu"}
                                    </TableCell>
                                </TableRow>
                            )
                            : record.map((item, index) => (
                                <TableRow key={index}>
                                    {
                                        showLabels(item).map((label, index1) => (
                                            <TableCell
                                                align="center"
                                                key={index + " " + index1}
                                                className={classes.tableCell}
                                            >
                                                {label}

                                            </TableCell>
                                        ))
                                    }
                                </TableRow>
                            ))
                    }
                </TableBody>
            </CustomTable>
            <CustomPagination />
        </Paper>
    )
}