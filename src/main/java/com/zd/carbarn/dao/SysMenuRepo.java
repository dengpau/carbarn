package com.zd.carbarn.dao;

import com.zd.carbarn.entity.SystemMenu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @Author: DJQ
 * @Date: 2017/9/7 下午2:06
 */
@Repository
public interface SysMenuRepo extends JpaRepository<SystemMenu,Integer> {
}
