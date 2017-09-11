package com.zd.carbarn.controller;

import com.zd.carbarn.entity.SystemMenu;
import com.zd.carbarn.entity.SystemRole;
import com.zd.carbarn.entity.User;
import com.zd.carbarn.service.impl.SysMenuService;
import com.zd.carbarn.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: DJQ
 * @Date: 2017/9/7 下午12:10
 */
@RestController
public class LoginController {

    @Autowired
    private SysMenuService sysMenuService;

    @Autowired
    private UserService userService;

    //创建菜单
    @PostMapping(value = "/saveMenu")
    public Integer saveMenu(@RequestParam("sysmenu")SystemMenu systemMenu) {
        Integer menuId = sysMenuService.saveMenu(systemMenu);
        return menuId;
    }

    //创建角色
    @PostMapping(value = "/saveRole")
    public Integer saveRole(@RequestParam("sysrole")SystemRole systemRole) {
        Integer menuId = sysMenuService.saveRole(systemRole);
        return menuId;
    }


    //角色分配菜单




    //登录
    @PostMapping(value = "/logining")
    public String logining(@RequestParam("uname") String uname,@RequestParam("pwd") String pwd) {
        if(uname == null || "".equals(uname) || pwd == null || "".equals(pwd)){
            return "uname or pwd is not null";
        }
        User u = userService.findUserByNamePwd(uname,pwd);


        return u != null ? u.getRealName() : "null";
    }


    //创建用户


    //


}
