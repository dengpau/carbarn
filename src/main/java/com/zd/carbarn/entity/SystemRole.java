package com.zd.carbarn.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * 系统角色
 */
@Entity
public class SystemRole {

    @Id
    @GeneratedValue
    private Integer roleId;

    private String roleName;

    private String rights;

    private String parentId;

    private String addQx;

    private String delQx;

    private String editQx;

    private String selQx;

    private String qxId;

    private String ext1;

    private String ext2;

    @Override
    public String toString() {
        return "SystemRole{" +
                "roleId=" + roleId +
                ", roleName='" + roleName + '\'' +
                ", rights='" + rights + '\'' +
                ", parentId='" + parentId + '\'' +
                ", addQx='" + addQx + '\'' +
                ", delQx='" + delQx + '\'' +
                ", editQx='" + editQx + '\'' +
                ", selQx='" + selQx + '\'' +
                ", qxId='" + qxId + '\'' +
                ", ext1='" + ext1 + '\'' +
                ", ext2='" + ext2 + '\'' +
                '}';
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRights() {
        return rights;
    }

    public void setRights(String rights) {
        this.rights = rights;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getAddQx() {
        return addQx;
    }

    public void setAddQx(String addQx) {
        this.addQx = addQx;
    }

    public String getDelQx() {
        return delQx;
    }

    public void setDelQx(String delQx) {
        this.delQx = delQx;
    }

    public String getEditQx() {
        return editQx;
    }

    public void setEditQx(String editQx) {
        this.editQx = editQx;
    }

    public String getSelQx() {
        return selQx;
    }

    public void setSelQx(String selQx) {
        this.selQx = selQx;
    }

    public String getQxId() {
        return qxId;
    }

    public void setQxId(String qxId) {
        this.qxId = qxId;
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
}
