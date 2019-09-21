package com.creatorbluer.cbmv.comm;

import javax.servlet.http.HttpServletRequest;

import org.springframework.validation.BindException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

/**
  * 全局的异常处理
 * @author 王源广
 *
 */
@ControllerAdvice
public class GlobalExceptionHandler {
	
	@ExceptionHandler(BindException.class)
	public ModelAndView handlerBindException(Exception e) {
		
		BindException be = (BindException) e;
		String msg = be.getFieldError().getDefaultMessage();
		 ModelAndView mv = new ModelAndView();
		mv.addObject("msg", msg);
		//转发到错误页面显示信息
		mv.setViewName("forward:/html/error.jsp");
		return mv;
		
	}
	
	
}
