package com.creatorbluer.cbmv.comm;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;



/**
 * 不能继承不能实例，此类用于保存属性文件对象，并提供读取属性值的方法
 * @author 王源广
 *
 */
@Configuration
public  class Properties {
	
	public Properties() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * 每页分页数
	 */
	public static  int PAGE_SIZE = 0;
	
	/**
	 * 字符编码
	 */
	public static String CHARSET = "UTF-8";
	
	@Value("${sys_page_size}")
	public  void setPageSize(int pageSize) {
		PAGE_SIZE = pageSize;
	}
	
	@Value("${sys_charset}")
	public void setCharset(String charset) {
		CHARSET = charset;
	}
	
	
}
