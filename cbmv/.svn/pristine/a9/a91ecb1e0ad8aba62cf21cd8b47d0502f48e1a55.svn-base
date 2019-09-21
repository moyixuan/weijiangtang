package com.creatorbluer.cbmv.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.creatorbluer.cbmv.comm.RedisUtils;
import com.creatorbluer.cbmv.comm.Result;
import com.creatorbluer.cbmv.domain.Like;
import com.creatorbluer.cbmv.domain.Video;
import com.creatorbluer.cbmv.service.LikeService;
import com.creatorbluer.cbmv.service.VideoService;

@RestController
@RequestMapping("/front")
public class LikeAjaxController {
	@Autowired
	LikeService ls;
	@Autowired
	RedisUtils ru;
	@Autowired
	VideoService vs;

	public LikeAjaxController() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * 点赞判断
	 * 
	 * @param l
	 * @return
	 */
	@RequestMapping("/like_query")
	public String query(Like l) {
		int count = 0;
		Result r = Result.Ok();

		count = ls.selectByLike(l);
		r.setData(count);

		return r.toString();

	}

	/**
	 * 点赞数
	 * 
	 * @param l
	 * @return
	 * @throws SQLException
	 */
	@RequestMapping("/like_seav")
	public String seav(Like l, Video v) throws SQLException {
		int count = 0;

		Result r = Result.Ok();

		count = ls.seavByLike(l, v.getVideoId());

		if (count == 0) {
			r.setData(count);
		} else {
			r.setData(vs.selectByVideoId(new Integer[] { v.getVideoId() }).get(0).getLikeNum());
		}

		return r.toString();

	}
	/*
	*//**
		 * 点赞删除
		 * 
		 * @param likeId
		 * @return
		 *//*
			 * @RequestMapping("/like_del") public String delete(Like l,Video v) { int count
			 * = 0;
			 * 
			 * 
			 * Result r = Result.Ok();
			 * 
			 * count = ls.delete(l,v);
			 * 
			 * 
			 * r.setData(count);
			 * 
			 * return r.toString();
			 * 
			 * }
			 */
}
