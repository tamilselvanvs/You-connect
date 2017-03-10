package com.youconnect.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.youconnect.bean.Admin;


public class AdminDAO {
	
private SqlSessionFactory sqlSessionFactory; 
	
	public AdminDAO(){
		sqlSessionFactory = MyBatisConnectionFactory.getSqlSessionFactory();
	}

	@SuppressWarnings("unchecked")
	public List<Admin> selectMatchingEmail(String loginId) {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			List<Admin> adminList = session.selectList("Admin.getMatchingEmail", loginId);
			return adminList;
		} finally {
			session.close();
		}
	}
	

}
