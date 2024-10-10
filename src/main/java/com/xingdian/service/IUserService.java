package com.xingdian.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.xingdian.pojo.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
 * 在其中定义具体要实现的方法的声明
 */
public interface IUserService extends IService<User> {

    List<User> getAllUsers();

    User getUserById(int id);


}
