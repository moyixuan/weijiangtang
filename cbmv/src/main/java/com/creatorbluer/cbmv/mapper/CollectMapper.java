package com.creatorbluer.cbmv.mapper;

import java.util.List;
import java.util.Map;

import com.creatorbluer.cbmv.domain.Collect;

public interface CollectMapper {
 
	/**
	 * 新增
	 * @param c
	 * @return
	 */
	int seav(Collect c);
	
	/**
	 * 删除
	 * @param collectId
	 * @return
	 */
	int delete(Integer[] collectId);
	
	/**
	 * 查询所有
	 * @param c
	 * @return
	 */
	List<Collect> selectByAll(Collect c);
	
	/**
	 * 根据id查询
	 * @param collectId
	 * @return
	 */
	Collect selectById(int collectId);
	
	/**
	 * 判断收藏
	 * @param c
	 * @return
	 */
	Integer selectByCollect(Collect c);
	
	/**
	 * 查询一个月里每一天的收藏人数
	 * @param time
	 * @return
	 */
	List<Map> selectByCollectDay(String time);
	
	/**
	 * 根据视频id查询视频有没有被收藏
	 * @param videoId
	 * @return
	 */
	Integer selectByCollVideoId(Integer videoId);
	
}