package com.creatorbluer.cbmv.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creatorbluer.cbmv.domain.Cust;
import com.creatorbluer.cbmv.mapper.CustMapper;

@Service
public class CustService {
	@Autowired
	CustMapper custMapper;
	
	/**
	 * 登录
	 * @param c
	 * @return
	 * @throws SQLException
	 */

	public Cust selectCust(Cust c)throws SQLException{
		Cust cc = custMapper.login(c);
		return cc;
	}
	/**
	 * 修改
	 * @param c
	 * @return
	 * @throws SQLException
	 */
	public int update(Cust c)throws SQLException{
		
		return custMapper.updateCust(c);
	}
	
	
	/**
	 * 修改密码
	 * @param c
	 * @return
	 * @throws SQLException
	 */
	public int updates(Cust c)throws SQLException{
		
		return custMapper.updateCusts(c);
	}
	
	
	
	
	


	/**
	 * 客户端注册
	 * @param c
	 * @return
	 * @throws SQLException
	 */
	public int insertByCust(Cust c)throws SQLException{
		return custMapper.insertByCust(c);
	}
	
	/**
	 * 根据手机号查询
	 * @param mobile
	 * @return
	 * @throws SQLException
	 */
	public int selectByMobile(String mobile) throws SQLException{
		return custMapper.selectByMobile(mobile);
	}
	
	
	/**
	 * 查询
	 * @param c
	 * @return
	 * @throws SQLException
	 */
	public Cust query(int custid) {
		return custMapper.userquery(custid);

	}
	
	/**
	 * 修改时查询修改的手机号是否重复
	 * @param c
	 * @return
	 */
	public int selectMobileChongfu(Cust c) {
		return custMapper.selectMobileChongfu(c);
		
	}
	
	/**
	 * 后台查询
	 * @param c
	 * @return
	 * @throws SQLException
	 */
	public List<Cust> selectByCust(Cust c)throws SQLException{
		List<Cust> list = custMapper.selectByCust(c);
		return list;
	}
	
	
	/**
	 * 查询注册人数
	 * @param c
	 * @return
	 * @throws SQLException
	 */
	public Integer selectCustNum(Cust c)throws SQLException{
		return custMapper.selectCustNum(c);
	}
}
