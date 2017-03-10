package test;

import java.io.File;
import java.io.FileReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.youconnect.appln.SendingEmail;
import com.youconnect.bean.AccountDesc;
import com.youconnect.bean.Forum;
import com.youconnect.bean.Member;
import com.youconnect.controller.ForumController;
import com.youconnect.controller.ProfileController;
import com.youconnect.dao.AccountDescDAO;
import com.youconnect.dao.ForumDAO;
import com.youconnect.dao.MemberDAO;



public class ForumControllerTest {
	
	static ForumController sign;
	static SqlSessionFactory sqlSessionFactory;
	
	@BeforeClass
	 public static void setUp() throws Exception {
		String resource = "C:\\Users\\prass\\workspace\\YouConnect-SocialNetworking\\src\\test\\SqlMapConfig.xml";
		 File file = new File(resource);
		    System.out.println(file.exists());
		   Reader reader = new FileReader(resource);
	 // Reader reader = Resources.getResourceAsReader(file);  
	  sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
	  sign = new ForumController();
	 }
	

	@Test
	public void testForumControllerTestgetProfile() {
		
		Forum f = new Forum();
		f.setForumId(1);
		ForumDAO fd = new ForumDAO(sqlSessionFactory);
		
		Assert.assertNotNull(fd.selectByIds(f));
		
	}

}
