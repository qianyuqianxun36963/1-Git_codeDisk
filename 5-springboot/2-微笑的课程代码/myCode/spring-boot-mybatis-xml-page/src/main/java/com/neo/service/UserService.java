package com.neo.service;

import com.github.pagehelper.PageHelper;
import com.neo.entity.UserEntity;
import com.neo.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public  List<UserEntity> getAll() {
        PageHelper.startPage(0,2,"id");
        List<UserEntity>  users = userMapper.getAll();
        return users;
    }
}
