package com.zd.carbarn.service.impl;

import com.zd.carbarn.dao.SellerRepo;
import com.zd.carbarn.entity.SellerInfo;
import com.zd.carbarn.service.SellerSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: DJQ
 * @Date: 2017/9/14 下午3:49
 */
@Service
public class SellerSerImpl implements SellerSer {

    @Autowired
    private SellerRepo sellerRepo;


    @Override
    public SellerInfo findSellerById(String id) {
        return sellerRepo.findOne(id);
    }

    @Override
    public List<SellerInfo> findSellers() {
        return sellerRepo.findAll();
    }

    @Override
    public SellerInfo saveSeller(SellerInfo sellerInfo) {
        return sellerRepo.save(sellerInfo);
    }
}
