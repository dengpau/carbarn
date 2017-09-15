package com.zd.carbarn.entity;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 产品类
 * @Author: DJQ
 * @Date: 2017/9/14 下午2:09
 */

@Entity
@DynamicUpdate
@Data
public class ProductInfo {

    @Id
    private String productId;

    // 产品名称
    private String productName;

    // 产品描述
    private String productDescription;

    // 产品图片
    private String productIcon;

    // 产品价格
    private BigDecimal productPrice;

    // 会员价格
    private BigDecimal vipPrice;

    // 产品进价
    private BigDecimal priductInitial;

    // 库存
    private Integer productStock;

    // 所属类目
    private Integer categoryType;

    // 所属商家
    private String priductSeller;

    // 所属仓库
    private Integer depotId;

    // 创建时间
    private Date createTime;

    // 修改时间
    private Date updateTime;

    // 备注
    private String ext1;

}
