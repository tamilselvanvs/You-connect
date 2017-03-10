package com.youconnect.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.bean.Member;
import com.youconnect.dao.MemberDAO;

@Controller

public class SearchController {
	
	@RequestMapping(value="/results.html", method = RequestMethod.GET)
	public ModelAndView getSearch(HttpServletRequest request, Member member, HttpSession ses) {
		StringBuffer sb= new StringBuffer();
		MemberDAO md = new MemberDAO();
		member.setSearchString(request.getParameter("searchstring"));
		member.setEmailId((String)ses.getAttribute("emailId"));
		
		List<Member> al =md.selectList(member);
		/*int count=1;
		sb.append("<table>");
		for(Member m: al){
			
			sb.append("<tr>");
				sb.append("<td>"+ Integer.toString(count)+"</td>");
				
				sb.append("<td> ") ;
				sb.append("<a href="+"/YouConnect-SocialNetworking/viewProfile?emailId="+m.getEmailId()+">");
				sb.append(m.getMemberLastName()+", "+m.getmemberFirstName());	
				sb.append("</a>");
				sb.append(("</td>"));
				sb.append("<td> EmailId : "+m.getEmailId() +"</td>");
			sb.append("</tr>");
			
			count++;
		}
		count--;
		
		sb.append("</table>");*/
		ModelAndView model = new ModelAndView("SearchResult");
		model.addObject("al",al);
		return model;
	}

}
