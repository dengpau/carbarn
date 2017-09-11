package com.zd.carbarn.dao;

import com.zd.carbarn.entity.SystemRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @Author: DJQ
 * @Date: 2017/9/7 下午2:07
 */
@Repository
public interface SysRoleRepo extends JpaRepository<SystemRole,Integer> {
}
