package com.youconnect.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.youconnect.bean.AccountDesc;

public class GroupDescDAO {
	
private SqlSessionFactory sqlSessionFactory; 
	
	public GroupDescDAO(){
		sqlSessionFactory = MyBatisConnectionFactory.getSqlSessionFactory();
	}
	
//	public GroupDesc selectByIds(GroupDesc acctDesc){
//
//		SqlSession session = sqlSessionFactory.openSession();
//		
//		try {
//			acctDesc = (AccountDesc) session.selectOne("AccountDesc.getByIds",acctDesc);
//			return acctDesc;
//		} finally {
//			session.close();
//		}
//	}

}
