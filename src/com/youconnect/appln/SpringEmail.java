package com.youconnect.appln;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringEmail {

	public static void main(String[] args) {
		ConfigurableApplicationContext applicationContext = new ClassPathXmlApplicationContext(
				"applicationContext.xml");
		SpringMailSender springMail = (SpringMailSender) applicationContext
				.getBean("springMailSender");
		springMail.sendMail("Joe", "Javapapers");
		applicationContext.close();
	}

}
