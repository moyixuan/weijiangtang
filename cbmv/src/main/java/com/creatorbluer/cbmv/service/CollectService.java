package com.creatorbluer.cbmv.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creatorbluer.cbmv.domain.Collect;
import com.creatorbluer.cbmv.domain.Video;
import com.creatorbluer.cbmv.mapper.CollectMapper;
import com.creatorbluer.cbmv.mapper.VideoMapper;

@Service
public class CollectService {
	@Autowired
	CollectMapper mapper;
	@Autowired
	VideoMapper vm;
	
	/**
	 * 查询所有
	 * @param c
	 * @return
	 * @throws SQLException
	 */
	public List<Collect> selectByAll(Collect c)throws SQLException{
		
		return mapper.selectByAll(c);
	}
	
	/**
	 * 根据id查询
	 * @param collectId
	 * @return
	 * @throws SQLException
	 */
	public Collect selectById(int collectId)throws SQLException{
		return mapper.selectById(collectId);
	}
	
	/**
	 * 删除
	 * @param collectId
	 * @return
	 * @throws SQLException
	 */
	@Transactional
	public int delete(Integer[] collectId)throws SQLException{

		
		//if(del>0) {
			for(int i=0;i<collectId.length;i++) {
				int cId = mapper.selectById(collectId[0]).getVideo().getVideoId();
				vm.delCollectNum(cId);
			}
			
		//}
		int del= mapper.delete(collectId);
		if(del ==0) {
			throw new SQLException();
		}
		return del;
	}
	
	/**
	 * 新增
	 * @param c
	 * @return
	 * @throws SQLException
	 */
	@Transactional
	public int seav(Collect c)throws SQLException{
		int seav= mapper.seav(c);
		if(seav >0) {
			seav = vm.addCollectNum(c.getVideo().getVideoId());
		}
		if(seav ==0) {
			throw new SQLException();
		}
		return seav;
	}
	
	/**
	 * 判断收藏
	 * @param c
	 * @return
	 */
	public Integer selectByCollect(Collect c) {
		return mapper.selectByCollect(c);
		
	}
	
	/**
	 * 查询一个月里每一天的收藏人数
	 * @param time
	 * @return
	 */
	public List<Map> selectByCollectDay(String time){
		return mapper.selectByCollectDay(time);
	}
	
	/**
	 * 根据视频id查询视频有没有被收藏
	 * @param videoId
	 * @return
	 */
	public Integer selectByCollVideoId(Integer videoId) {
		return mapper.selectByCollVideoId(videoId);
	}
}
