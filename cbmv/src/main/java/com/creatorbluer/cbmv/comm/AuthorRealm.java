package com.creatorbluer.cbmv.comm;

import java.sql.SQLException;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.creatorbluer.cbmv.domain.User;
import com.creatorbluer.cbmv.service.UserService;

/**
 * 安全管理，Shiro
 * @author 王源广
 *
 */
@Component
public class AuthorRealm extends AuthorizingRealm {
	
	@Autowired
	UserService us;
	
	/**
	 * 权限管理
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 登录认证管理
	 */
	@Autowired
	RedisUtils ru;
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// TODO Auto-generated method stub
		//获取用户名（手机号）
		String mobile = (String) token.getPrincipal();
		//获取密码
		String pwd = new String((char[])token.getCredentials());
		User user = new User();
		user.setMobile(mobile);
		user.setPwd(pwd);
		try {
			user = us.SelectbyMobilePwd(user);//根据手机号和密码查询用户
			if(user != null) {//如果查询有返回用户，表示登录成功，创建用户身份信息并返回，如果不存在，则返回null
				//认证信息里存放账号密码, 
				SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user.getUserId(),user.getPwd(),user.getName());
				ru.setCacheHash("loginUsers", user.getUserId().toString(), new JSONObject(user).toString());
				return info;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
