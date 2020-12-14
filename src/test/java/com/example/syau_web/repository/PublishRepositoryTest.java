package com.example.syau_web.repository;

import com.example.syau_web.domain.Publish1;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * 作者：王宇
 * 创建时间：2019/4/12 0012 19:45
 * 描述：
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class PublishRepositoryTest {

    @Autowired
    private PublishRepository publishRepository;

    @Test
    public void  findAll(){
        List<Publish1> all = publishRepository.findAll();
        Assert.assertNotNull(all);
    }
}