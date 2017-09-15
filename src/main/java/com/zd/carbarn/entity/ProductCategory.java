package com.zd.carbarn.entity;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

/**
 * 产品类目
 * @Author: DJQ
 * @Date: 2017/9/14 下午2:50
 */

@Entity
@DynamicUpdate
@Data
public class ProductCategory {

    @Id
    @GeneratedValue
    private Integer categoryId;

    // 类目名称
    private String categoryName;

    // 类目标号
    private Integer categoryType;

    // 创建时间
    private Date createTime;

    // 修改时间
    private Date updateTime;

}
