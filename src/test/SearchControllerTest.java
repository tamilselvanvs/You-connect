package test;

import java.io.File;
import java.io.FileReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.bean.Member;
import com.youconnect.controller.SearchController;
import com.youconnect.controller.SignUpController;
import com.youconnect.dao.MemberDAO;

@Controller

public class SearchControllerTest {
	
	
	static SearchController sign;
	static SqlSessionFactory sqlSessionFactory;
	
	
	@BeforeClass
	 public static void setUp() throws Exception {
		String resource = "C:\\Users\\prass\\workspace\\YouConnect-SocialNetworking\\src\\test\\SqlMapConfig.xml";
		 File file = new File(resource);
		    System.out.println(file.exists());
		   Reader reader = new FileReader(resource);
	 // Reader reader = Resources.getResourceAsReader(file);  
	  sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
	  sign = new SearchController();
	 }
	
	
	@Test
	   public void testSearchControllerTest() {
		
    Member member = new Member();
    HttpServletRequest request = new MockHttpServletRequest();
    HttpSession ses = new MockHttpSession();
    member.setEmailId("ajagtap2@uncc.edu");
    member.setMemberDOB("12/12/2017");
    member.setMemberLastName("J");
    member.setmemberFirstName("Apoorva");
    member.setMemberGender("female");
    member.setMemberPhoneNumber("8768767867");
    member.setPassWord("12321313123");
    member.setPassWord2("77");
    member.setSearchString("prasanna");
    MemberDAO md = new MemberDAO(sqlSessionFactory);
    List<Member> list =md.selectList(member);
   // ModelAndView mav= sign.getSearch(request, member, ses);
    
   Assert.assertEquals("", list.size());
    
   // Assert.assertEquals("Duplicate Account Detail", mav.getModel().get("displayContent"));
}}
