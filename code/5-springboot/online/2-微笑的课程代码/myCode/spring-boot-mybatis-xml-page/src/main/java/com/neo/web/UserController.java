package com.neo.web;

import java.util.List;

import com.neo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.neo.entity.UserEntity;
import com.neo.mapper.UserMapper;

@RestController
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/getUsers")
	public List<UserEntity> getUsers() {
		List<UserEntity> users=userService.getAll();
		return users;
	}
}