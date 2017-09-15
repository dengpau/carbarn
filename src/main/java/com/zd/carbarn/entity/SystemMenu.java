package com.zd.carbarn.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * 系统菜单
 * @Author: DJQ
 * @Date: 2017/8/18 下午4:47
 */
@Entity
@Data
public class SystemMenu {

    @Id
    @GeneratedValue
    private Integer menuId;

    private String menuName;

    private String menuUrl;

    private String parentId;

    private String menuOrder;

    private String menuType;

    private String menuIcon;

    private String ext1;

    private String ext2;

}
