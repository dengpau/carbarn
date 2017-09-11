package com.zd.carbarn.service.impl;

import com.zd.carbarn.dao.SysMenuRepo;
import com.zd.carbarn.dao.SysRoleRepo;
import com.zd.carbarn.entity.SystemMenu;
import com.zd.carbarn.entity.SystemRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author: DJQ
 * @Date: 2017/9/7 下午2:28
 */

@Service
public class SysMenuService {

    @Autowired
    private SysMenuRepo sysMenuRepo;

    @Autowired
    private SysRoleRepo sysRoleRepo;

    //保存菜单
    public Integer saveMenu(SystemMenu systemMenu) {
        systemMenu = sysMenuRepo.save(systemMenu);
        return systemMenu.getMenuId();
    }

    // 保存角色
    public Integer saveRole(SystemRole systemRole) {
        systemRole = sysRoleRepo.save(systemRole);
        return systemRole.getRoleId();
    }

}
