package com.creatorbluer.cbmv.comm;



import java.util.EnumSet;

import javax.servlet.DispatcherType;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.XmlWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;
//解析Spring配置文件
public class InitFactory implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext arg0) throws ServletException {
		//获取配置文件
		XmlWebApplicationContext rootContext = new XmlWebApplicationContext();
		rootContext.setConfigLocation("classpath:application-context.xml");
		
		//spring mvc核心控制器
		DispatcherServlet ds = new DispatcherServlet(rootContext);
		Dynamic d =  arg0.addServlet("ds", ds);
		d.addMapping("/");
		d.setLoadOnStartup(1);
		
		//解决中文乱码问题
		CharacterEncodingFilter cef = new CharacterEncodingFilter("UTF-8",true,true);
		arg0.addFilter("cef", cef).addMappingForUrlPatterns(EnumSet.allOf(DispatcherType.class), true, "/*");	
		
		
		//获取项目根路径
		arg0.setAttribute("ctx", arg0.getContextPath());
	}

}
