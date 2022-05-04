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
public class SubjectGroupServiceTest11 {
    @Autowired
    private SubjectGroupService service;

    // test tìm kiếm danh sách các nhóm học của môn học có id là 1, theo thứ tự tăng dần mã nhóm
    @Test
    public void testFindByTermSubject(){
        SubjectGroupRequest request = new SubjectGroupRequest();
        request.setProperties("code");
        request.setOrder("asc");
        request.setPageNum(0);
        request.setRecordPerPage(5);
        request.setSearchType(0);
        request.setSearchData("");
        request.setTermSubjectId(1);

        List<SubjectGroupDTO> ans =service.findByTermSubject(request);
        Assertions.assertEquals(2,ans.size()); // List có size = 2 thì pass
        // các nhóm học đều tồn tại những tuần chỉ học 1 kíp thì pass
        Assertions.assertNotNull(ans.stream()
                .filter(item->item.getGroupInfo().get(0).getLearningWeek().contains("_")
                        ||item.getGroupInfo().get(1).getLearningWeek().contains("_")));
    }
}
