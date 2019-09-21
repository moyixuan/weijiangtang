package com.creatorbluer.cbmv.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creatorbluer.cbmv.domain.Collect;
import com.creatorbluer.cbmv.domain.Video;
import com.creatorbluer.cbmv.mapper.CollectMapper;
import com.creatorbluer.cbmv.mapper.VideoMapper;

@Service
public class VideoService {
	@Autowired
	VideoMapper videomapper;
	@Autowired
	CollectMapper collectmapper;
	
	/**
	 * 查询
	 * @param v
	 * @return
	 * @throws SQLException
	 */
	public List<Video> selectByVideo (Video v)throws SQLException{
		List<Video> videos = videomapper.selectByVideo(v);
		return videos;
		
	}
	
	/**
	  * 删除
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public int delectsByVideo(Integer[] id) throws SQLException{
		int a = 0;
		//判断此视频有没有被收藏
		for (int i = 0; i < id.length; i++) {
			int count = collectmapper.selectByCollVideoId(id[i]);
			if(count>0) {
				Video v = new Video();
				v.setVideoId(id[i]);
				v.setVideoState("0");
				a = videomapper.updateByVideo(v);
			}else {
				a =videomapper.delectsByVideo(id);
			}
		}
		return a;
	}
	/**
	  * 上架批量修改
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public int  updateall(Integer[] videoid)throws SQLException{
		int count=videomapper.updateAll(videoid);	
		return count;
	}
	
	/**
	  * 下架批量修改
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public int  downdateall(Integer[] videoid)throws SQLException{
		int count=videomapper.downdateAll(videoid);	
		return count;
	}
	
	
	
	
	/**
	  * 通过id查询
	 * @param videoId
	 * @return
	 * @throws SQLException
	 */
	public List<Video> selectByVideoId(Integer[] videoId)throws SQLException{
		return videomapper.selectByVideoId(videoId);
	}
	
	/**
	  * 新增
	 * @param v
	 * @return
	 * @throws SQLException
	 */
	public int inserByVideo(Video v)throws SQLException{
		return videomapper.inserByVideo(v);
	}
	
	/**
	 * 修改
	 * @param v
	 * @return
	 * @throws SQLException
	 */
	public int updateByVideo(Video v)throws SQLException{
		return videomapper.updateByVideo(v);
	}
	
	
	/**
	 * 修改状态
	 * @param v
	 * @return
	 * @throws SQLException
	 */
	public int updateByVideos(Video v)throws SQLException{
		int count=0;
		int counts=0;
		if(v.getVideoLunbo().equals("1")) {
			count=videomapper.selectcount(v);
			if(count>=4) {
				return 0;
			}
		}

		counts=videomapper.updateByVideo(v);
		return counts;
	}
	
	

	
	
	/**
	  * 判断视频名字是否重复
	 * @param v
	 * @return
	 * @throws SQLException
	 */
	public Integer selectChongfu(Video v)throws SQLException{
		return videomapper.selectChongfu(v);
	}
	
	
	
	
	/**
	  * 首页热门查询
	 * @param v
	 * @return
	 * @throws SQLException
	 */
		public List<Video> selecthotvideo(Video v){
			return videomapper.selectindexvideo(v);
		}
		
		
		
		/**
		  * 首页热门查询1
		 * @param v
		 * @return
		 * @throws SQLException
		 */
			public List<Video> selecthotvideoss(Video v){
				return videomapper.selectindexvideoss(v);
			}
		
		
		/**
		  * 轮播热门查询
		 * @param v
		 * @return
		 * @throws SQLException
		 */
			public List<Video> selecthotvideos(Video v){
				return videomapper.selectindexvideos(v);
			}

			/**
			  * 根据ID查询单条记录
			 * @param v
			 * @return
			 * @throws SQLException
			 */
			public Video selectbyvideoid(Integer videoId){
				return videomapper.selectbyvideoid(videoId);
			}
		
		
		
		
		
		
		
		/**
		  * 根据视频名称模糊查询
		 * @param v
		 * @return
		 * @throws SQLException
		 */
       public List<Video>searchvideo(Video v){
    	   return videomapper.videonamequery(v);
       }		
		
		



		/**
		 * 查询播放数
		 * @param v
		 * @return
		 * @throws SQLException
		 */
	public Integer selectSumPlay(Video v) throws SQLException{
		return videomapper.selectSumPlay(v);
	}
	
	/**
	 * 查询点赞数
	 * @param v
	 * @return
	 * @throws SQLException
	 */
	public Integer selectLikePlay(Video v)throws SQLException{
		return videomapper.selectLikePlay(v);
	}
	
	/**
	 * 查询一个月里每一天的注册人数
	 * @param time
	 * @return
	 * @throws SQLException
	 */
	public List<Map> selectByDay(String time)throws SQLException{
		return videomapper.selectByDay(time);
	}
	
	/**
	 * 传入最后一个的视频ID，分页查询他后面的视频
	 * @param videoId
	 * @return
	 * @throws SQLException
	 */
	public List<Video> videoPage(Video v)throws SQLException{
		return videomapper.videoPage(v);
	}
}
