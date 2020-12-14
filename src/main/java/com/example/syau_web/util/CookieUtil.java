package com.example.syau_web.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * 2018/11/19 0019 10:33
 * cookie的工具类
 */
public class CookieUtil {

    /**
     * 设置cookie的方法
     * @param response
     * @param name
     * @param value
     * @param maxAge
     */
    public static void setCookie(HttpServletResponse response,
                                 String name,
                                 String value,
                                 int maxAge){
        Cookie cookie = new Cookie(name,value);
        cookie.setPath("/");
        cookie.setMaxAge(maxAge);
        response.addCookie(cookie);
    }

    /**
     * 获取cookie的方法
     * @param request
     * @param name
     * @return
     */
    public static Cookie getCookie(HttpServletRequest request,
                                   String name){

        Map<String,Cookie> cookieMap = new HashMap<>();
        Cookie[] cookies = request.getCookies();
        if (cookies!=null){
            for (Cookie cookie:cookies){
                cookieMap.put(cookie.getName(),cookie);
            }
        }
        if (cookieMap.containsKey(name)){
            return cookieMap.get(name);
        }else {
            return null;
        }

    }
}
