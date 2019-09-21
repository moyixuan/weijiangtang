package com.creatorbluer.cbmv.domain;

public class Video {
	private Integer videoId;
	private String videoName;
	private String videoTeacher;
	private Type type;
	private Integer playNum;
	private Integer likeNum;
	private Integer collectNum;
	private Integer shareName;
	private String videoDis;
	private String videoUrl;
	private String videoImg;
	private String videoLunbo;
	private String videoState;
	public String getVideoLunbo() {
		return videoLunbo;
	}
	public void setVideoLunbo(String videoLunbo) {
		this.videoLunbo = videoLunbo;
	}
	public String getVideoImg() {
		return videoImg;
	}
	public void setVideoImg(String videoImg) {
		this.videoImg = videoImg;
	}
	public Integer getVideoId() {
		return videoId;
	}
	public void setVideoId(Integer videoId) {
		this.videoId = videoId;
	}
	public String getVideoName() {
		return videoName;
	}
	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}
	public String getVideoTeacher() {
		return videoTeacher;
	}
	public void setVideoTeacher(String videoTeacher) {
		this.videoTeacher = videoTeacher;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public Integer getPlayNum() {
		return playNum;
	}
	public void setPlayNum(Integer playNum) {
		this.playNum = playNum;
	}
	public Integer getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(Integer likeNum) {
		this.likeNum = likeNum;
	}
	public Integer getCollectNum() {
		return collectNum;
	}
	public void setCollectNum(Integer collectNum) {
		this.collectNum = collectNum;
	}
	public Integer getShareName() {
		return shareName;
	}
	public void setShareName(Integer shareName) {
		this.shareName = shareName;
	}
	public String getVideoDis() {
		return videoDis;
	}
	public void setVideoDis(String videoDis) {
		this.videoDis = videoDis;
	}
	public String getVideoUrl() {
		return videoUrl;
	}
	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}
	public String getVideoState() {
		return videoState;
	}
	public void setVideoState(String videoState) {
		this.videoState = videoState;
	}
	
}
