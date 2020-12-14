package com.example.syau_web.domain.map;

import com.example.syau_web.domain.Publish;
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
 * 2018/10/25 0025 19:57
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class PublishMapTest {

    @Autowired
    private PublishMap publishMap;

    /**
     *         添加数据
     * 测试通过
     */
    @Test
    public void addPublish() {
        Publish publish = new Publish();
        publish.setUserNumber(2016188023);
        publish.setPublishContent("这是一个测试");
        int i = publishMap.addPublish(publish);
        Assert.assertEquals("1",i);
    }

    @Test
    public void findAllPublish(){
        List<Publish> publishes = publishMap.selectAllPublish();
        publishes.stream().forEach(publish -> System.out.println(publish.getPublishContent()));
        Assert.assertNotNull(publishes);
    }

    @Test
    public void deleteById(){
        int i = publishMap.deletePublishById(1);
        System.out.println(i);

    }
    @Test
    public void testRole(){
        List<Publish> number = publishMap.findAllByNumber(Arrays.asList(2016188023,122));
        Assert.assertNotNull(number);
    }


}