package com.example.syau_web.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * 作者：王宇
 * 创建时间：2019/4/12 0012 19:35
 * 描述：
 */
@Data
@Table(name = "publish")
@Entity
public class Publish1 {

    /**
     * 发布动态的唯一编号
     */
    @Id
    @GeneratedValue
    private Integer publishId;

    /**
     * 与学号相对应
     */
    private Integer userNumber;

    /**
     * 发布的内容
     */
    private String publishContent;

    /**
     * 发表时间
     */
    private Date createTime;

    /**
     * 文件的名字
     */
    private String fileName;

    private String userName;

    private String userPhone;

    private String userEmail;
}

