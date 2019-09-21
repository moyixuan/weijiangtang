package com.creatorbluer.cbmv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creatorbluer.cbmv.domain.Type;
import com.creatorbluer.cbmv.mapper.TypeMapper;

@Service
public class TypeService {
	@Autowired
	TypeMapper typeMapper;
	
	/**
	 * 查询
	 * @param t
	 * @return
	 */
	public List<Type> selectByType(Type t){
		List<Type> list = typeMapper.selectByType(t);
		return list;
	}
	
	/**
	 * 删除
	 * @param typeId
	 * @return
	 */
	public int delectsByType(Integer[] typeId) {
		int count = typeMapper.delectsByType(typeId);
		return count;
		
	}
	
	/**
	 * 通过id查询
	 * @param typeId
	 * @return
	 */
	public Type selectByTypeId(Integer typeId) {
		Type t = typeMapper.selectByTypeId(typeId);
		return t;
		
	}
	
	/**
	 * 新增
	 * @param t
	 * @return
	 */
	public int  inserByTypr(Type t) {
		int count = typeMapper.inserByTypr(t);
		return count;
		
	}
	
	/**
	 * 修改
	 * @param t
	 * @return
	 */
	public int updateByType(Type t) {
		int count = typeMapper.updateByType(t);
		return count;
		
	}
	
	/**
	 * 判断是否重复
	 * @param t
	 * @return
	 */
	public int selectChongfu(Type t) {
		int count = typeMapper.selectChongfu(t);
		return count;
	}
}
