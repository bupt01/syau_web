package com.example.syau_web.service.Impl;

import com.example.syau_web.domain.Category;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.*;

/**
 * create by wangyu
 * 2018/10/21 0021 17:56
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class CategoryServiceImplTest {
    @Autowired
    private CategoryServiceImpl categoryService;

    /**测试通过*/
    @Test
    public void findByCategoryTypeIn() {
        List<Category> categoryList = categoryService.findByCategoryTypeIn(Arrays.asList(5));
        Assert.assertNotNull(categoryList);
    }

    /**测试通过*/
    @Test
    public void findOneByCategoryId() {
        Category oneByCategoryId = categoryService.findOneByCategoryId("1");
        Assert.assertEquals("水果",oneByCategoryId.getCategoryName());
    }
}