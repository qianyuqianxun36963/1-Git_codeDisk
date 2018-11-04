package com.neo.service;

import com.neo.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.concurrent.TimeUnit;

@Service
public class UserService {
    @Autowired
    private StringRedisTemplate stringRedisTemplate;
    @Autowired
    private RedisTemplate<String, Object> redisTemplate;
    public void set(String key, User user) {
 redisTemplate.opsForValue().set(key, user);
}
    public User get(String key) {
 return (User) redisTemplate.boundValueOps(key).get();
}
    public void setCode(String key, String code) {
 stringRedisTemplate.opsForValue().set(key, code, 60, TimeUnit.SECONDS);
}
    public String getCode(String key) {
 return stringRedisTemplate.boundValueOps(key).get();
}
}