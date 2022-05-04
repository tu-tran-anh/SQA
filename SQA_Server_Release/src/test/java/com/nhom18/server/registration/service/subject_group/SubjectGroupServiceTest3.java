package com.nhom18.server.registration.service.subject_group;

import com.nhom18.server.controller.registration.dto.SubjectGroupDTO;
import com.nhom18.server.controller.registration.dto.SubjectGroupRequest;
import com.nhom18.server.controller.registration.service.SubjectGroupService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class SubjectGroupServiceTest3 {
    @Autowired
    private SubjectGroupService service;

    // test tìm kiếm danh sách các nhóm học theo thứ tự tăng dần kíp học của môn học có id là 1
    @Test
    public void testFindByTermSubject(){
        SubjectGroupRequest request = new SubjectGroupRequest();
        request.setProperties("shift");
        request.setOrder("asc");
        request.setPageNum(0);
        request.setRecordPerPage(5);
        request.setSearchType(0);
        request.setSearchData("");
        request.setTermSubjectId(1);

        List<SubjectGroupDTO> ans =service.findByTermSubject(request);
        Assertions.assertEquals(2,ans.size());

        // nhóm có kíp học nhỏ hơn xếp trước thì pass
        Assertions.assertTrue(ans.get(0).getGroupInfo().get(0).getShift()
                .compareTo(ans.get(1).getGroupInfo().get(0).getShift())<=0);
    }
}
