package com.project.uniform.controller;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.uniform.dao.MemberIDAO;
import com.project.uniform.dto.SMTPAuthenticator;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ServiceController {

	private static final Logger logger = LoggerFactory.getLogger(ServiceController.class);

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/ServiceMain")
	public String serviceMain(HttpServletRequest request, Model model) {

		return "Main.jsp?center=service/ServiceMain";
	}

	@RequestMapping("/Service")
	public String service(HttpServletRequest request, Model model) {

		return "Main.jsp?center=service/ServiceMain.jsp?service=Service";
	}

	@RequestMapping("/Notice")
	public String notice(HttpServletRequest request, Model model) {

		return "Main.jsp?center=service/ServiceMain.jsp?service=Notice";
	}

	@RequestMapping("/Mail")
	public String mail(HttpServletRequest request, Model model) {
		
		return "Main.jsp?center=service/ServiceMain.jsp?service=Mail";
	}

	@RequestMapping("/Faq")
	public String faq(HttpServletRequest request, Model model) {

		return "Main.jsp?center=service/ServiceMain.jsp?service=Faq";
	}

	@RequestMapping("/SendMail")
	public String sendMail(HttpServletRequest request, Model model) {
		String from = request.getParameter("from");
		String to = "leejw2561@gmail.com";
		String subject = request.getParameter("subject");
		String content = "보낸사람: " + from + "<br/>" + request.getParameter("content");

		Properties p = new Properties(); // 정보를 담을 객체

		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", "587");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");

		int res = 0;

		try {
			Authenticator auth = new SMTPAuthenticator();
			Session ses = Session.getInstance(p, auth);
			ses.setDebug(true);
			MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체
			msg.setSubject(subject); // 제목
			Address fromAddr = new InternetAddress(from);
			msg.setFrom(fromAddr); // 보내는 사람
			Address toAddr = new InternetAddress(to);
			msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람
			msg.setContent(content, "text/html;charset=UTF-8"); // 내용과 인코딩
			Transport.send(msg); // 전송
			
			res = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("res", res);
		return "service/SendMail";
	}
}
