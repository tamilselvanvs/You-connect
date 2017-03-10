package com.youconnect.controller;

import java.util.HashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.bean.AccountDesc;
import com.youconnect.bean.GroupDetails;
import com.youconnect.dao.AccountDescDAO;
import com.youconnect.dao.GroupDAO;
import com.youconnect.dao.MemberDAO;

@Controller
public class GroupController {
	
	@RequestMapping(value="/groupView.html", method = RequestMethod.GET)
	public ModelAndView getGroupPage(@ModelAttribute("acctDesc") AccountDesc acctDesc, HttpSession ses) {
		
		GroupDetails groupDetails = new GroupDetails();
		acctDesc.setEmailId((String)ses.getAttribute("emailId"));
		groupDetails.setGroupOwner((String)ses.getAttribute("emailId"));
		AccountDescDAO ad = new AccountDescDAO();
		List<AccountDesc> al= ad.selectOnlyFriendsByIds(acctDesc);
		
		
		GroupDAO gd = new GroupDAO();
		List<GroupDetails> gl = gd.selectByIds(groupDetails);
		ModelAndView model = new ModelAndView("TempGroupView");
		model.addObject("al", al);
		model.addObject("gl", gl);

		return model;
	}
	
	@RequestMapping(value="/createGroup", method = RequestMethod.POST)
	public ModelAndView createGroup(@ModelAttribute("groupDetails") GroupDetails groupDetails, HttpSession ses) {
		
		groupDetails.setGroupOwner((String)ses.getAttribute("emailId"));
		ses.setAttribute("friendsIdDoc", groupDetails.getParticipants());
		GroupDAO ad = new GroupDAO();
		int id =ad.insertGroupDetails(groupDetails);
		groupDetails.setGroupId(String.valueOf(id));
		ad.insertGroupDescDetails(groupDetails);
		
		//ModelAndView model = new ModelAndView("TempGroupView");
		return new ModelAndView("redirect:" + "/groupView.html");
	}
	
	
	@RequestMapping(value="/viewGroup", method = RequestMethod.GET)
	public ModelAndView getViewGroupsPage(HttpSession ses, HttpServletRequest req,GroupDetails groupDetails) {
		String title = null;
		String groupId =null;
		String owner = null;
		String groupType=null;
		HashSet<String> mem = new HashSet<String>();
		groupDetails.setGroupId(((req.getParameter("groupId"))));
		groupDetails.setGroupOwner((req.getParameter("ownerEmailId")));
		GroupDAO grp = new GroupDAO();
		MemberDAO member = new MemberDAO();
		List<GroupDetails> al=grp.selectById(groupDetails);
		if(al!=null && al.size()>0){
			title= al.get(0).getTitle();
			groupId= al.get(0).getGroupId();
			groupType = al.get(0).getGroupType();
			owner = member.selectById(groupDetails.getGroupOwner()).getmemberFirstName();
		}
		for(GroupDetails gd: al){
			mem.add(gd.getParticipants());
		}
		ses.setAttribute("friendsIdDoc", mem.toString());
		ModelAndView model = new ModelAndView("GroupContent");
		model.addObject("al", al);
		model.addObject("title", title);
		model.addObject("mem", mem);
		model.addObject("groupId", groupId);
		model.addObject("owner", owner);
		model.addObject("groupType", groupType);
		model.addObject("ownerId",groupDetails.getGroupOwner());
		
		return model;
	}
	
	
	
	@RequestMapping(value="/postContent", method = RequestMethod.POST)
	public ModelAndView getPostContent(@ModelAttribute("groupDetails") GroupDetails groupDetails,HttpSession ses, HttpServletRequest req) {
		String title = null;
		String groupId =null;
		String owner = null;
		String groupType=null;
		
		GroupDAO grp = new GroupDAO();
		groupDetails.setParticipants((String)ses.getAttribute("emailId"));
		grp.insertGroupDescDetail(groupDetails);
		
		MemberDAO member = new MemberDAO();
		List<GroupDetails> al=grp.selectById(groupDetails);
		HashSet<String> mem = new HashSet<String>();
		if(al!=null && al.size()>0){
			title= al.get(0).getTitle();
			groupId= al.get(0).getGroupId();
			groupType = al.get(0).getGroupType();
			owner = member.selectById(groupDetails.getGroupOwner()).getmemberFirstName();
		}
		for(GroupDetails gd: al){
			mem.add(gd.getParticipants());
		}
		ses.setAttribute("friendsIdDoc", mem.toString());
		ModelAndView model = new ModelAndView("GroupContent");
		model.addObject("al", al);
		model.addObject("mem", mem);
		model.addObject("title", title);
		model.addObject("groupId", groupId);
		model.addObject("owner", owner);
		model.addObject("groupType", groupType);
		model.addObject("ownerId",groupDetails.getGroupOwner());
		
		return model;
		
		
	}
	
	
	@RequestMapping(value="/updateMembers", method = RequestMethod.GET)
	public ModelAndView getupdateMembers(HttpSession ses, HttpServletRequest req,GroupDetails groupDetails) {
		String title = null;
		String groupId =null;
		String owner = null;
		String groupType=null;
		HashSet<String> mem = new HashSet<String>();
		groupDetails.setGroupId((req.getParameter("groupId")));
		groupDetails.setGroupOwner((req.getParameter("groupOwner")));
		groupDetails.setTitle((req.getParameter("title")));
		groupDetails.setGroupType((req.getParameter("groupType")));
		GroupDAO grp = new GroupDAO();
		MemberDAO member = new MemberDAO();
		List<GroupDetails> al=grp.selectById(groupDetails);
		if(al!=null && al.size()>0){
			title= al.get(0).getTitle();
			groupId= al.get(0).getGroupId();
			groupType = al.get(0).getGroupType();
			owner = member.selectById(groupDetails.getGroupOwner()).getmemberFirstName();
		}
		for(GroupDetails gd: al){
			mem.add(gd.getParticipants());
		}
		ses.setAttribute("friendsIdDoc", mem.toString());
		ModelAndView model = new ModelAndView("GroupContent");
		model.addObject("al", al);
		model.addObject("title", title);
		model.addObject("mem", mem);
		model.addObject("groupId", groupId);
		model.addObject("owner", owner);
		model.addObject("groupType", groupType);
		model.addObject("ownerId",groupDetails.getGroupOwner());
		
		return model;
	}

	
	
	@RequestMapping(value="/uploadGrp", method = RequestMethod.GET)
	
	public ModelAndView doChangePic(HttpSession ses, HttpServletRequest req){
		
		
		ModelAndView model = new ModelAndView("GroupUpload");
		model.addObject("groupId", req.getParameter("groupId"));
		model.addObject("groupOwner", req.getParameter("groupOwner"));
		model.addObject("groupType", req.getParameter("groupType"));
		model.addObject("title", req.getParameter("title"));
		return model;
		
		
	}
}
