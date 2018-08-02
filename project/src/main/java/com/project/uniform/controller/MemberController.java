package com.project.uniform.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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

import com.project.uniform.common.PageManager;
import com.project.uniform.dao.MemberIDAO;
import com.project.uniform.dao.Save_GoodsIDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/Login")
	public String login(HttpServletRequest request, Model model) {

		return "Main.jsp?center=member/Login";
	}

	@RequestMapping("/MemberJoin")
	public String memberJoin(HttpServletRequest request, Model model) {

		return "Main.jsp?center=member/MemberJoin";
	}

	@RequestMapping("/JoinProc")
	public String joinProc(HttpServletRequest request, Model model) {
		MemberIDAO dao = sqlSession.getMapper(MemberIDAO.class);

		String name = request.getParameter("name");
		String member_Id = request.getParameter("id");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String year = request.getParameter("year") + "년 ";
		String month = request.getParameter("month") + "월 ";
		String day = request.getParameter("day") + "일";

		if (email2 == null) {
			email2 = request.getParameter("email");
		}

		String email = email1 + "@" + email2;

		int res = 0;

		if (year.equals("year") || month.equals("month") || day.equals("day")) {
			res = 3;
			model.addAttribute("res", res);
			return "Main.jsp?center=member/JoinProc";
		}

		String birth = year + month + day;

		String member_Pass = "";

		if (password1.equals(password2)) {
			member_Pass = password1;
		} else {
			res = 2;
			model.addAttribute("res", res);
			return "Main.jsp?center=member/JoinProc";
		}

		if ((member_Id != null && !member_Id.equals("")) && (member_Pass != null && !member_Pass.equals(""))
				&& (email != null && !email.equals("")) && (tel != null && !tel.equals(""))
				&& (address != null && !address.equals("")) && (birth != null && !birth.equals(""))
				&& (name != null && !name.equals(""))) {

			int num = dao.idOk(member_Id);
			if (num == 0) {
				dao.insert(member_Id, member_Pass, name, email, tel, address, birth);
				res = 1;
			} else {
				res = 4;
			}
		}

		model.addAttribute("res", res);

		return "Main.jsp?center=member/JoinProc";
	}

	@RequestMapping("/LoginProc")
	public String loginProc(HttpServletRequest request, Model model) {
		MemberIDAO dao = sqlSession.getMapper(MemberIDAO.class);

		String member_Id = request.getParameter("id");
		String member_Pass = request.getParameter("pass");

		int res = dao.login(member_Id, member_Pass);

		model.addAttribute("res", res);
		model.addAttribute("id", member_Id);

		return "Main.jsp?center=member/LoginProc";
	}

	@RequestMapping("/Logout")
	public String logout(HttpServletRequest request, Model model) {

		return "member/Logout";
	}
}
