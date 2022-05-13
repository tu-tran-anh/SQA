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
public class SubjectGroupServiceTest8 {
    @Autowired
    private SubjectGroupService service;

    // test tìm kiếm danh sách các nhóm học của môn học có id là 1, có ngày chứa xâu "Thứ b" theo thứ tự tăng dần mã nhóm
    @Test
    public void testFindByTermSubject(){
        SubjectGroupRequest request = new SubjectGroupRequest();
        request.setProperties("code");
        request.setOrder("asc");
        request.setPageNum(0);
        request.setRecordPerPage(5);
        request.setSearchType(1);
        request.setSearchData("Thứ b");
        request.setTermSubjectId(2);

        List<SubjectGroupDTO> ans =service.findByTermSubject(request);
        Assertions.assertEquals(1,ans.size()); // List có size = 1 thì pass
        // Ngày học chứa chuỗi "Thứ b"
        Assertions.assertTrue(ans.get(0).getLearningDay()
                .toLowerCase().contains("Thứ b".toLowerCase()));
    }
}
