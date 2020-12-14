package com.example.syau_web.test;

import com.example.syau_web.util.SerialUtil;
import gnu.io.SerialPort;
import gnu.io.UnsupportedCommOperationException;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

/**
 * create by wangyu
 * 2018/10/21 0021 19:22
 */
public class ReadUtilTest {


    @Test
    public void readPort() throws UnsupportedCommOperationException {
        List<String> list = SerialUtil.findUsablePortName();
        for (String s : list) {
            System.out.println(s);

//            todo   波特率
            SerialPort port = SerialUtil.openPort(s, 11520);
            SerialUtil.sendToPort(port,"6".getBytes());
            String s1 = ReadUtil.readPort(port);
            System.out.println("得到数据是"+s1);
        }
    }
}