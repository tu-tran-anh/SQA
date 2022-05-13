package com.nhom18.server.registration.service.subject_group;

import com.nhom18.server.controller.registration.dto.GroupInfoDTO;
import com.nhom18.server.controller.registration.dto.SubjectGroupDTO;
import com.nhom18.server.controller.registration.dto.SubjectGroupRequest;
import com.nhom18.server.controller.registration.service.SubjectGroupService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class SubjectGroupServiceTest6 {
    @Autowired
    private SubjectGroupService service;

    // test tìm kiếm danh sách các nhóm học của môn học có id là 1, có kíp học là "L" theo thứ tự tăng dần mã nhóm
    @Test
    public void testFindByTermSubject(){
        SubjectGroupRequest request = new SubjectGroupRequest();
        request.setProperties("code");
        request.setOrder("asc");
        request.setPageNum(0);
        request.setRecordPerPage(5);
        request.setSearchType(2);
        request.setSearchData("L");
        request.setTermSubjectId(1);

        List<SubjectGroupDTO> ans =service.findByTermSubject(request);
        // List có size = 0 thì pass
        Assertions.assertEquals(0,ans.size());
    }
}
