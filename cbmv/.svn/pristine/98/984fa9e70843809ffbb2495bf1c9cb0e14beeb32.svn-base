package com.creatorbluer.cbmv.comm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class UserShowInterceptor implements HandlerInterceptor {
	@Autowired
	RedisUtils ru;
	
	 //该方法会在控制器方法前执行，其返回值表示是否中断后续操作。当其返回值为true时，表示继续向下执行；当其返回值为false时，会中断后续的所有操作。
    public boolean preHandle(HttpServletRequest request, 
             HttpServletResponse response, Object handler)throws Exception {
         return true;
     }
     //该方法会在控制器方法调用之后，且解析视图之前执行。可以通过此方法对请求域中的模型和视图做出进一步的修改。
    public void postHandle(HttpServletRequest request, 
            HttpServletResponse response, Object handler, 
            ModelAndView mv)
             throws Exception {
    	Integer userId1 = (Integer) SecurityUtils.getSubject().getPrincipal();
		String u1 = (String) ru.getCacheHash("loginUsers", userId1.toString());
		JSONObject js = new JSONObject(u1);
		mv.addObject("loginUser", js.toMap());
    }
    //该方法会在整个请求完成，即视图渲染结束之后执行。可以通过此方法实现一些资源清理、记录日志信息等工作。
    public void afterCompletion(HttpServletRequest request, 
            HttpServletResponse response, Object handler, 
            Exception ex) throws Exception {  
 }

}
