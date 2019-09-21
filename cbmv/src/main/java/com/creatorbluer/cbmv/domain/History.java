package com.creatorbluer.cbmv.domain;

import java.io.Serializable;
import java.util.Date;

public class History implements Serializable {
    private Integer historyId;
    
    private Integer custId;
    
    private Date historyTime;
    
    private Video video;

	public Integer getHistoryId() {
		return historyId;
	}

	public void setHistoryId(Integer historyId) {
		this.historyId = historyId;
	}

	

	public Integer getCustId() {
		return custId;
	}

	public void setCustId(Integer custId) {
		this.custId = custId;
	}

	public Date getHistoryTime() {
		return historyTime;
	}

	public void setHistoryTime(Date historyTime) {
		this.historyTime = historyTime;
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}
    
    
   
}