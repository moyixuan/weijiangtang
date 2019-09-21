package com.creatorbluer.cbmv.mapper;

import java.util.List;
import java.util.Map;

import com.creatorbluer.cbmv.domain.Collect;
import com.creatorbluer.cbmv.domain.Video;

public interface VideoMapper {
	/**
	 * 查询
	 * @param v
	 * @return
	 */
	List<Video> selectByVideo(Video v);
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	int delectsByVideo(Integer[] id);
	/**
	 * 批量上架
	 * @param id
	 * @return
	 */
	int updateAll(Integer[] id);
	/**
	 * 批量下架
	 * @param id
	 * @return
	 */
	int downdateAll(Integer[] id);
	/**
	 * 通过id查询
	 * @param videoId
	 * @return
	 */
	List<Video> selectByVideoId(Integer[] videoId);
	
	/**
	 * 新增
	 * @param v
	 * @return
	 */
	int inserByVideo(Video v);
	
	/**
	  * 修改
	 * @param v
	 * @return
	 */
	int updateByVideo(Video v);
	
	/**
	  * 判断视频名字是否重复
	 * @param v
	 * @return
	 */
	Integer selectChongfu(Video v);
	/**
	  * 首页热门查询
	 * @param v
	 * @return
	 */
	List<Video>selectindexvideo(Video v);
	
	/**
	  * 首页热门查询1
	 * @param v
	 * @return
	 */
	List<Video>selectindexvideoss(Video v);

	
	/**
	  * 轮播热门查询
	 * @param v
	 * @return
	 */
	List<Video>selectindexvideos(Video v);

	/**
	  * <!-- 根据视频名称模糊查询 -->
	 * @param v
	 * @return
	 */
	List<Video>videonamequery(Video v);
	/**
	 * 查询播放数
	 * @param v
	 * @return
	 */
	Integer selectSumPlay(Video v);
	
	/**
	 * 查询点赞数
	 * @param v
	 * @return
	 */
	Integer selectLikePlay(Video v);


	
	/**
	 * 查询一个月里每一天的注册人数
	 * @param time
	 * @return
	 */
	List<Map> selectByDay(String time);



	
	/**
	 * 点赞增加
	 * @param v
	 * @return
	 */
	int addLikeNum(Integer vidoeId);
	
	/**
	 * 点赞删除
	 * @param v
	 * @return
	 */
	int delLikeNum(Integer vidoeId);
	
	/**
	 * 收藏新增
	 * @param v
	 * @return
	 */
	int addCollectNum(Integer vidoeId);
	
	/**
	 * 收藏删除
	 * @param v
	 * @return
	 */
	int delCollectNum(Integer vidoeId);


	/**
	 * 查询状态为1
	 * @param v
	 * @return
	 */
	int selectcount(Video v);
	
	
	/**
	 * 查询单条记录
	 * @param v
	 * @return
	 */
	Video selectbyvideoid(Integer videoId);
	
	
	/**
	 * 传入最后一个的视频ID，分页查询他后面的视频
	 * @param videoId
	 * @return
	 */
	List<Video> videoPage(Video v);
}
