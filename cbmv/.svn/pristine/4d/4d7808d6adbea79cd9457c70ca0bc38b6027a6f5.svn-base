package com.creatorbluer.cbmv.comm;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

/**
 * 过滤器
 * @author 王源广
 *
 */
public class XssHttpServletRquestWrapper extends HttpServletRequestWrapper {
	
	private static Whitelist wh = Whitelist.simpleText();
	static {
		wh.removeAttributes("a", "href","rel");
		wh.addTags("div","img");
	}
	public XssHttpServletRquestWrapper(HttpServletRequest request) {
		super(request);
		
	}
	
	/*
	 * @Override public String getParameter(String name) { String value =
	 * super.getParameter(name); if(value != null) value = Jsoup.clean(value, wh);
	 * return value; }
	 * 
	 * @Override public Map<String, String[]> getParameterMap() { Map<String,
	 * String[]> map =super.getParameterMap(); Map<String, String[]> m = new
	 * HashMap<String,String[]>(); for(Entry<String,String[]> entry :
	 * map.entrySet()) { if("name".equals( entry.getKey())){ m.put("name",new
	 * String[] {Jsoup.clean(entry.getValue()[0], wh)}); }else {
	 * m.put(entry.getKey(), entry.getValue()); } } return m; }
	 */
	
	@Override
	public String[] getParameterValues(String name) {
		String[] value = super.getParameterValues(name);
		if(value  != null  && value.length > 0)
			value = new String[] {Jsoup.clean(value[0], wh)};
		return value;
	}

}
