package com.example.syau_web.controller;

import com.example.syau_web.DTO.PublishDTO;
import com.example.syau_web.domain.Publish;
import com.example.syau_web.domain.Publish1;
import com.example.syau_web.domain.User;
import com.example.syau_web.enums.MyExceptionEnum;
import com.example.syau_web.enums.ResultEnum;
import com.example.syau_web.exception.MyException;
import com.example.syau_web.repository.PublishRepository;
import com.example.syau_web.service.Impl.PublishServiceImpl;
import com.example.syau_web.service.WebSocket;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * create by wangyu
 * 2018/10/26 0026 13:38
 * <p>
 * 此类是和发布动态有关的类
 */
@Controller
public class PublishController {

    @Autowired
    private PublishServiceImpl publishService;

    @Autowired
    private PublishRepository publishRepository;

    @Autowired
    private WebSocket webSocket;
    private final static Logger logger = LoggerFactory.getLogger(PublishController.class);

    /**
     * 添加一条动态
     *
     * @param request
     * @param response
     */
    @RequestMapping("/admin/addpublish.action")
    public ModelAndView addPublish(HttpServletRequest request,
                                   HttpServletResponse response,
                                   Map<String, Object> map) {
        Publish publish = new Publish();
        PublishDTO publishDTO = new PublishDTO();

//        获取表单数据
        String description = request.getParameter("publishContent");
//        String description = request.getParameter("publishDescription");

        /**-------------从session中获取用户信息，一定要登录，才能有用户的信息-----------*/
        User user = (User) request.getSession().getAttribute("user");

//        运用自定义的publishDTO
        publishDTO.setUser(user);

        publishDTO.setPublishContent(description);
        publishDTO.setUserNumber(user.getNumber());
        int i = publishService.addPublish(publishDTO);

        //添加消息,公告的内容
        webSocket.sendMessage(publishDTO.getPublishContent());

        if (i != 0) {//如果添加了公告
            try {
                //            分发转向
//                request.getRequestDispatcher("/admin/publishList.action").forward(request, response);
                map.put("url", "/admin/publishList.action");
//                request.setAttribute("url","/admin/publishList.action");
                map.put("msg", ResultEnum.PUBLIC_SUCCESS.getMessage());
//                request.getRequestDispatcher("/publish/list").forward(request, response);
                return new ModelAndView("common/success", map);
            } catch (MyException e) {
                logger.info(e.getMessage());
            }
        }
        return null;
    }

    /**
     * 显示公告列表
     */
    @RequestMapping("/admin/publishList.action")
    public ModelAndView publishList(ModelAndView modelAndView) {
//        List<Publish> publishList = publishService.publishList();
        /**显示的是学生反馈的信息*/
//        List<Publish> publishList = publishService.publishStudentList();
        List<Publish1> publishList = publishRepository.findAll();
//       把集合存入

        modelAndView.addObject("publishList", publishList);
//        modelAndView.setViewName("/admin/products/publishList.jsp");
        modelAndView.setViewName("publish/list");

        webSocket.sendMessage("公告列表");

        return modelAndView;
    }


    @RequestMapping("ftl/admin/publish")
    public ModelAndView findPulish() {
        return new ModelAndView("publish/index");
    }


    //todo
    @RequestMapping("/fileLoad")
    public void fileLoad(org.apache.catalina.servlet4preview.http.HttpServletRequest request,
                         HttpServletResponse response,
                         @RequestParam("fileName") String fileName) {

//         fileName = "2500测试数据.txt";


        if (fileName != null) {
            String path = request.getServletContext().getRealPath("upload");
            File file = new File(path, fileName);
            if (file.exists()) {
                //设置强制下载不打开
                response.setContentType("application/force-download");
                //设置文件名
                response.addHeader("Content-Disposition",
                        "attachment;fileName=" + fileName);
                //开始写入文件
                byte[] b = new byte[1024];
                FileInputStream fileInputStream = null;
                BufferedInputStream bufferedInputStream = null;
                try {
                    fileInputStream = new FileInputStream(file);
                    bufferedInputStream = new BufferedInputStream(fileInputStream);
                    ServletOutputStream outputStream = response.getOutputStream();
                    int i = bufferedInputStream.read(b);
                    while (i != -1) {
                        outputStream.write(b, 0, i);
                        i = bufferedInputStream.read(b);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                } finally {
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();

                        }


                    }
                }
            }
            else {
//                request.setAttribute("url","http://localhost:8888/admin/publishList.action");
//                request.setAttribute("msg","文件下载失败");
                try {

                    request.getRequestDispatcher("/mypage/tePassExit.jsp").forward(request,response);
                } catch (ServletException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
