package com.xingdian.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xingdian.pojo.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper extends BaseMapper<User> {
}
