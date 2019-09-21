package com.creatorbluer.cbmv.domain;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

import javax.validation.constraints.NotBlank;


/**
 * 用户实体类，数据库用户表（t_user）的体现
 * @author 王源广
 *
 */
public class User implements Serializable {

	public User() {
		// TODO Auto-generated constructor stub
	}
	
	private Integer userId;//用户id
	@NotBlank(message = "姓名不能为空")
	private String name;//用户名字
	private String pwd;//用户密码
	@NotBlank(message = "手机号不能为空")
	private String mobile;//用户手机号
	@NotBlank(message = "身份证号不能为空")
	private String idcard;//用户身份证
	private String status;//用户状态
	private Date time;//时间
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
	
}
