package com.nhom18.server.registration.service.subject_group;

import com.nhom18.server.controller.registration.dto.GroupInfoDTO;
import com.nhom18.server.controller.registration.dto.SubjectGroupDTO;
import com.nhom18.server.controller.registration.dto.SubjectGroupRequest;
import com.nhom18.server.controller.registration.service.SubjectGroupService;
import com.nhom18.server.entity.group.GroupInfo;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.Locale;

@SpringBootTest
public class SubjectGroupServiceTest6 {
    @Autowired
    private SubjectGroupService service;

    // test tìm kiếm danh sách các nhóm học của môn học có id là 1, có kíp học là "Kíp 1" theo thứ tự tăng dần mã nhóm
    @Test
    public void testFindByTermSubject(){
        SubjectGroupRequest request = new SubjectGroupRequest();
        request.setProperties("code");
        request.setOrder("asc");
        request.setPageNum(0);
        request.setRecordPerPage(5);
        request.setSearchType(2);
        request.setSearchData("Kíp 1");
        request.setTermSubjectId(1);

        List<SubjectGroupDTO> ans =service.findByTermSubject(request);
        Assertions.assertEquals(2,ans.size()); // list có size = 2 thì pass

        // Mã nhóm id 0  <= mã nhóm id 1 thí pass
        Assertions.assertTrue(ans.get(0).getCode().compareTo(ans.get(1).getCode())<=0);

        // Kíp học của tất cả các nhóm đều là "Kíp 1" thì pass
        ans.forEach(item->{
            boolean check =false;
            for(GroupInfoDTO g:item.getGroupInfo()){
                if(g.getShift().toLowerCase().contains("Kíp 1".toLowerCase())){
                    check=true;
                    break;
                }
            }
            Assertions.assertTrue(check);
        });
    }
}
