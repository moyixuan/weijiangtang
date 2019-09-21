package com.creatorbluer.cbmv.controller;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.creatorbluer.cbmv.comm.Properties;
import com.creatorbluer.cbmv.comm.Result;
import com.creatorbluer.cbmv.domain.Collect;
import com.creatorbluer.cbmv.domain.Cust;
import com.creatorbluer.cbmv.domain.Type;
import com.creatorbluer.cbmv.domain.Video;
import com.creatorbluer.cbmv.service.CollectService;
import com.creatorbluer.cbmv.service.CustService;
import com.creatorbluer.cbmv.service.HistoryService;
import com.creatorbluer.cbmv.service.TypeService;
import com.creatorbluer.cbmv.service.VideoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@RestController
@RequestMapping("/front")
public class VideoSortAjaxController {
	@Autowired
	VideoService videoservice;
	@Autowired
	TypeService typeservice;
	@Autowired
	CollectService cs;
	@Autowired
	HistoryService hs;
	
	
	
	/**
	 * 查询
	 * @param v
	 * @param t
	 * @return
	 */
	@RequestMapping("/sort")
	public String query(Video v,Type t) {
		Result r = Result.Ok();
		try {
			if(t.getTypeId() != null) {
				v.setType(t);
			}
			t.setStatus("1");
			List<Video> videolist = videoservice.videoPage(v);

			List<Type> typelist = typeservice.selectByType(t);
			Map map = new HashMap<>();
			map.put("type", typelist);
			
			map.put("video", videolist);
			r.setData(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			r= Result.ERROR();
			e.printStackTrace();
		}
		return r.toString();
		
	}
	/**
	 * 视频详情页查询
	 * @param videoId
	 * @return
	 */
	@RequestMapping("/video_query")
	public String queryById(Integer[] videoId) {
		List<Video> list;
		Result r = Result.Ok();
		
		try {
			list = videoservice.selectByVideoId(videoId);
			
			r.setData(list.get(0));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			r = Result.ERROR();
			e.printStackTrace();
		}
		
		return r.toString();
		
	}
	
	/**
	 * 收藏新增
	 * @param c
	 * @return
	 */
	
	  @RequestMapping("/video_collect_seav")
	  public String seav(Collect c,Video v) {
		  int count =0;
		 
		  Result r = Result.Ok(); 
		 try { 
			 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
			 try {
				c.setCollectTime(sdf.parse(sdf.format(new Date())));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 count = cs.seav(c); 
			 
			 if(count == 0) {
				 r.setData(count);
			 }else {
				 r.setData(videoservice.selectByVideoId(new Integer[] {c.getVideo().getVideoId()}).get(0).getCollectNum());
			 }
			 
			
			
	} catch (SQLException e) { //
	  
	  r = Result.ERROR();
	  e.printStackTrace(); }
	  
	  
	  return r.toString();
	  
	  }
	
}
