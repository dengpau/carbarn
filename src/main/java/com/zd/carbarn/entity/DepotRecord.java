package com.zd.carbarn.entity;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 * 仓库记录
 * @Author: DJQ
 * @Date: 2017/9/14 下午3:16
 */

@Entity
@Data
@DynamicUpdate
public class DepotRecord {

    @Id
    private String recordId;

    // 所属仓库
    private Integer depotId;

    // 所属商家
    private String sellerId;

    // 商品
    private String productId;

    // 状态
    private char orecordStatus;

    // 创建时间
    private Date createTime;

    // 更新时间
    private Date updateTime;
}
