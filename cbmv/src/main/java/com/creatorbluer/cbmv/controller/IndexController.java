package com.creatorbluer.cbmv.controller;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.creatorbluer.cbmv.comm.RedisUtils;
import com.creatorbluer.cbmv.comm.VerifyCode;
import com.creatorbluer.cbmv.domain.Cust;
import com.creatorbluer.cbmv.domain.User;
import com.creatorbluer.cbmv.domain.Video;
import com.creatorbluer.cbmv.service.CollectService;
import com.creatorbluer.cbmv.service.CustService;
import com.creatorbluer.cbmv.service.UserService;
import com.creatorbluer.cbmv.service.VideoService;
@Controller
public class IndexController {
	@Autowired
	RedisUtils ru;
	@Autowired
	CustService custservice;
	@Autowired
	VideoService videoservice;
	@Autowired
	UserService userservice;
	@Autowired
	private CollectService cs;
	
	@RequestMapping("toindex")
	public ModelAndView toIndex(ModelAndView mv,Cust c,Video v) {
		mv.setViewName("index");
		try {
			Integer list = custservice.selectCustNum(c);
			mv.addObject("custnum",list);
			Integer playnum = videoservice.selectSumPlay(v);
			mv.addObject("playsum",playnum);
			Integer likenum = videoservice.selectLikePlay(v);
			mv.addObject("likenum",likenum);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
			//创建日期对象
			Calendar cal = Calendar.getInstance();
			Date n  = cal.getTime();
			cal.add(Calendar.HOUR, -1 * 720);
			
			List<Map> tb = videoservice.selectByDay(sdf.format(cal.getTime()));
			List<Map> newlist = new ArrayList<>();
			
			List<Map> tbsc = cs.selectByCollectDay(sdf.format(cal.getTime()));
			List<Map> sclist = new ArrayList<>();
			
			//毫秒值比大小
			while (cal.getTime().getTime() <= n.getTime()) {
				Map map = new HashMap();
				String pd = null; 
				boolean flag = true;
				
				Map scmap = new HashMap();
				String scpd = null; 
				boolean scflag = true;
				
				String t = sdf.format(cal.getTime());
				for(Map a : tb) {
					pd= (String)a.get("time");
					if(pd.equals(t)) {
						newlist.add(a);
						flag = false;
						break;
					}
				}
				
				for(Map b : tbsc) {
					scpd= (String)b.get("time");
					if(scpd.equals(t)) {
						sclist.add(b);
						scflag = false;
						break;
					}
				}
				
				if(flag) {
					map.put("sum", 0);
					map.put("time", t);
					newlist.add( map);
				}
				if(scflag) {
					scmap.put("sum", 0);
					scmap.put("time", t);
					sclist.add( scmap);
				}
				
				
				cal.add(Calendar.HOUR, 24);
			}
			 JSONArray jsonArray=new JSONArray(newlist);
			 JSONArray scArray=new JSONArray(sclist);
	          System.out.println(jsonArray.toString());
			mv.addObject("tb",jsonArray);
			
			mv.addObject("sc",scArray);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mv;
		
	}
	
	@RequestMapping("totime")
	public ModelAndView toTime(ModelAndView mv,Integer time) {
		System.out.println(time);
		Cust c = new Cust();
		Video v = new Video();
		try {
			if(time != null) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
				//创建日期对象
				Calendar cal = Calendar.getInstance();
				Date n  = cal.getTime();
				cal.add(Calendar.HOUR, -1 * time);
				c.setCustData(cal.getTime());
				List<Map> tb = videoservice.selectByDay(sdf.format(cal.getTime()));
				List<Map> tbsc = cs.selectByCollectDay(sdf.format(cal.getTime()));
				
				List<Map> newlist = new ArrayList<>();
				List<Map> sclist = new ArrayList<>();
				
				//毫秒值比大小
				while (cal.getTime().getTime() <= n.getTime()) {
					Map map = new HashMap();
					Map mapsc = new HashMap();
					String pd = null; 
					boolean flag = true;
					String pdsc = null; 
					boolean flagsc = true;
					
					String t = sdf.format(cal.getTime());
					for(Map a : tb) {
						pd= (String)a.get("time");
						if(pd.equals(t)) {
							newlist.add(a);
							flag = false;
							break;
						}
					}
					for(Map b : tbsc) {
						pd= (String)b.get("time");
						if(pd.equals(t)) {
							sclist.add(b);
							flagsc = false;
							break;
						}
					}
					
					if(flag) {
						map.put("sum", 0);
						map.put("time", t);
						newlist.add( map);
					}
					if(flagsc) {
						mapsc.put("sum", 0);
						mapsc.put("time", t);
						sclist.add( mapsc);
					}
					
					cal.add(Calendar.HOUR, 24);
				}
				 JSONArray jsonArray=new JSONArray(newlist);
				 JSONArray scArray=new JSONArray(sclist);
		          
				mv.addObject("tb",jsonArray);
				mv.addObject("sc",scArray);
				System.out.println(scArray.toString());
			}
			Integer list = custservice.selectCustNum(c);
			mv.addObject("custnum",list);
			Integer playnum = videoservice.selectSumPlay(v);
			mv.addObject("playsum",playnum);
			Integer likenum = videoservice.selectLikePlay(v);
			mv.addObject("likenum",likenum);
			
			mv.addObject("time",time);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.setViewName("index");
		return mv;
		
	}
	
	
	/* 获取验证码图片 */
	@RequestMapping("/getVerifyCode")
	public void getVerificationCode(HttpSession seeion,HttpServletResponse response) {
		try {
			int width = 100;
			int height = 34;

			//生成对应宽高的初始图片
			BufferedImage verifyImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_BGR);
			

			//单独的一个类方法，出于代码复用考虑，进行了封装
			//功能是生成验证码字符并加上噪点，干扰线，返回值为验证码字符 
			String randomText = VerifyCode.drawRandomText(width, height, verifyImg);
			seeion.setAttribute("verifyCode", randomText);
			response.setContentType("image/png");//必须设置响应内容类型为图片，否则前台不识别
			OutputStream os = response.getOutputStream();//获取文件输出流
			ImageIO.write(verifyImg,"png",os);
			
			os.flush();
			os.close();//关闭流
		} catch (IOException e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
	}
	
	/**
	 * 修改密码的跳转页面
	 */
	@RequestMapping("/chagepwd_edit")
	public ModelAndView chagepwd(ModelAndView mv,Integer userId,HttpSession session) {

		
		try {
			User u = userservice.selectById(userId);
			mv.addObject("user", u);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//防重复提交的token
		session.setAttribute("repeaToken", UUID.randomUUID().toString());
		mv.setViewName("userform");
		return mv;
		
	}
	
	@RequestMapping("/chage_xg")
	public ModelAndView pwdsave(HttpSession session,String repeaToken,Integer userId,String oldpwd,String pwd,RedirectAttributes attrs) {
		
		ModelAndView mv = new ModelAndView();
	
		//防重复提交的
		String token = null;
		synchronized (userservice) {
			token = (String) session.getAttribute("repeaToken");
			session.removeAttribute("repeaToken");
		}
		if(token == null || !repeaToken.equalsIgnoreCase(token)) {
			mv.setViewName("userform");
			mv.addObject("msg","请不要重复提交");
			//防重复提交的token
			session.setAttribute("repeaToken", UUID.randomUUID().toString());
			return mv;
		}
		try {
			User u = userservice.selectById(userId);
			oldpwd = new Sha256Hash(oldpwd,"1234567890").toHex();
			if(u.getPwd().equals(oldpwd)) {
				User u1 = new User();
				u1.setUserId(userId);
				u1.setPwd(new Sha256Hash(pwd,"1234567890").toHex());
				int count = userservice.xiugai(u1);
				if(count>0) {
					mv.setViewName("redirect:/loginout");
					attrs.addFlashAttribute("msg","修改成功");//保持到会话中，页面渲染完成后立即删除
				}else {
					mv.setViewName("userform");
					mv.addObject("msg","修改失败");
					session.setAttribute("repeaToken", UUID.randomUUID().toString());
				}
			}else {
				mv.setViewName("userform");
				mv.addObject("msg","原密码不正确");
				session.setAttribute("repeaToken", UUID.randomUUID().toString());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
		
	}

	
}
