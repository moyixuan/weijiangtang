package com.creatorbluer.cbmv.domain;

import java.io.Serializable;
import java.util.Date;

//@Table(name="t_collect")
public class Collect implements Serializable {
	//@Id
	//@Column(name="collect_id")
    private Integer collectId;
	//@Column(name="user_id")
    private Integer custId;
	//@Column(name="video_id")
    private Video video;
    private Date collectTime;
    
	public Integer getCollectId() {
		return collectId;
	}
	public void setCollectId(Integer collectId) {
		this.collectId = collectId;
	}
	public Integer getCustId() {
		return custId;
	}
	public void setCustId(Integer custId) {
		this.custId = custId;
	}
	public Video getVideo() {
		return video;
	}
	public void setVideo(Video video) {
		this.video = video;
	}
	public Date getCollectTime() {
		return collectTime;
	}
	public void setCollectTime(Date collectTime) {
		this.collectTime = collectTime;
	}
	
}