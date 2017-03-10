package test;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.bean.Member;
import com.youconnect.controller.SignUpController;



public class AccountDAOTest {
	
	


	@Test
	   public void testSignUpController() {
	       SignUpController sign= new SignUpController();
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
	       ModelAndView mav= sign.validateAdmissionForm(member, ses);
	       
	      Assert.assertEquals("Passwords doesn't match!", mav.getModel().get("displayContent"));
	       
	      // Assert.assertEquals("Duplicate Account Detail", mav.getModel().get("displayContent"));
	   }
	
	
/*	@Test
	public void test() {
		loginDao=new LoginDAO();
		Login login=new Login();
		login.setEmailid("triveni@uncc.edu");
		login.setPassword("triv@123");
		login=loginDao.selectLogin(login);
		if((login!=null))
		{
			Assert.assertTrue(true);
		}
		//fail("Not yet implemented");
	}*/


}
