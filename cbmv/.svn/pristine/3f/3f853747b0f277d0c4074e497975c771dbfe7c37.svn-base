package com.creatorbluer.cbmv.controller;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.creatorbluer.cbmv.comm.Result;
import com.creatorbluer.cbmv.domain.History;
import com.creatorbluer.cbmv.domain.Video;
import com.creatorbluer.cbmv.service.HistoryService;
import com.creatorbluer.cbmv.service.VideoService;

@RestController
@RequestMapping("/front")
public class HistoryAjaxController {
	@Autowired
	private HistoryService historyservice;
	@Autowired
	private VideoService vs;
	
	/**
	 * 查询
	 * @param custId
	 * @return
	 */
	@RequestMapping("/history_query")
	private String historyselect(Integer custId) {
		Result r = Result.Ok();
		try {
			List<History> list = historyservice.selectByhistory(custId);
			r.setData(list);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			r = Result.ERROR();
			r.setMsg("失败");
			e.printStackTrace();
		}
		return r.toString();
	}
	
	/**
	 * 删除
	 * @param historyId
	 * @return
	 */
	@RequestMapping("/history_del")
	private String historydel(Integer[] historyId) {
		Result r = Result.Ok();
		try {
			int count = historyservice.delByhistory(historyId);
			if(count>0) {
				r.setMsg("删除成功");
			}else {
				r = Result.ERROR();
				r.setMsg("删除失败");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			r = Result.ERROR();
			r.setMsg("删除失败");
			e.printStackTrace();
		}
		return r.toString();
	}
	
	/**
	 * 添加记录
	 * @param h
	 * @return
	 */
	@RequestMapping("/history_add")
	private String historyadd(History h) {
		Result r = Result.Ok();
		try {
			 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
			 try {
				h.setHistoryTime(sdf.parse(sdf.format(new Date())));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			int a = historyservice.insertByhistory(h,h.getVideo().getVideoId());
		

			if (a > 0) {
				r.setMsg("成功");
				r.setData(historyservice.selectByhistoryId(h.getHistoryId()).getVideo().getPlayNum());
			}else {
				r = Result.ERROR();
				r.setMsg("失败");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			r = Result.ERROR();
			r.setMsg("错误");
			e.printStackTrace();
		}
		return r.toString();
		
	}
	/**
	 * 判断重复并删除
	 * @param h
	 * @return
	 * @throws SQLException
	 */
	/*
	 * @RequestMapping("/history_his") public String hischongfu(History h) throws
	 * SQLException { Result r = Result.Ok();
	 * 
	 * Integer historyId = historyservice.hischongfu(h);
	 * 
	 * 
	 * if(historyId != null) { System.out.println("删除成功"); }else {
	 * System.out.println("删除失败"); }
	 * 
	 * return r.toString();
	 * 
	 * }
	 */
	
}
