package com.creatorbluer.cbmv.comm;

import java.io.IOError;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

public class Result {

	public Result() {
		// TODO Auto-generated constructor stub
	}
	private int state;//状态
	private Object data;//数据
	private String msg;//提醒消息
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	//成功
	public static Result Ok() {
		Result r = new Result();
		r.setState(0);
		return r;
	}
	
	//失败
	public static Result ERROR() {
		Result r = new Result();
		r.setState(-1);
		return r;
	}
	
	public void print(HttpServletResponse res) throws IOException{
		JSONObject json = new JSONObject(this);
		PrintWriter out = res.getWriter();
		res.reset();
		out.print(json);
		out.flush();
		out.close();
		System.out.println(json);
	}
	
	@Override
	public String toString() {
		JSONObject json = new JSONObject(this);
		return json.toString();
	}

}
