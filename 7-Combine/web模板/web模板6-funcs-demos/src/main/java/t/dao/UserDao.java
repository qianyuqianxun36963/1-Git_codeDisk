package t.dao;

import java.util.List;

import z.entity.po.*;

public interface UserDao {
	
	public User queryName(User user);

	public User queryUserByID(User user);

	public List<User> queryUserList();
}