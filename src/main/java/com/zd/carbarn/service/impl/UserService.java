package com.zd.carbarn.service.impl;

import com.zd.carbarn.dao.UserRepository;
import com.zd.carbarn.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public Page<User> getUserList() {
        int page=0,size=2;
        Sort sort = new Sort(Sort.Direction.DESC, "id");
        Pageable pageable = new PageRequest(page, size, sort);
        Page<User> users =  userRepository.findAll(pageable);
        System.out.println("数据分页信息："+users.toString());

        System.out.println(users.getTotalPages());
        System.out.println(users.getTotalElements());

        return users;
    }

    public int findUserByAge(Integer age, char sex) {
        return userRepository.findCountByAge(age,sex);
    }

    public User findUserByNamePwd(String uname, String pwd) {
        User user = userRepository.findUserByPhoneNumAndPasswd(uname,pwd);
        if(user != null){
            System.out.println("登录成功！");
        }else {
            System.out.println("登录失败！");
        }
        return user;
    }
}
