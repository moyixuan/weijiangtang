package com.creatorbluer.cbmv.mapper;

import java.util.List;

import com.creatorbluer.cbmv.domain.Cust;

public interface CustMapper {
	/**
	 * 登录
	 * @return
	 */
	Cust login(Cust c); 

	/**
	 * 客户修改
	 * @return
	 */
	int updateCust(Cust c);
	
	
	
	/**
	 * 密码修改
	 * @return
	 */
	int updateCusts(Cust c);
	
	
	
	
	
	/**
	 * 客户端注册
	 * @param c
	 * @return
	 */
	int insertByCust(Cust c);
	
	/**
	 * 根据手机号查询
	 * @param mobile
	 * @return
	 */
	int selectByMobile(String mobile);
	/**
	 * 查询
	 * @param mobile
	 * @return
	 */
	Cust userquery(int custid); 
	
	/**
	 * 修改时查询修改的手机号是否重复
	 * @param c
	 * @return
	 */
	int selectMobileChongfu(Cust c);
	
	/**
	 * 后台查询
	 * @return
	 */
	List<Cust> selectByCust(Cust c); 
	
	/**
	 * 查询注册人数
	 * @param c
	 * @return
	 */
	Integer selectCustNum(Cust c);
}
