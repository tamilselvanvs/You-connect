package com.youconnect.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.bean.Member;
import com.youconnect.dao.MemberDAO;

@Controller
public class AdminController {

	@RequestMapping(value="/viewMembers.html", method = RequestMethod.GET)
	public ModelAndView getMembersPage(HttpServletRequest request) {
		
		StringBuffer sb= new StringBuffer();
		MemberDAO mem = new MemberDAO();
		List<Member> members= mem.selectAll();
		int count = 1;
		sb.append("<center><h2>List of members</h2></center>");
		sb.append("<table>");
		for(Member m: members){
			sb.append("<tr>");
				sb.append("<td>"+ Integer.toString(count)+"</td>");
				
				sb.append("<td> ") ;
				sb.append("<a href="+"/YouConnect-SocialNetworking/viewProfile?emailId="+m.getEmailId()+">");
				sb.append(m.getmemberFirstName()+", "+m.getMemberLastName());	
				sb.append("</a>");
				sb.append(("</td>"));
			sb.append("</tr>");
			count++;
			
		}
		sb.append("</table>");
		
		ModelAndView model = new ModelAndView("ViewMembers");
		model.addObject("displayContent", sb.toString());
		
		return model;
	}
}
