package com.example.syau_web.util;

import java.text.SimpleDateFormat;

/**
 *
 * 2018/11/20 0020 15:25
 *
 * 转化时间的工具类
 */
public class DateFormatUtil {

    public static String getDate(){
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        long l = System.currentTimeMillis();
        String s = dateFormat.format(l);
        return s;
    }
}
