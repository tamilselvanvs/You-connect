package com.youconnect.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.bean.DocDetails;
import com.youconnect.bean.GroupDetails;
import com.youconnect.bean.Member;
import com.youconnect.dao.GroupDAO;
import com.youconnect.dao.MemberDAO;

@Controller
public class UploadDocumentController {
	

	
	@RequestMapping(value="/uploadDocument.html", method = RequestMethod.GET)
	public ModelAndView getGroupUploadPage() {

		ModelAndView model = new ModelAndView("UploadDocument");

		return model;
	}
	
	@RequestMapping(value="/doUpload.html", method = RequestMethod.POST)
	public ModelAndView uploadSelectedFile(HttpServletRequest request,
            @RequestParam("file") final MultipartFile file, HttpSession ses) {
		
		// Root Directory.
       // String uploadRootPath = request.getServletContext().getRealPath("upload");
		String uploadRootPath="/YouConnect-SocialNetworking/WebContent/resources/upload";
        String close = (String)request.getAttribute("close");
        System.out.println("uploadRootPath=" + uploadRootPath);
        ModelAndView model;
        Member member = new Member();
        member.setEmailId((String)ses.getAttribute("emailId"));
        File uploadRootDir = new File(uploadRootPath+"/"+member.getEmailId());
        //
        // Create directory if it not exists.
        if (!uploadRootDir.exists()) {
            uploadRootDir.mkdirs();
        }
        //
        //List<File> uploadedFiles = new ArrayList<File>();
        //for (int i = 0; i < files.length; i++) {
            //MultipartFile file = files[i];
        	File serverFile = null;
            // Client File Name
            String name = file.getOriginalFilename();
            System.out.println("Client File Name = " + name);
 
            if (name != null && name.length() > 0) {
                try {
                    byte[] bytes = file.getBytes();
 
                    // Create the file on server
                    serverFile = new File(uploadRootDir.getAbsolutePath()
                            + File.separator + "profilePic.jpg");
                    member.setPicfilepath(String.valueOf(serverFile));
                    // Stream to write data to file in server.
                    BufferedOutputStream stream = new BufferedOutputStream(
                            new FileOutputStream(serverFile));
                    stream.write(bytes);
                    stream.close();
                    MemberDAO md = new MemberDAO();
        			md.updatePic(member);
                    System.out.println("Write file: " + serverFile);
                } catch (Exception e) {
                    System.out.println("Error Write file: " + name);
                }
            }
           if("jusClose".equalsIgnoreCase(close)){
        	   model= new ModelAndView("HomePage");
           }
           else{
        	   model= new ModelAndView("SuccessMessage");
           }
		//model.addObject("serverFile", serverFile);

		return model;
	}
	
	
	@RequestMapping(value="/upload2Grp", method = RequestMethod.POST)
	public ModelAndView uploadGrpSelectedFile(@ModelAttribute("groupDetails") GroupDetails groupDetails,HttpServletRequest request,
            @RequestParam("file") final MultipartFile file, HttpSession ses) {
		
		// Root Directory.
       // String uploadRootPath = request.getServletContext().getRealPath("upload");
		String uploadRootPath="/YouConnect-SocialNetworking/WebContent/resources/upload";
        String close = (String)request.getAttribute("close");
        String title = null;
		String groupId =null;
		String owner = null;
		String groupType=null;
        System.out.println("uploadRootPath=" + uploadRootPath);
        ModelAndView model;
        Member member = new Member();
        GroupDAO grp = new GroupDAO();
        member.setEmailId((String)ses.getAttribute("emailId"));
        File uploadRootDir = new File(uploadRootPath+"/"+member.getEmailId());
        //
        // Create directory if it not exists.
        if (!uploadRootDir.exists()) {
            uploadRootDir.mkdirs();
        }
        //
        //List<File> uploadedFiles = new ArrayList<File>();
        //for (int i = 0; i < files.length; i++) {
            //MultipartFile file = files[i];
        	File serverFile = null;
            // Client File Name
            String name = file.getOriginalFilename();
            System.out.println("Client File Name = " + name);
 
            if (name != null && name.length() > 0 && !request.getParameter("fileName").isEmpty() ) {
                try {
                    byte[] bytes = file.getBytes();
 
                    // Create the file on server
                    serverFile = new File(uploadRootDir.getAbsolutePath()
                            + File.separator + request.getParameter("fileName"));
                   
                    // Stream to write data to file in server.
                    BufferedOutputStream stream = new BufferedOutputStream(
                            new FileOutputStream(serverFile));
                    stream.write(bytes);
                    stream.close();
                    
                    groupDetails.setContentURL(String.valueOf(serverFile)+".txt");
                    groupDetails.setContent(request.getParameter("fileName"));
                    groupDetails.setParticipants((String)ses.getAttribute("emailId"));
                    grp.insertGroupDescDetail(groupDetails);
                    groupDetails.setParticipants((String)ses.getAttribute("friendsIdDoc"));
                    grp.insertDocDescDetails(groupDetails);
                    System.out.println("Write file: " + serverFile);
                } catch (Exception e) {
                    System.out.println("Error Write file: " + name);
                }
            }
            else{
            	model=new ModelAndView("GroupUpload");
            	model.addObject("displayContent", "name and file are mandatory!");
            	return model;
            }
           if("jusClose".equalsIgnoreCase(close)){
        	   MemberDAO md = new MemberDAO();
       		List<GroupDetails> al=grp.selectById(groupDetails);
       		HashSet<String> mem = new HashSet<String>();
       		if(al!=null && al.size()>0){
       			title= al.get(0).getTitle();
       			groupId= al.get(0).getGroupId();
       			groupType = al.get(0).getGroupType();
       			owner = md.selectById(groupDetails.getGroupOwner()).getmemberFirstName();
       		}
       		for(GroupDetails gd: al){
       			mem.add(gd.getParticipants());
       		}
       		 model = new ModelAndView("GroupContent");
       		model.addObject("al", al);
       		model.addObject("mem", mem);
       		model.addObject("title", title);
       		model.addObject("groupId", groupId);
       		model.addObject("owner", owner);
       		model.addObject("groupType", groupType);
       		model.addObject("ownerId",groupDetails.getGroupOwner());
       		
       		return model;
           }
           else{
        	   model= new ModelAndView("SuccessMessage");
           }
		//model.addObject("serverFile", serverFile);

		return model;
	}
	
	@RequestMapping(value="/docView", method = RequestMethod.GET)
	public ModelAndView getDocView(@ModelAttribute("groupDetails") GroupDetails groupDetails,HttpServletRequest request, HttpSession ses) {
		
		GroupDAO gd = new GroupDAO();
		groupDetails.setGroupOwner((String)ses.getAttribute("emailId"));
		List<DocDetails> dd=gd.selectDocByIds(groupDetails);

		ModelAndView model = new ModelAndView("DocumentView");
		model.addObject("dd", dd);

		return model;
	}
	
	

}
