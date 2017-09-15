package com.zd.carbarn.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import com.zd.carbarn.entity.SellerInfo;
import com.zd.carbarn.service.impl.SellerSerImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

/**
 * 商家信息
 * @Author: DJQ
 * @Date: 2017/9/14 下午3:55
 */
@Controller
public class SellerController {

    @Autowired
    private SellerSerImpl sellerSer;

    // 查询商家基本信息
    @GetMapping("/sellerInfo")
    public ModelAndView findSellerInfo() {
        // 根据登陆者身份，查询相应商家信息

        SellerInfo sinfo = sellerSer.findSellerById("deng");
        Map<String, Object> map = new HashMap<>();
        map.put("sinfo",sinfo);
        return new ModelAndView("/seller/shop",map);
    }

    @GetMapping("/sellerEdit")
    public ModelAndView sellerEdit() {
        SellerInfo sinfo = sellerSer.findSellerById("deng");
        Map<String, Object> map = new HashMap<>();
        map.put("sinfo",sinfo);
        return new ModelAndView("/seller/shopEdit",map);
    }

    @PostMapping("/sellerSave")
    public String sellerSave(@Valid SellerInfo sellerInfo) {
//        if (sellerInfo != null && sellerInfo.getSellerId() != null){
//            SellerInfo ss = sellerSer.findSellerById(sellerInfo.getSellerId());
//            if (ss != null && ss.getSellerId() != null) {
//            }
//        }
        SellerInfo s = sellerSer.saveSeller(sellerInfo);
        if(s != null){
            return "suc";
        }else{
            return "error";
        }
    }


}
