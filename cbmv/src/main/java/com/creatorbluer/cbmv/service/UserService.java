package com.creatorbluer.cbmv.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creatorbluer.cbmv.domain.User;
import com.creatorbluer.cbmv.mapper.UserMapper;

@Service
public class UserService {
	@Autowired
	UserMapper mapper;
	/**
	 * 登录
	 * @param u
	 * @return
	 * @throws SQLException
	 */
	public User SelectbyMobilePwd(User u)throws SQLException{
		return mapper.login(u);
		
	}
	
	/**
	  * 查询
	 * @param u
	 * @return
	 * @throws SQLException
	 */
	public List<User> selectByUser(User u) throws SQLException {
		List<User> list = null;
		list = mapper.selectAll(u);
		
		return list;
	}
	
	/**
	 * 删除
	 * @param userId
	 * @return
	 * @throws SQLException
	 */
	public int del(Integer userId) throws SQLException {
		int count  = 0;
		count = mapper.deleteUser(userId);	
		return count;
	}
	
	/**
	 * 通过id查询
	 * @param userId
	 * @return
	 * @throws SQLException
	 */
	public User selectById(Integer userId) throws SQLException {
		User u = new User();
		u= mapper.selectbyId(userId);
		return u;
	}

	/**
	 * 新增
	 * @param u
	 * @return
	 * @throws SQLException
	 */
	public int seav(User u) throws SQLException {
		int count = 0;         
		count = mapper.insertUser(u); 
		 return count;    
	}

	/**
	 * 修改
	 * @param u
	 * @return
	 * @throws SQLException
	 */
	public int xiugai(User u) throws SQLException {
		int count = 0;                 
		count = mapper.updateUser(u);                            
		return count;                 
		                              
	}
	
	
	public int delByUserIds(Integer[] list)throws SQLException{
		int count = mapper.delByUserIds(list);
		return count;
		
	}
	
}
