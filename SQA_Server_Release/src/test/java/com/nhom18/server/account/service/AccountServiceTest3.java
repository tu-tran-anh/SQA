package com.nhom18.server.account.service;


import com.nhom18.server.controller.account.dto.AccountDTO;
import com.nhom18.server.controller.account.dto.LoginRequest;
import com.nhom18.server.controller.account.service.AccountService;
import com.nhom18.server.exception.PasswordNotMatchException;
import com.nhom18.server.exception.UsernameNotFoundException;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class AccountServiceTest3 {


    @Autowired
    private AccountService service;

    // đăng nhập với tài khoản sai
    @Test
    public void testFindByUsername()throws UsernameNotFoundException, PasswordNotMatchException{
        LoginRequest request = new LoginRequest();
        request.setUsername("teacher6");
        request.setPassword("Sqa01!!!");
        AccountDTO account = service.findByUsername(request);
        Assertions.assertNotNull(account);
    }
}
