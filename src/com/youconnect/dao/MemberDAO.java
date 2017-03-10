package com.youconnect.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.youconnect.bean.Account;
import com.youconnect.bean.Member;

/**
 * Member DAO
 * 
 * @author Prasanna Kumar Rajendran
 */
public class MemberDAO {
	
	private SqlSessionFactory sqlSessionFactory; 
	
	public MemberDAO(SqlSessionFactory sqlSessionFactory){
		this.sqlSessionFactory = sqlSessionFactory;
				//MyBatisConnectionFactory.getSqlSessionFactory();
	}
	
	public MemberDAO(){
		this.sqlSessionFactory = MyBatisConnectionFactory.getSqlSessionFactory();
	}
	
	

	/**
	 * Returns the list of all Contact instances from the database.
	 * @return the list of all Contact instances from the database.
	 */
	@SuppressWarnings("unchecked")
	public List<Member> selectAll(){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			List<Member> list = session.selectList("Member.getAll");
			return list;
		} finally {
			session.close();
		}
	}
	
	
	/**
	 * Returns the list of all Contact instances from the database.
	 * @return the list of all Contact instances from the database.
	 */
	@SuppressWarnings("unchecked")
	public List<Member> selectList(Member member){
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			List<Member> list = session.selectList("Member.getSearchResult",member);
			return list;
		} finally {
			session.close();
		}
	}
	
	/**
	 * Returns a Member instance from the database.
	 * @param id primary key value used for lookup.
	 * @return A Member instance with a primary key value equals to pk. null if there is no matching row.
	 */
	public Member selectById(String id){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			Member member = (Member) session.selectOne("Member.getById",id);
			return member;
		} finally {
			session.close();
		}
	}

	public Integer validateLogin(Member member){

		SqlSession session = sqlSessionFactory.openSession();
		int count=0;
		try {
			 count= Integer.parseInt((String) session.selectOne("Member.getLogin",member));
			return count;
		} finally {
			session.close();
		}
	}
	
	
	/**
	 * Updates an instance of Contact in the database.
	 * @param contact the instance to be updated.
	 */
	public void update(Member member){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Member.update", member);
			session.commit();
		} finally {
			session.close();
		}
	}
	
	public void updatePic(Member member){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Member.updatePic", member);
			session.commit();
		} finally {
			session.close();
		}
	}

	/**
	 * Insert an instance of Member into the database.
	 * @param contact the instance to be persisted.
	 */
	public void insert(Member member){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.insert("Member.insert", member);
			session.commit();
		} finally {
			session.close();
		}
	}

	/**
	 * Insert an instance of Account into the database.
	 * @param contact the instance to be persisted.
	 */
	public void insertAccout(Account acct){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.insert("Member.insertaccout", acct);
			session.commit();
		} finally {
			session.close();
		}
	}
	/**
	 * Delete an instance of Contact from the database.
	 * @param id primary key value of the instance to be deleted.
	 */
	public void delete(int id){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.delete("Member.deleteById", id);
			session.commit();
		} finally {
			session.close();
		}
	}
}
