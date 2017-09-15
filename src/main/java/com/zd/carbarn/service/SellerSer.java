package com.zd.carbarn.service;

import com.zd.carbarn.entity.SellerInfo;

import java.util.List;

/**
 * @Author: DJQ
 * @Date: 2017/9/14 下午3:47
 */
public interface SellerSer {

    public SellerInfo findSellerById(String id);

    public List<SellerInfo> findSellers();

    public SellerInfo saveSeller(SellerInfo sellerInfo);
}
