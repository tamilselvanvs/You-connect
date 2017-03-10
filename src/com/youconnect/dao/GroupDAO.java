package com.youconnect.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.youconnect.bean.AccountDesc;
import com.youconnect.bean.DocDetails;
import com.youconnect.bean.Forum;
import com.youconnect.bean.GroupDetails;

public class GroupDAO {
	

	
	private SqlSessionFactory sqlSessionFactory; 
	
	public GroupDAO(){
		sqlSessionFactory = MyBatisConnectionFactory.getSqlSessionFactory();
	}
	
	public GroupDAO(SqlSessionFactory sqlSessionFactory){
		this.sqlSessionFactory = sqlSessionFactory;
				//MyBatisConnectionFactory.getSqlSessionFactory();
	}
	
	public List<GroupDetails> selectByIds(GroupDetails groupDetails){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			List<GroupDetails> list =  session.selectList("Group.getByIds",groupDetails);
			return list;
		} finally {
			session.close();
		}
	}
	public List<DocDetails> selectDocByIds(GroupDetails groupDetails){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			List<DocDetails> list =  session.selectList("Group.getDocByIds",groupDetails);
			return list;
		} finally {
			session.close();
		}
	}
	public List<GroupDetails> selectById(GroupDetails groupDetails){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			List<GroupDetails> list =  session.selectList("Group.getById",groupDetails);
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
	
	public int insertGroupDetails(GroupDetails group){

		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.insert("Group.insertGroup",group) ;
			session.commit();
			
		} finally {
			session.close();
		}
		return group.getId();
	}
	
	public void insertGroupDescDetails(GroupDetails group){

		SqlSession session = sqlSessionFactory.openSession();
		String parti = group.getParticipants();
		String[] partis = parti.split(",");
		try {
			for(String prt:partis){
				group.setParticipants(prt);
				session.insert("Group.insertDescGroup",group) ;
			}
			session.commit();
			
		} finally {
			session.close();
		}
		
	}
	
	public void insertDocDescDetails(GroupDetails group){

		SqlSession session = sqlSessionFactory.openSession();
		String parti = group.getParticipants();
		String[] partis = parti.split(",");
		try {
			for(String prt:partis){
				prt=prt.replace("[", "");
				prt=prt.replace("]", "");
				group.setParticipants(prt);
				session.insert("Group.insertDocGroup",group) ;
			}
			session.commit();
			
		} finally {
			session.close();
		}
		
	}
	
	public void insertGroupDescDetail(GroupDetails group){

		SqlSession session = sqlSessionFactory.openSession();

		try {
			
				session.insert("Group.insertDescGroup",group) ;
			
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
