package com.creatorbluer.cbmv.mapper;

import java.util.List;

import com.creatorbluer.cbmv.domain.Type;

public interface TypeMapper {
	/**
	 * 查询
	 * @return
	 */
	List<Type> selectByType(Type t);
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	int delectsByType(Integer[] id);
	
	/**
	 * 根据id查询
	 * @param typeId
	 * @return
	 */
	Type selectByTypeId(Integer typeId);
	
	/**
	 * 新增
	 * @param t
	 * @return
	 */
	int inserByTypr(Type t);
	
	/**
	 * 修改
	 * @param t
	 * @return
	 */
	int updateByType(Type t);
	
	/**
	 * 是否重复
	 * @param t
	 * @return
	 */
	Integer selectChongfu(Type t);
}
