package com.zd.carbarn.dao;

import com.zd.carbarn.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Repository
@Transactional
public interface UserRepository extends JpaRepository<User,Integer> {


    //Page<User> findAll(Pageable pageable);

    //可自定义sql
    //@Modifying    // 涉及到修改和删除  用此注解
    @Query("select count(id) from User where age > ?1 and sex = ?2")
    public int findCountByAge(Integer age, char sex);

    public User findUserByPhoneNumAndPasswd(String phonNum,String passwd);

}
