package com.youconnect.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.youconnect.bean.Account;
import com.youconnect.bean.Member;

public class AccountDAO {
	

	
	private SqlSessionFactory sqlSessionFactory; 
	
	public AccountDAO(){
		sqlSessionFactory = MyBatisConnectionFactory.getSqlSessionFactory();
	}
	

	/**
	 * Returns the list of all Contact instances from the database.
	 * @return the list of all Contact instances from the database.
	 */
	@SuppressWarnings("unchecked")
	public Account selectLogin(Account acct){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			acct = (Account)session.selectOne("Accounts.getAll",acct);
			return acct;
		} finally {
			session.close();
		}
	}


	public Account updatePassword(Account acct) {
		
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			acct = (Account)session.selectOne("Accounts.update",acct);
			return acct;
		} finally {
			session.close();
		}
		
	}

	
}
