package com.example.syau_web.test;

import org.junit.jupiter.api.Test;

/**
 *
 * 2018/11/15 0015 19:50
 */
public class JiSuan {

    @Test
    public void test1(){
        String s ="1+2";
        if (s.contains("+")){
            System.out.println("正确");
            String[] split = s.split("\\+");
//            System.out.println(split.toString());
            System.out.println(split[0]);
            System.out.println(split[1]);
            System.out.println("结果为："+(Integer.valueOf(split[0])+Integer.valueOf(split[1])));

        }
    }
}
