package com.xingdian.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xingdian.pojo.User;
import com.xingdian.mapper.UserMapper;
import com.xingdian.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService extends ServiceImpl<UserMapper,User> implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> getAllUsers() {
        return userMapper.selectList(null);
    }

    @Override
    public User getUserById(int id) {
        return userMapper.selectById(id);
    }




}
