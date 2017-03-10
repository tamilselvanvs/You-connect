package com.youconnect.bean;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class Member {

	private String memberFirstName;
	private String memberLastName;
	private String passWord;
	private Date   memberDOB;
	private String memberGender;
	private String memberPhoneNumber;
	private String profileId;
	private String emailId;
	private String searchIdClob;
	private String searchString;
	private String passWord2;
	private String picfilepath;
	
	public String getPassWord2() {
		return passWord2;
	}
	public void setPassWord2(String passWord2) {
		this.passWord2 = passWord2;
	}
	public String getSearchString() {
		return searchString;
	}
	public void setSearchString(String searchString) {
		this.searchString = "%"+searchString+"%";;
	}
	public String getmemberFirstName() {
		return memberFirstName;
	}
	public void setmemberFirstName(String memberFirstName) {
		this.memberFirstName = memberFirstName;
	}
	public String getMemberLastName() {
		return memberLastName;
	}
	public void setMemberLastName(String memberLastName) {
		this.memberLastName = memberLastName;
	}
	public Date getMemberDOB() {
		return memberDOB;
	}
	public void setMemberDOB(String memberDOB) {
		Date date =null;
		if(memberDOB!= null && !memberDOB.isEmpty()){
			
			
				
			try {

				SimpleDateFormat sd = new SimpleDateFormat("dd/MM/yy");
				//SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:MM:SS");	
				 date = sd.parse( memberDOB );

			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		
		this.memberDOB = date;
	}
	public String getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	public String getMemberPhoneNumber() {
		return memberPhoneNumber;
	}
	public void setMemberPhoneNumber(String memberPhoneNumber) {
		this.memberPhoneNumber = memberPhoneNumber;
	}
	public String getProfileId() {
		return profileId;
	}
	public void setProfileId(String profileId) {
		this.profileId = profileId;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getSearchIdClob() {
		return searchIdClob;
	}
	public void setSearchIdClob(String searchClob) {
		
		this.searchIdClob = searchClob;
	}
	public String getPicfilepath() {
		return picfilepath;
	}
	public void setPicfilepath(String picfilepath) {
		this.picfilepath = picfilepath;
	}

	

}
