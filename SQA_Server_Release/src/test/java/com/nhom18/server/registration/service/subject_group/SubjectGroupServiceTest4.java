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
public class SubjectGroupServiceTest4 {
    @Autowired
    private SubjectGroupService service;


    @Test
    public void testFindByTermSubject(){
        SubjectGroupRequest request = new SubjectGroupRequest();
        request.setProperties("numberOfTeacher");
        request.setOrder("asc");
        request.setPageNum(0);
        request.setRecordPerPage(5);
        request.setSearchType(0);
        request.setSearchData("");
        request.setTermSubjectId(1);

        List<SubjectGroupDTO> ans =service.findByTermSubject(request);
        Assertions.assertEquals(2,ans.size());
        Assertions.assertTrue(ans.get(0).getNumberOfTeacher()<=ans.get(1).getNumberOfTeacher());
        ans.forEach(item->{
            Assertions.assertTrue(item.getCode().contains(""));
        });
    }
}
