package com.youconnect.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.youconnect.bean.AccountDesc;
import com.youconnect.bean.Forum;

public class ForumDAO {
	

	
	private SqlSessionFactory sqlSessionFactory; 
	
	public ForumDAO(){
		sqlSessionFactory = MyBatisConnectionFactory.getSqlSessionFactory();
	}
	
	public ForumDAO(SqlSessionFactory sqlSessionFactory){
		this.sqlSessionFactory = sqlSessionFactory;
				//MyBatisConnectionFactory.getSqlSessionFactory();
	}
	
	public List<Forum> selectByIds(Forum form){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			List<Forum> list =  session.selectList("Forum.getByIds",form);
			return list;
		} finally {
			session.close();
		}
	}
	
	public List<Forum> selectAll(Forum form){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			List<Forum> list =  session.selectList("Forum.getALL",form);
			return list;
		} finally {
			session.close();
		}
	}
	@SuppressWarnings("unchecked")
	public List<AccountDesc> selectFriendsByIds(AccountDesc acctDesc){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			List<AccountDesc> acctDescLst =  session.selectList("AccountDesc.getFriendsById",acctDesc);
			return acctDescLst;
		} finally {
			session.close();
		}
	}
	
	public void insertForumDesc(Forum forum){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.insert("Forum.insertForm",forum) ;
			session.commit();
			
		} finally {
			session.close();
		}
	}
	
	public void insertForumDescs(Forum forum){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.insert("Forum.insertFormDesc",forum) ;
			session.commit();
			
		} finally {
			session.close();
		}
	}
	
	public void updateAccoutDesc(AccountDesc acctDesc){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("AccountDescs.update",acctDesc) ;
			session.commit();
			
		} finally {
			session.close();
		}
	}
	
	public void delete(AccountDesc acctDesc){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.delete("AccountDescs.deleteById", acctDesc);
			session.commit();
		} finally {
			session.close();
		}
	}



}
