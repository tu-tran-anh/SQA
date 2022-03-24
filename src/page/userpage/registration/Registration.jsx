import { Grid, makeStyles } from "@material-ui/core";
import GroupTable from "./GroupTable";
import SubjectList from "./SubjectList";

const useStyle = makeStyles(theme => ({
    left: {
        order: 1,
        [theme.breakpoints.down("md")]: {
            order: 2
        }
    },
    right: {
        order: 2,
        [theme.breakpoints.down("md")]: {
            order: 1
        }
    }
}))

export default function Registration() {
    //CSS
    const classes = useStyle();

    return (
        <Grid container spacing={2} justify="center">
            <Grid item xs={12} sm={12} md={12} lg={3} className={classes.left}>
                <SubjectList />
            </Grid>
            <Grid item xs={12} sm={12} md={12} lg={9} className={classes.right}>
                <GroupTable />
            </Grid>

        </Grid>
    )
}