package com.example.syau_web.service.Impl;

import com.example.syau_web.domain.User;
import com.example.syau_web.service.UserService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

/**
 * create by wangyu
 * 2018/10/19 0019 20:42
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class UserServiceImplTest {

    private final static Integer NUMBER =2016188023;
    private final static String PASSWORD ="123456";

    @Autowired
    private UserService userService;

    /**
     * 登录功能测试
     */
    @Test
    public void login() {

        User user = userService.login(NUMBER, PASSWORD);
        Assert.assertEquals("王宇",user.getUsername());
    }
}