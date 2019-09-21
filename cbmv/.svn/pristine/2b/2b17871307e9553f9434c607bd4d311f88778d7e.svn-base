package com.creatorbluer.cbmv.controller;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.javassist.runtime.Cflow;
import org.apache.shiro.SecurityUtils;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.creatorbluer.cbmv.comm.Properties;
import com.creatorbluer.cbmv.comm.RedisUtils;
import com.creatorbluer.cbmv.domain.Type;
import com.creatorbluer.cbmv.domain.User;
import com.creatorbluer.cbmv.service.TypeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class TypeController {
	@Autowired
	TypeService typeservice;
	@Autowired
	RedisUtils ru;
	
	@RequestMapping("type_query")
	public ModelAndView selectByType(Type t,@RequestParam(value = "pageIndex",defaultValue = "1")Integer pageIndex) {
		ModelAndView mv = new ModelAndView();
		PageHelper.startPage(pageIndex, Properties.PAGE_SIZE);
		
		
		
		try {
			List<Type> list = typeservice.selectByType(t);
			PageInfo<Type> page = new PageInfo<Type>(list);
			mv.addObject("page", page);
		} catch (Exception e) {
			// TODO: handle exception
		}
		mv.setViewName("subjlist");
		return mv;
		}
	
	
	@RequestMapping("type_del")
	public String del(Integer[] typeId,RedirectAttributes atts) {
		try {
			int count = typeservice.delectsByType(typeId);
			if(count > 0) {
				atts.addFlashAttribute("msg","删除成功");
			}else {
				atts.addFlashAttribute("msg", "删除失败");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "redirect:type_query";
	}
	
	/**
	 * 进入编辑页面，如果参数typeId有值，则表示修改，此时根据id查询并返回用户信息
	 * @param typeId
	 * @param mv
	 * @param session
	 * @return
	 */
	@RequestMapping("type_edit")
	public ModelAndView edit(Integer typeId,ModelAndView mv,HttpSession session) {
		
		
		if(typeId != null) {
			try {
				Type t = typeservice.selectByTypeId(typeId);
				mv.addObject("type", t);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		//防重复提交的token
		session.setAttribute("repeaToken", UUID.randomUUID().toString());
		mv.setViewName("subform");
		return mv;
	}
	
	@RequestMapping("type_save")
	public ModelAndView save(@Validated Type t,RedirectAttributes atts,HttpSession session,String repeaToken) {
		ModelAndView mv = new ModelAndView();
		//防重复提交的
		String token = null;
		synchronized (typeservice) {
			token = (String) session.getAttribute("repeaToken");
			session.removeAttribute("repeaToken");
		}
		if(token == null || !repeaToken.equalsIgnoreCase(token)) {
			mv.setViewName("typeform");
			mv.addObject("msg","请不要重复提交");
			//防重复提交的token
			session.setAttribute("repeaToken", UUID.randomUUID().toString());
			return mv;
		}
		
		int count = 0;
		int congfu1 = 0;
		int congfu2 = 0;
		boolean isUpdate = false;
		try {
			if(t.getTypeId() != null) {//修改
				Type t1 = new  Type();
				t1.setTypeCode(t.getTypeCode());
				t1.setTypeId(t.getTypeId());
				congfu1 = typeservice.selectChongfu(t1);
				if(congfu1 == 0) {//判断编码是否重复
					Type t2 = new  Type();
					t2.setTypeName(t.getTypeName());
					t2.setTypeId(t.getTypeId());
					congfu2 = typeservice.selectChongfu(t2);
					if(congfu2 == 0) {//判断名称是否重复
						count = typeservice.updateByType(t);
						isUpdate = true;
					}
				}
			}else {
				t.setStatus("1");
				count = typeservice.inserByTypr(t);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if(congfu1 > 0) {
			mv.addObject("msg", "编号重复");
			//防重复提交的token
			session.setAttribute("repeaToken", UUID.randomUUID().toString());
			mv.addObject("type", t);
			mv.setViewName("subform");
		}else {
			if(congfu2 > 0) {
				mv.addObject("msg", "名称重复");
				//防重复提交的token
				session.setAttribute("repeaToken", UUID.randomUUID().toString());
				mv.addObject("type", t);
				mv.setViewName("subform");
			}else {
				 if(count > 0 ) {
					 atts.addFlashAttribute("msg", isUpdate? "修改成功" :"新增成功");//保持到会话中，页面渲染完成后立即删除
					 mv.setViewName("redirect:type_query");		
				}else {
					mv.addObject("msg", isUpdate ? "修改失败" :"新增失败");
					//防重复提交的token
					session.setAttribute("repeaToken", UUID.randomUUID().toString());
					mv.addObject("type", t);
					mv.setViewName("subform");
				}
			}
		}
		
		
		return mv;
		
	}
	
	//修改状态
		@RequestMapping("type_stus")
		public ModelAndView status(Type t,RedirectAttributes attrs) {
			ModelAndView mv = new ModelAndView();
			int count=0;		
				 count = typeservice.updateByType(t);
 
			 if(count > 0 ) {
				 attrs.addFlashAttribute("msg","修改成功");
				 mv.setViewName("redirect:type_query");		
			}else {
				mv.addObject("msg", "修改失败");
				mv.setViewName("type_query"); 
			}
			return mv;
		}
	
	
}
