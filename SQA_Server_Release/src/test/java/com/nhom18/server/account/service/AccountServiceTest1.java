package com.nhom18.server.account.service;


import com.nhom18.server.controller.account.dto.AccountDTO;
import com.nhom18.server.controller.account.dto.LoginRequest;
import com.nhom18.server.controller.account.service.AccountService;
import com.nhom18.server.dao.AccountDAO;
import com.nhom18.server.entity.user.Account;
import com.nhom18.server.exception.PasswordNotMatchException;
import com.nhom18.server.exception.UsernameNotFoundException;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class AccountServiceTest1 {


    @Autowired
    private AccountService service;

    // đăng nhập với tài khoản, mật khẩu đúng
    @Test
    public void testFindByUsername()throws UsernameNotFoundException, PasswordNotMatchException{
        LoginRequest request = new LoginRequest();
        request.setUsername("teacher1");
        request.setPassword("Sqa01!!!");
        AccountDTO account = service.findByUsername(request);
        Assertions.assertNotNull(account);
    }
}
