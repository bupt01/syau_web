package com.example.syau_web.handler;

import com.example.syau_web.enums.ResultEnum;
import com.example.syau_web.exception.LoginException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

/**
 * 捕获异常处理
 * create by wangyu
 * 2018/11/19 0019 11:53
 */
@ControllerAdvice
public class MeExceptionHandler {

    //拦截登录异常
    @ExceptionHandler(value = LoginException.class)
    public ModelAndView LoginExceptionHandler(){

        Map<String, Object> map = new HashMap<>();
        map.put("msg", ResultEnum.NOT_LOGIN.getMessage());
        map.put("url","http://www.yiyufei.top:9001/login");
//        return new ModelAndView("redirect:http://localhost:8888/login");
        return new ModelAndView("common/error",map);
    }
}
