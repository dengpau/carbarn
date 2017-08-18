package com.zd.carbarn.controller;


import com.zd.carbarn.entity.User;
import com.zd.carbarn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

//@RestController
@Controller
public class HelloController {

    @Autowired
    private UserService userService;

    @GetMapping(value = "/hello" )
    public String getHello(){

        return "index";
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
