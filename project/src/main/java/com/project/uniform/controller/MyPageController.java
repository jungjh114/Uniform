package com.project.uniform.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.uniform.common.PageManager;
import com.project.uniform.dao.MemberIDAO;
import com.project.uniform.dao.OrderInfoIDao;
import com.project.uniform.dao.Order_BasketIDAO;
import com.project.uniform.dto.Member;
import com.project.uniform.dto.OrderInfo;
import com.project.uniform.dto.Order_Basket;
import com.project.uniform.dto.Save_Goods;

@Controller
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/MyPage")
	public String myPage(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html charset=UTF-8");
		PrintWriter out = response.getWriter();

		String id = (String) session.getAttribute("id");

		if (id == null || id.equals("")) {
			int res = 0;
			model.addAttribute("res", res);
			return "mypage/Err";
		}
		System.out.println(id);

		return "Main.jsp?center=mypage/MyPageEnterance";
	}

	@RequestMapping("/MyPageMain")
	public String myPageMain(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberIDAO dao = sqlSession.getMapper(MemberIDAO.class);

		String id = (String) session.getAttribute("id");
		String password = request.getParameter("password");

		Member dto = dao.select(id);

		String password2 = dto.getMember_Pass();

		if (!password.equals(password2)) {
			int res = 1;
			model.addAttribute("res", res);
			return "mypage/Err";
		}
		session.setAttribute("password", password2);

		model.addAttribute("dto", dto);

		return "Main.jsp?center=mypage/MyPageFrame.jsp?myArea=MyPageMain";
	}

	@RequestMapping("/MyInfoModify")
	public String myInfoModify(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberIDAO dao = sqlSession.getMapper(MemberIDAO.class);

		String id = (String) session.getAttribute("id");

		Member dto = dao.select(id);

		model.addAttribute("dto", dto);

		return "Main.jsp?center=mypage/MyPageFrame.jsp?myArea=MyInfoModify";
	}

	@RequestMapping("/UpdateProc")
	public String updateProc(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberIDAO dao = sqlSession.getMapper(MemberIDAO.class);

		String member_Id = (String) session.getAttribute("id");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");

		System.out.println(address);

		dao.update(email, tel, address, member_Id);

		return "mypage/UpdateProc";
	}

	@RequestMapping("/PasswordChange")
	public String changePasscode(HttpServletRequest request, Model model) {
		return "Main.jsp?center=mypage/MyPageFrame.jsp?myArea=PasswordChange";
	}

	@RequestMapping("/UpdatePassProc")
	public String updatePassProc(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberIDAO dao = sqlSession.getMapper(MemberIDAO.class);

		String member_Id = (String) session.getAttribute("id");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		int res = 0;
		if (password1.equals(password2)) {
			res = 1;
			dao.updatePass(password1, member_Id);
		}

		model.addAttribute("res", res);

		return "mypage/UpdatePassProc";
	}

	@RequestMapping("/DropOutConfirm")
	public String dropOutConfirm(HttpServletRequest request, Model model) {
		return "Main.jsp?center=mypage/MyPageFrame.jsp?myArea=DropOutConfirm";
	}

	@RequestMapping("/DeleteProc")
	public String deleteProc(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html charset=UTF-8");
		MemberIDAO dao = sqlSession.getMapper(MemberIDAO.class);

		String member_Id = (String) session.getAttribute("id");
		String password = request.getParameter("password");
		String code = request.getParameter("code");

		Member dto = dao.select(member_Id);
		String password2 = dto.getMember_Pass();

		int res = 0;

		if (password.equals(password2)) {
			if (code.equals("BYE")) {
				dao.updateDelete(member_Id);
				res = 1;
				session.setAttribute("id", null);
			} else {
				res = 2;
			}
		} else {
			res = 3;
		}
		model.addAttribute("res", res);

		return "Main.jsp?center=mypage/DeleteProc";
	}

	@RequestMapping("/MyOrderMain")
	public String myOrderMain(HttpServletRequest request, Model model, HttpServletResponse response)
			throws IOException {

		HttpSession session = request.getSession();
		response.setContentType("text/html charset=UTF-8");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String today = formatter.format(new Date());

		model.addAttribute("today", today);

		PrintWriter out = response.getWriter();

		OrderInfoIDao dao = sqlSession.getMapper(OrderInfoIDao.class);
		String member_Id = (String) session.getAttribute("id");

		List<OrderInfo> list = dao.selectMember(member_Id);

		int perPage = 5;
		int perBlock = 5;
		int rowCount = list.size();
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		String blockNum = request.getParameter("blockNum");
		if (blockNum == null) {
			blockNum = "1";
		}
		int currentBlock = Integer.parseInt(blockNum);
		PageManager pm = new PageManager(perPage, perBlock);
		pm.setRowCount(rowCount, currentPage, currentBlock);

		list = list.subList(pm.startRow - 1, pm.endRow);

		model.addAttribute("list", list);
		session.setAttribute("currentPage", currentPage);
		session.setAttribute("currentBlock", currentBlock);
		model.addAttribute("pageCount", pm.pageCount);
		model.addAttribute("pagenation", pm.getPagenation("MyOrderMain?Member_Id=" + member_Id + "&"));

		return "Main.jsp?center=mypage/MyPageFrame.jsp?myArea=MyOrderMain";
	}

	@RequestMapping("/MyOrderMainDate")
	public String myOrderMainDate(HttpServletRequest request, Model model, HttpServletResponse response)
			throws IOException, ParseException {

		HttpSession session = request.getSession();
		response.setContentType("text/html charset=UTF-8");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String today = formatter.format(new Date());

		int day = Integer.parseInt(request.getParameter("day"));

		Calendar cal = Calendar.getInstance();
		cal.add(cal.DATE, -day);

		String dayMiner = cal.get(cal.YEAR) + "-" + (cal.get(cal.MONTH) + 1) + "-" + cal.get(cal.DATE);
		Date date = formatter.parse(dayMiner);
		dayMiner = new SimpleDateFormat("yyyy-MM-dd").format(date);
		System.out.println(dayMiner);

		model.addAttribute("today", today);

		PrintWriter out = response.getWriter();

		OrderInfoIDao dao = sqlSession.getMapper(OrderInfoIDao.class);
		String member_Id = (String) session.getAttribute("id");
		List<OrderInfo> list = new ArrayList<>();
		if (day == 0) {
			list = dao.selectToday(member_Id, today);
		} else {
			list = dao.selectDayMiner(member_Id, dayMiner, today);
			List<OrderInfo> list2 = dao.selectToday(member_Id, today);
			for (OrderInfo x : list2) {
				list.add(x);
			}
		}

		int perPage = 5;
		int perBlock = 5;
		int rowCount = list.size();
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		String blockNum = request.getParameter("blockNum");
		if (blockNum == null) {
			blockNum = "1";
		}
		int currentBlock = Integer.parseInt(blockNum);
		PageManager pm = new PageManager(perPage, perBlock);
		pm.setRowCount(rowCount, currentPage, currentBlock);

		list = list.subList(pm.startRow - 1, pm.endRow);

		model.addAttribute("list", list);
		session.setAttribute("currentPage", currentPage);
		session.setAttribute("currentBlock", currentBlock);
		model.addAttribute("pageCount", pm.pageCount);
		model.addAttribute("pagenation",
				pm.getPagenation("MyOrderMainDate?Member_Id=" + member_Id + "&day=" + day + "&"));

		return "Main.jsp?center=mypage/MyPageFrame.jsp?myArea=MyOrderMain";
	}

	@RequestMapping("/MyOrderMainSelect")
	public String myOrderMainSelect(HttpServletRequest request, Model model, HttpServletResponse response)
			throws IOException, ParseException {

		HttpSession session = request.getSession();
		response.setContentType("text/html charset=UTF-8");

		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");

		PrintWriter out = response.getWriter();

		OrderInfoIDao dao = sqlSession.getMapper(OrderInfoIDao.class);
		String member_Id = (String) session.getAttribute("id");
		List<OrderInfo> list = dao.selectDayMiner(member_Id, startDate, endDate);
		List<OrderInfo> list2 = dao.selectToday(member_Id, endDate);
		for (OrderInfo x : list2) {
			list.add(x);
		}

		int perPage = 5;
		int perBlock = 5;
		int rowCount = list.size();
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		String blockNum = request.getParameter("blockNum");
		if (blockNum == null) {
			blockNum = "1";
		}
		int currentBlock = Integer.parseInt(blockNum);
		PageManager pm = new PageManager(perPage, perBlock);
		pm.setRowCount(rowCount, currentPage, currentBlock);

		list = list.subList(pm.startRow - 1, pm.endRow);

		model.addAttribute("list", list);
		session.setAttribute("currentPage", currentPage);
		session.setAttribute("currentBlock", currentBlock);
		model.addAttribute("pageCount", pm.pageCount);
		model.addAttribute("pagenation", pm.getPagenation(
				"MyOrderMainSelect?Member_Id=" + member_Id + "&startDate=" + startDate + "&endDate=" + endDate + "&"));

		return "Main.jsp?center=mypage/MyPageFrame.jsp?myArea=MyOrderMain";
	}

}
