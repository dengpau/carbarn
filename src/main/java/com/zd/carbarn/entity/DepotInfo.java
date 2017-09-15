package com.zd.carbarn.entity;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

/**
 * 仓库
 * @Author: DJQ
 * @Date: 2017/9/14 下午3:11
 */

@Entity
@Data
@DynamicUpdate
public class DepotInfo {

    @Id
    @GeneratedValue
    private Integer depotId;

    // 仓库名
    private String depotName;

    // 所属商家
    private String sellerId;

    // 仓库地址
    private String depotAddr;

    // 仓库描述
    private String depotDescp;

    // 创建时间
    private Date createTime;

    // 更新时间
    private Date updateTime;

}
