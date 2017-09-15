package com.zd.carbarn.entity;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

/**
 * 服务项目
 * @Author: DJQ
 * @Date: 2017/9/14 下午2:57
 */

@Entity
@Data
@DynamicUpdate
public class ProjectInfo {

    @Id
    @GeneratedValue
    private Integer projectId;

    // 项目名称
    private String projectName;

    // 项目描述
    private String projectDescription;

    // 所属商家
    private String sellerId;

    // 项目状态
    private char projectStatus;

    // 创建时间
    private Date createTime;

    // 更新时间
    private Date updateTime;
}
