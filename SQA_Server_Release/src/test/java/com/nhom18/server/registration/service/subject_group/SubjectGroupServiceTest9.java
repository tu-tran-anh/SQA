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
public class SubjectGroupServiceTest9 {
    @Autowired
    private SubjectGroupService service;

    // test tìm kiếm danh sách các nhóm học của môn học có id là 2, có ngày học là "W" theo thứ tự tăng dần mã nhóm
    @Test
    public void testFindByTermSubject(){
        SubjectGroupRequest request = new SubjectGroupRequest();
        request.setProperties("code");
        request.setOrder("asc");
        request.setPageNum(0);
        request.setRecordPerPage(5);
        request.setSearchType(1);
        request.setSearchData("W");
        request.setTermSubjectId(2);

        List<SubjectGroupDTO> ans =service.findByTermSubject(request);
        Assertions.assertEquals(0,ans.size()); // List có size = 0 thì pass
    }
}
