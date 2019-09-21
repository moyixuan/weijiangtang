package com.creatorbluer.cbmv.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.creatorbluer.cbmv.comm.Result;
import com.creatorbluer.cbmv.domain.Type;
import com.creatorbluer.cbmv.domain.Video;
import com.creatorbluer.cbmv.service.VideoService;

@RestController
@RequestMapping("/front")
public class VideohotAjaxController {
	
	@Autowired
	VideoService videoservice;
	/**
	 * 热门查询
	 * @param v
	 * @param t
	 * @return
	 */
	@RequestMapping("/hot")
	public String hotquery(Video v)throws SQLException {
		Result r = Result.Ok();
			List<Video> list = videoservice.selecthotvideoss(v);
			if(list!=null) {
				  r.setData(list);  
					r.setMsg("欢迎您来观看热门");
			}else {
				// TODO Auto-generated catch block
				r.setMsg("没有您想看的热门");
				r= Result.ERROR();	
			}
		return r.toString();
	}
	
	/**
	 * 轮播热门查询
	 * @param v
	 * @param t
	 * @return
	 */
	@RequestMapping("/hots")
	public String hotquerys(Video v)throws SQLException {
		Result r = Result.Ok();
			List<Video> list = videoservice.selecthotvideos(v);
			//JSONObject json=new JSONObject();
			//json.put("videolunbo", list);
			if(list!=null) {
					 r.setData(list);  
						r.setMsg("欢迎您来观看轮播");
			}else {
				// TODO Auto-generated catch block
				r.setMsg("没有您想看的轮播");
				r= Result.ERROR();	
			}
		return r.toString();
	}
	
	
	
	
	
	
	
	
	
	/**
	 * 根据视频名称模糊查询
	 * @param v
	 * @return
	 */
	@RequestMapping("/search")
	public String searchvieos(Video v) {
		Result r = Result.Ok();
		List<Video> list = videoservice.searchvideo(v);	
		JSONObject json=new JSONObject();
		json.put("vidoenamesearch", list);
		if(list!=null) {
			  r.setData(json);  
				r.setMsg("欢迎您来搜索观看");
		}else {
			// TODO Auto-generated catch block
			r.setMsg("没有您想看的搜索");
			r= Result.ERROR();	
		}
		return r.toString();

	}
	
	

}
