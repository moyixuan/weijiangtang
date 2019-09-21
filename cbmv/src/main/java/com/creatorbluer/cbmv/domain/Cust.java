package com.creatorbluer.cbmv.domain;

import java.io.Serializable;
import java.util.Date;

import javax.xml.crypto.Data;

public class Cust implements Serializable{
	private int custId;
	private String custName;
	private String custMobile;
	private String custNichen;
	private String custImg;
	private Date custData;

	private String custPwd;
	public int getCustId() {   
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}

	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getCustMobile() {
		return custMobile;
	}
	public void setCustMobile(String custMobile) {
		this.custMobile = custMobile;
	}

	public String getCustNichen() {
		return custNichen;
	}
	public void setCustNichen(String custNichen) {
		this.custNichen = custNichen;
	}
	public String getCustImg() {
		return custImg;
	}
	public void setCustImg(String custImg) {
		this.custImg = custImg;
	}
	public String getCustPwd() {
		return custPwd;
	}
	public void setCustPwd(String custPwd) {
		this.custPwd = custPwd;
	}
	public Date getCustData() {
		return custData;
	}
	public void setCustData(Date custData) {
		this.custData = custData;
	}
	

}
