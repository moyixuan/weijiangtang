package com.creatorbluer.cbmv.mapper;

import java.util.List;

import com.creatorbluer.cbmv.domain.User;

public interface UserMapper {
	/**
	 * 新增
	 * @param u
	 * @return
	 */
	int insertUser(User u);
	
	/**
	 * 删除
	 * @param u
	 * @return
	 */
	int deleteUser(Integer userId);
	
	/**
	 * 根据id查询用户信息
	 * @param userId
	 * @return
	 */
	User selectbyId(Integer userId);
	
	/**
	 * 修改
	 * @param u
	 * @return
	 */
	int updateUser(User u);
	
	/**
	 * 查询
	 * @param map
	 * @return
	 */
	List<User> selectAll(User u);
	
	/**
	 * 查询所有记录数
	 * @param u
	 * @return
	 */
	int selectCount(User u);
	
	/**
	 * 登录
	 * @param u
	 * @return
	 */
	User login(User u);
	
	/**
	 * 批量删除
	 */
	int delByUserIds(Integer[] list);
	
}
