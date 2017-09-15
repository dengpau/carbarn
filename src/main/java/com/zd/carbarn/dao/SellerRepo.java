package com.zd.carbarn.dao;

import com.zd.carbarn.entity.SellerInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @Author: DJQ
 * @Date: 2017/9/14 下午3:43
 */
@Repository
public interface SellerRepo extends JpaRepository<SellerInfo,String> {

}
