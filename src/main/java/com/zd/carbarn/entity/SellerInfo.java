package com.zd.carbarn.entity;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 * 商家信息
 * @Author: DJQ
 * @Date: 2017/9/14 下午3:01
 */
@Entity
@Data
@DynamicUpdate
public class SellerInfo {

    @Id
    private String sellerId;

    // 商家名称
    private String sellerName;

    // 商家类型/行业
    private Integer sellerType;

    // 商家电话
    private String sellerPhone;

    // 店长
    private String sellerBoss;

    // 店长联系方式
    private String bossPhone;

    // 邮箱
    private String sellerEmail;

    // 开店时间
    private Date sellerCreate;

    // 店成员人数
    private Integer sellerNumb;

    // 商家地址
    private String sellerAddr;

    // 商家图片
    private String sellerIcon;

    // 开始服务时间
    private Date sellerStime;

    // 结束服务时间
    private Date sellerEtime;

    // 创建时间
    private Date createTime;

    // 更新时间
    private Date updateTime;

}
