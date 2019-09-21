package com.creatorbluer.cbmv.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creatorbluer.cbmv.domain.Like;
import com.creatorbluer.cbmv.domain.Video;
import com.creatorbluer.cbmv.mapper.LikeMapper;
import com.creatorbluer.cbmv.mapper.VideoMapper;

@Service
public class LikeService {
	@Autowired
	LikeMapper mapper;
	@Autowired
	VideoMapper vm;

	/**
	 * 点赞判断
	 * 
	 * @param l
	 * @return
	 */
	public Integer selectByLike(Like l) {
		return mapper.selectByLike(l);
	}

	/**
	 * 点赞新增
	 * 
	 * @param l
	 * @return
	 */
	@Transactional
	public Integer seavByLike(Like l, Integer videoId) {
		int del = mapper.delete(l);
		if (del == 0) {
			del = mapper.seavByLike(l);
			del = vm.addLikeNum(videoId);
		} else {
			del = vm.delLikeNum(videoId);
		}
		return del;

	}

	/**
	 * 删除
	 * 
	 * @param likeId
	 * @return
	 *//*
		 * @Transactional public int delete(Like l,Video v) { int del =
		 * mapper.delete(l); if(del >0) { del= vm.updatenum(v); } return del; }
		 */

}
