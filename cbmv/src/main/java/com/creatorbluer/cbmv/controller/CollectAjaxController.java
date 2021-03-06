package com.creatorbluer.cbmv.controller;

import java.sql.SQLException;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.creatorbluer.cbmv.comm.RedisUtils;
import com.creatorbluer.cbmv.comm.Result;
import com.creatorbluer.cbmv.domain.Collect;
import com.creatorbluer.cbmv.domain.Video;
import com.creatorbluer.cbmv.service.CollectService;
import com.creatorbluer.cbmv.service.VideoService;

@RestController
@RequestMapping("/front")
public class CollectAjaxController {
	@Autowired
	private CollectService cs;
	@Autowired
	private RedisUtils ru;
	@Autowired
	VideoService vs;
	
	/**
	 * 查询
	 * @param c
	 * @return
	 */
	@RequestMapping("/collect_query")
	public String query(Collect c) {
		List<Collect> list;
		Result r = Result.Ok();
		
		try {
			list = cs.selectByAll(c);
			JSONObject json = new JSONObject();
			json.put("collect", list);
			r.setData(json);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			r = Result.ERROR();
			e.printStackTrace();
		}
		
		return r.toString();
		
	}
	
	/**
	 * 删除
	 * @param collectId
	 * @param attrs
	 * @return
	 */
	@RequestMapping("/collect_del")
	
	public String del(@RequestParam("collectId[]") Integer[] collectId) {
		int count =0;
		
		Result r = Result.Ok();
		try {
			count = cs.delete(collectId);
			
			if(count == 0) {
				r.setMsg("删除失败");
			}else {
				r.setMsg("删除成功");
				r.setData(count);
			}
			 
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			r = Result.ERROR();
			e.printStackTrace();
		}
		
		return r.toString() ;
		
	}
	
	 /**
	 * 收藏判断
	 * @param c
	 * @return
	 */
	@RequestMapping("/collect_judge_query")
	public String collectQuery(Collect c){
		int count = 0;
		Result r = Result.Ok();
		
		count = cs.selectByCollect(c);
		r.setData(count);

		return r.toString();
		
	}
	
}
