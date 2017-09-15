package com.zd.carbarn.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * 系统角色
 */
@Entity
@Data
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

}
