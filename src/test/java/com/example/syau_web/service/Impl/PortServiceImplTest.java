package com.example.syau_web.service.Impl;

import com.example.syau_web.domain.PortData;
import com.example.syau_web.repository.PortRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Timer;
import java.util.TimerTask;

/**
 * create by wangyu
 * 2018/10/21 0021 18:39
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class PortServiceImplTest {

    @Autowired
    private PortRepository portRepository;
    @Autowired
    private PortServiceImpl portService;

    @Test
    public void showPortData() {
        PortData portData = new PortData();
        PortData data = portService.showPortData(portData);
//        System.out.println(data.getTemperature());
    }

   /* @Test
    public void insertPortData() {
        double humidity = SerialSendDataUtil.getHumidity();
        double temperature = 0;
        try {
            temperature = SerialSendDataUtil.getTemperature();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        double sun = SerialSendDataUtil.getSun();
        System.out.println("湿度是" + humidity);
        System.out.println("温度是" + temperature);
        System.out.println("光照强度是：" + sun);

        PortData data = portService.insertPortData();


    }*/

  /*  @Test
    public void saveTimer(){
        Timer timer = new Timer();
//        每隔10s更新一次
        timer.schedule(new SavePortDataUtil(),0,10000);

    }*/

    @Test
    public void testTimer(){
        Timer timer = new Timer();

        //前一次执行程序结束后 2000ms 后开始执行下一次程序
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                System.out.println("IMP 当前时间" + this.scheduledExecutionTime());
            }
        }, 0,2000);

        //前一次程序执行开始 后 2000ms后开始执行下一次程序
        timer.scheduleAtFixedRate(new TimerTask() {
            @Override
            public void run() {
                System.out.println("IMP 当前时间" + this.scheduledExecutionTime());
            }
        },0,2000);
    }
}