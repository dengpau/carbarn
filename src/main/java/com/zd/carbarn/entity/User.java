package com.zd.carbarn.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

/**
 * 用户基本信息
 */
@Entity
@Data
public class User {

    @Id
    @GeneratedValue
    private Integer userId;

    private String phoneNum;

    private String passwd;

    private String realName;

    private Integer roleId;

    private char status;

    private Integer age;

    private char sex;

    private String userHead;

    // 用户角色关联用户信息
    private String relationId;

    // 所属用户id
    private String theUserid;

    // 账号到期时间
    private Date expirationDate;

    private String createUser;

    private Date createDate;

    private String token;

    private String lastLogin;

    private String ext1;

    private String ext2;

    private String ext3;

}
