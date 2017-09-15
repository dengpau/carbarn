package com.zd.carbarn.controller;


import com.zd.carbarn.entity.User;
import com.zd.carbarn.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.Map;

//@RestController
@Controller
public class HelloController {

    @Autowired
    private UserService userService;

    @GetMapping(value = "/hello" )
    public ModelAndView getHello(){

        return new ModelAndView("index");
    }

    @PostMapping("/saveUser")
    public ModelAndView saveUser(@Valid User u) {
        if(u != null) {
            System.out.println(u.getRealName() + ":" + u.getSex() + "：" + u.getPhoneNum());
        }else{
            System.out.println("没有取到值");
        }


        return new ModelAndView("index");
    }


    // 跳转至菜单管理页面
    @GetMapping(value = "/sysMenu")
    public String sysMenu(){
        return "sysMenu";
    }

    @GetMapping(value = "/all")
    public String getAllUser(Model model) {
        Page<User> list = userService.getUserList();
        model.addAttribute("users", list.getContent());
        model.addAttribute("total", list.getTotalElements());
        model.addAttribute("tpage", list.getTotalPages());
        return "index";
    }


    @GetMapping(value = "/count/{age}/{sex}")
    @ResponseBody
    public Integer getCount(@PathVariable("age") Integer age,@PathVariable("sex") char sex) {
        return userService.findUserByAge(age,sex);
    }


}
