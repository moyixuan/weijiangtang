package com.creatorbluer.cbmv.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.creatorbluer.cbmv.comm.Properties;
import com.creatorbluer.cbmv.comm.RedisUtils;
import com.creatorbluer.cbmv.domain.Type;
import com.creatorbluer.cbmv.domain.User;
import com.creatorbluer.cbmv.domain.Video;
import com.creatorbluer.cbmv.mapper.CollectMapper;
import com.creatorbluer.cbmv.service.TypeService;
import com.creatorbluer.cbmv.service.VideoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class VideoController {
	@Autowired
	VideoService videoservice;
	@Autowired
	TypeService typeservice;
	@Autowired
	RedisUtils ru;
	@Autowired
	CollectMapper collectmapper;
	
	/**
	 * 查询
	 * @param v
	 * @param pageIndex
	 * @return
	 */
	@RequestMapping("video_query")
	public ModelAndView query(Video v,Type te,@RequestParam(value = "pageIndex",defaultValue = "1")Integer pageIndex) {
		ModelAndView mv = new ModelAndView();
		Type t = new Type();
		PageHelper.startPage(pageIndex,Properties.PAGE_SIZE);
		
		
		try {
			v.setType(te);
			List<Video> list = videoservice.selectByVideo(v);
			List<Type> type = typeservice.selectByType(t);
			PageInfo<Video> page = new PageInfo<Video>(list);
			mv.addObject("page", page);
			mv.addObject("typelist", type);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.setViewName("videolist");
		return mv;
	}
	
	/**
	  * 删除
	 * @param videoId
	 * @param atts
	 * @return
	 */
	@RequestMapping("/video_del")
	public String del(Integer[] videoId,RedirectAttributes atts) {
		try {
			 //1.先找出旧文件
       	 	List<Video> video  = videoservice.selectByVideoId(videoId);
			int count = videoservice.delectsByVideo(videoId);
			if(count > 0) {
				//删除时则应该删除旧的文件
	            
            	 for (Video i : video) {
            		 String  url = i.getVideoUrl();
            		 //2.删除旧的文件
                	 if(url != null) {
                		 File feilurl = new File("D:\\cbitedu5" + url);
                		 if(feilurl.delete()) {
                			 System.out.println("删除成功");
                		 }else {
    							System.out.println("删除失败");
    						}
                	 }
				}

				atts.addFlashAttribute("msg","删除成功");
			}else {
				atts.addFlashAttribute("msg", "删除失败");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:video_query";
	}
	
	/**
	 * 进入编辑页面，如果参数videoId有值，则表示修改，此时根据id查询并返回用户信息
	 * @param videoId
	 * @param mv
	 * @param session
	 * @return
	 */
	@RequestMapping("/video_edit")
	public ModelAndView edit(Integer[] videoId,ModelAndView mv,HttpSession session) {

		if(videoId != null) {
			try {
				List<Video> v = videoservice.selectByVideoId(videoId);
				 for (Video i : v) {
					 mv.addObject("video", i);
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		Type t = new Type();
		List<Type> type = typeservice.selectByType(t);
		mv.addObject("typelist", type);
		//防重复提交的token
		session.setAttribute("repeaToken", UUID.randomUUID().toString());
		mv.setViewName("videoform");
		return mv;
		
	}
	
	@RequestMapping(value = "/video_save",method = RequestMethod.POST)
	public ModelAndView save (@Validated Video v,RedirectAttributes atts,HttpSession session,String repeaToken,@RequestParam("file") MultipartFile[] file) throws IllegalStateException, IOException {
		ModelAndView mv = new ModelAndView();
		//防重复提交的
		String token = null;
		synchronized (videoservice) {
			token = (String) session.getAttribute("repeaToken");
			session.removeAttribute("repeaToken");
		}
		/*
		 * if(token == null || !repeaToken.equalsIgnoreCase(token)) {
		 * mv.setViewName("videoform"); mv.addObject("msg","请不要重复提交"); //防重复提交的token
		 * session.setAttribute("repeaToken", UUID.randomUUID().toString()); return mv;
		 * }
		 */
		int count = 0;
		int cf = 0;
		int spcf = 0;
		boolean isUpdate = false;
		try {
			if(v.getVideoId() != null) {//修改
				//判断视频名字有没有重复
				cf = videoservice.selectChongfu(v);
				if(cf == 0) {
					for (int i = 0; i < file.length; i++) {
						if(i == 0) {
							if(!file[i].isEmpty()) {
								//上传处理
								// 根据时间戳创建新的文件名，这样即便是第二次上传相同名称的文件，也不会把第一次的文件覆盖了
								String fileName = System.currentTimeMillis()+file[i].getOriginalFilename();
								//日期格式
								SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
								//创建日期对象
								Date date = new Date();
								
								//通过获取当前项目的真实路径，然后拼接前面的文件名
								 String destFileName="D:\\cbitedu5\\upload"+File.separatorChar + sdf.format(date)+File.separatorChar+fileName;
								 //第一次运行的时候，这个文件所在的目录往往是不存在的，这里需要创建一下目录
								 File destFile = new File(destFileName);
					             destFile.getParentFile().mkdirs();
					             //把浏览器上传的文件复制到希望的位置
					             file[i].transferTo(destFile);
					             v.setVideoUrl("/upload/"+ sdf.format(date) +"/"+fileName);
							}
						}else {
							if(!file[i].isEmpty()) {
								//上传处理
								// 根据时间戳创建新的文件名，这样即便是第二次上传相同名称的文件，也不会把第一次的文件覆盖了
								String fileimgName = System.currentTimeMillis()+file[i].getOriginalFilename();
								//日期格式
								SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
								//创建日期对象
								Date date = new Date();
								
								//通过获取当前项目的真实路径，然后拼接前面的文件名
								 String destFileimgName="D:\\cbitedu5\\upload"+File.separatorChar + sdf.format(date)+File.separatorChar+fileimgName;
								 //第一次运行的时候，这个文件所在的目录往往是不存在的，这里需要创建一下目录
								 File destFileimg = new File(destFileimgName);
					             destFileimg.getParentFile().mkdirs();
					             //把浏览器上传的文件复制到希望的位置
					             file[i].transferTo(destFileimg);
					             v.setVideoImg("/upload/"+ sdf.format(date) +"/"+fileimgName);
							}
						}
					}
		             Type t = typeservice.selectByTypeId(v.getType().getTypeId());
		             v.setType(t);
		             
		             //修改时，如果没有上传新文件，则不应该传文件数据,如果有上传新的文件，则应该删除旧的文件
		             //1.先找出旧文件
		             if(v.getVideoUrl() != null) {
		            	 Integer[] id ={ v.getVideoId()};
		            	 List<Video> video  = videoservice.selectByVideoId(id);
		            	 for (Video i : video) {
		            		 String  url = i.getVideoUrl();
		            		 //2.删除旧的文件
		                	 if(url != null) {
		                		 File feilurl = new File("D:\\cbitedu5" + url);
		                		 if(feilurl.delete()) {
		                			 System.out.println("删除成功");
		                		 }else {
		    							System.out.println("删除失败");
		    						}
		                	 }
						}
		             }
		             
		             if(v.getVideoImg() != null) {
		            	 Integer[] id ={ v.getVideoId()};
		            	 List<Video> video  = videoservice.selectByVideoId(id);
		            	 for (Video i : video) {
		            		 String  img = i.getVideoImg();
		            		 //2.删除旧的文件
		                	 if(img != null) {
		                		 File feilimg = new File("D:\\cbitedu5" + img);
		                		 if(feilimg.delete()) {
		                			 System.out.println("删除成功");
		                		 }else {
		    							System.out.println("删除失败");
		    						}
		                	 }
						}
		             }
		             
					count = videoservice.updateByVideo(v);
					isUpdate = true;
				}
			}else {//新增
				//判断视频名字有没有重复
				spcf = videoservice.selectChongfu(v);
				if(cf == 0) {
					for (int i = 0; i < file.length; i++) {
						if(i == 0) {
							//上传处理
							// 根据时间戳创建新的文件名，这样即便是第二次上传相同名称的文件，也不会把第一次的文件覆盖了
							String fileName = System.currentTimeMillis()+file[i].getOriginalFilename();
							//日期格式
							SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
							//创建日期对象
							Date date = new Date();
							//通过获取当前项目的真实路径，然后拼接前面的文件名
							 String destFileName="D:\\cbitedu5\\upload"+File.separatorChar + sdf.format(date)+File.separatorChar+fileName;
							 //第一次运行的时候，这个文件所在的目录往往是不存在的，这里需要创建一下目录
							 File destFile = new File(destFileName);
				             destFile.getParentFile().mkdirs();
				             //把浏览器上传的文件复制到希望的位置
				             file[i].transferTo(destFile);
				             v.setVideoUrl("/upload/"+ sdf.format(date) +"/"+fileName);
						}else {
							//视频封面
							//上传处理
							// 根据时间戳创建新的文件名，这样即便是第二次上传相同名称的文件，也不会把第一次的文件覆盖了
							String fileimgName = System.currentTimeMillis()+file[i].getOriginalFilename();
							//日期格式
							SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
							//创建日期对象
							Date date1 = new Date();
							//通过获取当前项目的真实路径，然后拼接前面的文件名
							 String destFileimgName="D:\\cbitedu5\\upload"+File.separatorChar + sdf1.format(date1)+File.separatorChar+fileimgName;
							 //第一次运行的时候，这个文件所在的目录往往是不存在的，这里需要创建一下目录
							 File destFileimg = new File(destFileimgName);
				             destFileimg.getParentFile().mkdirs();
				             //把浏览器上传的文件复制到希望的位置
				             file[i].transferTo(destFileimg);
				             v.setVideoImg("/upload/"+ sdf1.format(date1) +"/"+fileimgName);
							count = videoservice.inserByVideo(v);
						}
					}
					
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(cf > 0 || spcf > 0) {
			mv.addObject("msg", "视频名称重复");
			//防重复提交的token
			session.setAttribute("repeaToken", UUID.randomUUID().toString());
			mv.addObject("video", v);
			mv.setViewName("videoform");
		}else {
			if(count > 0) {
				 atts.addFlashAttribute("msg", isUpdate? "修改成功" :"新增成功");//保持到会话中，页面渲染完成后立即删除
				 mv.setViewName("redirect:video_query");
			}else {
				mv.addObject("msg", isUpdate ? "修改失败" :"新增失败");
				//防重复提交的token
				session.setAttribute("repeaToken", UUID.randomUUID().toString());
				mv.addObject("video", v);
				mv.setViewName("videoform");
			}
		}
		return mv;
		
	}
	
	
	
	//轮播状态
		@RequestMapping("/video_lunbo")
		public ModelAndView status(Video v,RedirectAttributes attrs)throws  SQLException {

			ModelAndView mv = new ModelAndView();
			int count=0;
			count=videoservice.updateByVideos(v);
			if(count > 0 ) {
				attrs.addFlashAttribute("msg","修改状态成功");
		
					 
			}else {
				attrs.addFlashAttribute("msg","最多只能用四个广推");
			}
			mv.setViewName("redirect:video_query");		
				
				// TODO Auto-generated catch block

			return mv;
		}
		
		
		//预览
		@RequestMapping("/view")	
		public ModelAndView view(int videoId,ModelAndView mv)throws  SQLException {
			Video v=new Video();
			v=videoservice.selectbyvideoid(videoId);
			if(v!=null) {
				mv.addObject("wv",v);
				mv.setViewName("viewvideo");
			}else {
				
				mv.setViewName("redirect:video_query");
			}

			return mv;
		}
		
		
		
		//修改上下架
		@RequestMapping("/updown")
		public ModelAndView view(Video v,RedirectAttributes attrs)throws  SQLException{
			
			ModelAndView mv = new ModelAndView();
			int count=0;
			count=videoservice.updateByVideo(v);
			if(count>0) {
				attrs.addFlashAttribute("msg","修改状态成功");
			}else {
				attrs.addFlashAttribute("msg","修改状态失败");
			}
			mv.setViewName("redirect:video_query");		
			return mv;
		}
		
		
		
		//批量上架
		@RequestMapping("/upvideo")
		public ModelAndView upvideo(Integer[] videoId,RedirectAttributes attrs)throws  SQLException{
			ModelAndView mv = new ModelAndView();
			int count=0;
			count=videoservice.updateall(videoId);
			if(count>0) {
				attrs.addFlashAttribute("msg","上架成功");
			}else {
				attrs.addFlashAttribute("msg","上架失败");
			}
			mv.setViewName("redirect:video_query");	
		return mv;
		}
		
		
		
		
		//批量下架
		@RequestMapping("/downvideo")
		public ModelAndView downvideo(Integer[] videoId,RedirectAttributes attrs)throws  SQLException{
			ModelAndView mv = new ModelAndView();
			int count=0;
			count=videoservice.downdateall(videoId);
			if(count>0) {
				attrs.addFlashAttribute("msg","下架成功");
			}else {
				attrs.addFlashAttribute("msg","下架失败");
			}
			mv.setViewName("redirect:video_query");	
		return mv;
		}
	
	
	
	
	
	
	
	
	
	
	
	

}
