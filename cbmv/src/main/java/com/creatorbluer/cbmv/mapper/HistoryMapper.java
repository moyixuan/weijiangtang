package com.creatorbluer.cbmv.mapper;

import java.util.List;

import com.creatorbluer.cbmv.domain.History;

public interface HistoryMapper {
	/**
	 * 查询
	 * @param custId
	 * @return
	 */
    List<History> selectByhistory(Integer custId);
    
    /**
     * 新增
     * @param h
     * @return
     */
    int insertByhistory(History h);
    
    /**
     * 删除
     * @param historyId
     * @return
     */
    int delByhistory(Integer[] historyId);
    
    /**
     * 是否重复
     * @param h
     * @return
     */
    Integer hischongfu(History h);
    
    /**
     *  浏览量
     * @param videoId
     * @return
     */
    int addPlayNum(int videoId);
    
    /**
     * 根据id查
     * @param historyId
     * @return
     */
    History selectByhistoryId(Integer historyId);
    
}