package com.creatorbluer.cbmv.service;

import java.sql.SQLException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creatorbluer.cbmv.domain.History;
import com.creatorbluer.cbmv.mapper.HistoryMapper;

@Service
public class HistoryService {
	@Autowired
	HistoryMapper historymapper;
	
	/**
	 * 查询
	 * @param custId
	 * @return
	 * @throws SQLException
	 */
	public List<History> selectByhistory(Integer custId) throws SQLException{
		return historymapper.selectByhistory(custId);
	}
	
	public History selectByhistoryId(Integer historyId) throws SQLException{
		return historymapper.selectByhistoryId(historyId);
	}
	
	
	/**
	 * 删除
	 * @param historyId
	 * @return
	 * @throws SQLException
	 */
	@Transactional
	public int delByhistory(Integer[] historyId)throws SQLException{
		return historymapper.delByhistory(historyId);
	}
	
	/**
	 * 新增
	 * @param h
	 * @return
	 * @throws SQLException
	 */
	@Transactional
	public int insertByhistory(History h,Integer videoId)throws SQLException{
		Integer add =  historymapper.hischongfu(h);
		if( add !=null) {
			add = historymapper.delByhistory(new Integer[] {add});
		}
			add = historymapper.insertByhistory(h);

			add = historymapper.addPlayNum(videoId);

		return add;
	}
	
	/**
	 * 是否重复
	 * @param h
	 * @return
	 * @throws SQLException
	 */
	 /*@Transactional
	 public Integer hischongfu(History h)throws SQLException{ 
		  Integer his = historymapper.hischongfu(h);
		  if(his != null) {
			  his = historymapper.delByhistory(new Integer[] {his});
		  }
		  return his; 
		  
	  }*/
	 
}
