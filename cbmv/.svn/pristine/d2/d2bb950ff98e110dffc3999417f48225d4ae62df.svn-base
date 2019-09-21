package com.creatorbluer.cbmv.comm;

import java.util.HashMap;
import java.util.Map;

import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import at.pollux.thymeleaf.shiro.dialect.ShiroDialect;

@Configuration
public class ShiroConfiguration {

    //将自己的验证方式加入容器
   /* @Bean
    public MyShiroRealm myShiroRealm() {
        MyShiroRealm myShiroRealm = new MyShiroRealm();
        return myShiroRealm;
    }*/
    //权限管理，配置主要是Realm的管理认证
    @Bean
    public SecurityManager securityManager(@Autowired AuthorizingRealm myShiroRealm) {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(myShiroRealm);
        return securityManager;
    }
  //Filter工厂，设置对应的过滤条件和跳转条件
    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean(SecurityManager securityManager) {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        shiroFilterFactoryBean.setSecurityManager(securityManager);
    
        shiroFilterFactoryBean.setFilterChainDefinitionMap(getFilterChainDefinitionMap());
       
        //登录
        shiroFilterFactoryBean.setLoginUrl("/tologin");
        //首页
        shiroFilterFactoryBean.setSuccessUrl("/toindex");
        //错误页面，认证不通过跳转
        shiroFilterFactoryBean.setUnauthorizedUrl("forward:/html/error.jsp");
        
        return shiroFilterFactoryBean;
    }
    
    public Map<String,String> getFilterChainDefinitionMap(){
		 Map<String,String> map = new HashMap<String, String>();
		 
				//退出,前面的请求路径，后面退出的标识(logout)
				 map.put("/loginout","logout");
				 
		
		
			//处理登陆请求时不认证，前面请求路径(/doLogin)，后面不需要验证的标识(anon)
			 map.put("/js/*","anon");
			 map.put("/css/*", "anon");
			 map.put("/img/*", "anon");
			 map.put("/tologin", "anon");
			 map.put("/getVerifyCode", "anon");
			 map.put("/login", "anon");
			 map.put("/front/**", "anon");
			 map.put("/upload/**", "anon");
		
			//对所有用户认证，需要验证的标识(authc)。路径映射
			map.put("/**","authc");
		
		return map;
	}
    
    
    
    //使后台controller类中的@RequiresPermissions注解生效
    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(SecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
        authorizationAttributeSourceAdvisor.setSecurityManager(securityManager);
        return authorizationAttributeSourceAdvisor;
    }
    
   /* @Bean("systemLogoutFilter")
	public SystemLogoutFilter systemLogoutFilter() {
		return new SystemLogoutFilter();
	}*/
    
    @Bean
	public DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator() {
		DefaultAdvisorAutoProxyCreator proxyCreator = new DefaultAdvisorAutoProxyCreator();
		proxyCreator.setProxyTargetClass(true);
		return proxyCreator;
	}
    //thymeleaf与shiro整合(前端标签权限验证用)
	/*
	 * @Bean public ShiroDialect shiroDialect() { return new ShiroDialect(); }
	 */
    
}
