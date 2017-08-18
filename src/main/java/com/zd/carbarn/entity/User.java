package com.zd.carbarn.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

/**
 * 用户基本信息
 */
@Entity
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

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public char getStatus() {
        return status;
    }

    public void setStatus(char status) {
        this.status = status;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public char getSex() {
        return sex;
    }

    public void setSex(char sex) {
        this.sex = sex;
    }

    public String getUserHead() {
        return userHead;
    }

    public void setUserHead(String userHead) {
        this.userHead = userHead;
    }

    public String getRelationId() {
        return relationId;
    }

    public void setRelationId(String relationId) {
        this.relationId = relationId;
    }

    public String getTheUserid() {
        return theUserid;
    }

    public void setTheUserid(String theUserid) {
        this.theUserid = theUserid;
    }

    public Date getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(Date expirationDate) {
        this.expirationDate = expirationDate;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(String lastLogin) {
        this.lastLogin = lastLogin;
    }

    public String getExt1() {
        return ext1;
    }

    public void setExt1(String ext1) {
        this.ext1 = ext1;
    }

    public String getExt2() {
        return ext2;
    }

    public void setExt2(String ext2) {
        this.ext2 = ext2;
    }

    public String getExt3() {
        return ext3;
    }

    public void setExt3(String ext3) {
        this.ext3 = ext3;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", phoneNum='" + phoneNum + '\'' +
                ", passwd='" + passwd + '\'' +
                ", realName='" + realName + '\'' +
                ", roleId=" + roleId +
                ", status=" + status +
                ", age=" + age +
                ", sex=" + sex +
                ", userHead='" + userHead + '\'' +
                ", relationId='" + relationId + '\'' +
                ", theUserid='" + theUserid + '\'' +
                ", expirationDate=" + expirationDate +
                ", createUser='" + createUser + '\'' +
                ", createDate=" + createDate +
                ", token='" + token + '\'' +
                ", lastLogin='" + lastLogin + '\'' +
                ", ext1='" + ext1 + '\'' +
                ", ext2='" + ext2 + '\'' +
                ", ext3='" + ext3 + '\'' +
                '}';
    }
}
