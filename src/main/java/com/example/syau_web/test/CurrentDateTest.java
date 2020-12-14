package com.example.syau_web.test;

import org.junit.jupiter.api.Test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * 2018/11/20 0020 15:21
 */
public class CurrentDateTest {

    @Test
    public void test1(){
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        long l = System.currentTimeMillis();
        String s = dateFormat.format(l);
        System.out.println(s);
        try {
            Date object = (Date) dateFormat.parseObject(s);
            System.out.println(object);
            Date date = dateFormat.parse(s);
            System.out.println(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void test2(){
        long time = new Date().getTime();
        java.sql.Date date = new java.sql.Date(time);
        System.out.println(date);

    }
}
