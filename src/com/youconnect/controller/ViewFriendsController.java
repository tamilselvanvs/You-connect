package com.youconnect.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.bean.Account;
import com.youconnect.bean.AccountDesc;
import com.youconnect.bean.Member;
import com.youconnect.dao.AccountDAO;
import com.youconnect.dao.AccountDescDAO;
import com.youconnect.dao.MemberDAO;


@Controller
public class ViewFriendsController {
	

	@RequestMapping(value="/viewFriends", method = RequestMethod.GET)
	public ModelAndView submitAdmissionForm(@ModelAttribute("acctDesc") AccountDesc acctDesc, HttpSession ses) {
		acctDesc.setEmailId((String)ses.getAttribute("emailId"));
		StringBuffer sb= new StringBuffer();
		AccountDescDAO ad = new AccountDescDAO();
		List<AccountDesc> al= ad.selectFriendsByIds(acctDesc);
/*		int count=0;
		sb.append("<center><h2>FriendsList</h2></center>");
		sb.append("<table>");
		for(AccountDesc m: acctdesclst){
			if(m.getSelfFlag()==1 && m.getFriendsFlag()==1){
				count++;
			sb.append("<tr>");
				sb.append("<td>"+ Integer.toString(count)+"</td>");
				
				sb.append("<td> ") ;
				sb.append("<a href="+"/YouConnect-SocialNetworking/viewProfile?emailId="+m.getFriendId()+">");
				sb.append(m.getLastName()+", "+m.getFirstName());	
				sb.append("</a>");
				sb.append(("</td>"));
			sb.append("</tr>");
			
			
		}
		}
		if(count<=0){
			sb.append("<tr> No Friends to list at this time. </tr>");
		}
		sb.append("</table>");
		
		 count=0;
		sb.append("<center><h2>Request Pending</h2></center>");
		sb.append("<table>");
		for(AccountDesc m: acctdesclst){
			if(m.getSelfFlag()==1 && m.getFriendsFlag()==0){
				count++;
			sb.append("<tr>");
				sb.append("<td>"+ Integer.toString(count)+"</td>");
				
				sb.append("<td> ") ;
				sb.append("<a href="+"/YouConnect-SocialNetworking/viewProfile?emailId="+m.getFriendId()+">");
				sb.append(m.getLastName()+", "+m.getFirstName());	
				sb.append("</a>");
				sb.append(("</td>"));
			sb.append("</tr>");
			
			
		}
		}
		if(count<=0){
			sb.append("<tr> No Request pending at this time. </tr>");
		}
		sb.append("</table>");
		
		count=0;
		sb.append("<center><h2>Awaiting Response</h2></center>");
		sb.append("<table>");
		for(AccountDesc m: acctdesclst){
			if(m.getSelfFlag()==0 && m.getFriendsFlag()==1){
				count++;
			sb.append("<tr>");
				sb.append("<td>"+ Integer.toString(count)+"</td>");
				
				sb.append("<td> ") ;
				sb.append("<a href="+"/YouConnect-SocialNetworking/viewProfile?emailId="+m.getFriendId()+">");
				sb.append(m.getLastName()+", "+m.getFirstName());	
				sb.append("</a>");
				sb.append(("</td>"));
			sb.append("</tr>");
			
		}
			
		}
		if(count<=0){
			sb.append("<tr> No Friends who are awaiting your response at this time. </tr>");
		}
		sb.append("</table>");*/
		//md.insert(member);
		ModelAndView model = new ModelAndView("ViewFriends");
		model.addObject("al", al);
		
		return model;
	}
	
}

