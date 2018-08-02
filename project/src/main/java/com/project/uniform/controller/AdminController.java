package com.project.uniform.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.uniform.common.PageManager;
import com.project.uniform.dao.InputIDAO;
import com.project.uniform.dao.MemberIDAO;
import com.project.uniform.dao.SaleInfoIDAO;
import com.project.uniform.dao.SaleReserveIDAO;
import com.project.uniform.dao.Save_GoodsIDAO;
import com.project.uniform.dto.Input;
import com.project.uniform.dto.Member;
import com.project.uniform.dto.SaleInfo;
import com.project.uniform.dto.SaleReserve;
import com.project.uniform.dto.Save_Goods;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/AdminMain")
	public String adminMain(HttpServletRequest request, Model model) {

		return "Main.jsp?center=admin/AdminMain";
	}

	@RequestMapping("/AdminInsert")
	public String adminInsert(HttpServletRequest request, Model model) {

		return "Main.jsp?center=admin/AdminMain.jsp?admin=AdminInsert";
	}

	@RequestMapping("/GoodsInsert")
	public String goodsInsert(HttpServletRequest request, Model model) {
		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);

		String goods_Name = request.getParameter("goods_Name");
		String goods_Group = request.getParameter("goods_Group");
		String goods_Contents = request.getParameter("goods_Contents");
		String img = request.getParameter("img");
		String strPrice = request.getParameter("price");

		int res = 0;
		if ((goods_Name != null && !goods_Name.equals("")) && (goods_Group != null && !goods_Group.equals(""))
				&& (goods_Contents != null && !goods_Contents.equals("")) && (img != null && !img.equals(""))
				&& (strPrice != null && !strPrice.equals(""))) {
			int price = Integer.parseInt(strPrice);
			dao.insert(goods_Name, goods_Group, goods_Contents, img, price);
			res = 1;

		}
		model.addAttribute("res", res);

		return "admin/GoodsInsert";
	}

	@RequestMapping("/AdminUpdate")
	public String adminUpdate(HttpServletRequest request, Model model) {
		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);

		ArrayList<Save_Goods> list = dao.selectAll();

		model.addAttribute("list", list);

		return "Main.jsp?center=admin/AdminMain.jsp?admin=AdminUpdate";
	}

	@RequestMapping("/GoodsUpdate")
	public String goodsUpdate(HttpServletRequest request, Model model) {
		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);

		int no = Integer.parseInt(request.getParameter("no"));
		Save_Goods dto = dao.select(no);

		model.addAttribute("dto", dto);

		return "Main.jsp?center=admin/AdminMain.jsp?admin=GoodsUpdate";
	}

	@RequestMapping("/GoodsUpdateProc")
	public String goodsUpdateProc(HttpServletRequest request, Model model) {
		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);

		String goods_Name = request.getParameter("goods_Name");
		String goods_Group = request.getParameter("goods_Group");
		String goods_Contents = request.getParameter("goods_Contents");
		String img = request.getParameter("img");
		String strPrice = request.getParameter("price");
		int goods_Qty = Integer.parseInt(request.getParameter("qty"));
		int goods_No = Integer.parseInt(request.getParameter("no"));

		int res = 0;
		if ((goods_Name != null && !goods_Name.equals("")) && (goods_Group != null && !goods_Group.equals(""))
				&& (goods_Contents != null && !goods_Contents.equals("")) && (img != null && !img.equals(""))
				&& (strPrice != null && !strPrice.equals(""))) {
			int price = Integer.parseInt(strPrice);
			dao.update(goods_Name, goods_Group, goods_Contents, img, price, goods_Qty, goods_No);
			res = 1;

		}
		model.addAttribute("res", res);

		return "admin/GoodsUpdateProc";
	}

	@RequestMapping("/AdminDelete")
	public String adminDelete(HttpServletRequest request, Model model) {
		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);

		ArrayList<Save_Goods> list = dao.selectAll();

		model.addAttribute("list", list);

		return "Main.jsp?center=admin/AdminMain.jsp?admin=AdminDelete";
	}

	@RequestMapping("/GoodsDelete")
	public String goodsDelete(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);

		int goods_No = Integer.parseInt(request.getParameter("no"));

		session.setAttribute("goods_No", goods_No);

		return "Main.jsp?center=admin/AdminMain.jsp?admin=GoodsDelete";
	}

	@RequestMapping("/GoodsDeleteProc")
	public String GoodsDeleteProc(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);

		int goods_No = (Integer) session.getAttribute("goods_No");
		dao.delete(goods_No);

		return "admin/GoodsDeleteProc";
	}

	@RequestMapping("/AdminMember")
	public String adminMember(HttpServletRequest request, Model model) {
		MemberIDAO dao = sqlSession.getMapper(MemberIDAO.class);

		ArrayList<Member> list = dao.selectAll();

		model.addAttribute("list", list);

		return "Main.jsp?center=admin/AdminMain.jsp?admin=AdminMember";
	}

	@RequestMapping("/AdminInput")
	public String adminInput(HttpServletRequest request, Model model) {
		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);

		ArrayList<Save_Goods> list = dao.selectAll();

		model.addAttribute("list", list);

		return "Main.jsp?center=admin/AdminMain.jsp?admin=AdminInput";
	}

	@RequestMapping("/GoodsInput")
	public String goodsInput(HttpServletRequest request, Model model) {
		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);

		int no = Integer.parseInt(request.getParameter("no"));
		Save_Goods dto = dao.select(no);

		model.addAttribute("dto", dto);

		return "Main.jsp?center=admin/AdminMain.jsp?admin=GoodsInput";
	}

	@RequestMapping("/GoodsInputProc")
	public String goodsInputProc(HttpServletRequest request, Model model) {
		InputIDAO dao = sqlSession.getMapper(InputIDAO.class);
		Save_GoodsIDAO goodsDao = sqlSession.getMapper(Save_GoodsIDAO.class);

		int no = Integer.parseInt(request.getParameter("no"));
		String strInput_Qty = request.getParameter("input_Qty");
		String strInput_Price = request.getParameter("input_Price");
		int res = 0;

		if ((strInput_Qty != null && !strInput_Qty.equals(""))
				&& (strInput_Price != null && !strInput_Price.equals(""))) {
			int input_Qty = Integer.parseInt(strInput_Qty);
			int input_Price = Integer.parseInt(strInput_Price);

			dao.insert(no, input_Qty, input_Price);
			res = 1;
			goodsDao.inputUpdate(input_Qty, no);
		}

		model.addAttribute("res", res);

		return "admin/GoodsInputProc";
	}

	@RequestMapping("/AdminSend")
	public String adminSend(HttpServletRequest request, Model model) {
		SaleReserveIDAO dao = sqlSession.getMapper(SaleReserveIDAO.class);

		int perPage = 20;
		int perBlock = 10;

		int allCount = dao.selectAll().size();
		int rowCount = allCount;
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
		// 페이지 관리 객체를 생성 - new PageManager((1), (2))
		PageManager pm = new PageManager(perPage, perBlock);
		// 페이지 관리 객체 환경설정 - pm.setRowCount((3),(4),(5))
		pm.setRowCount(rowCount, currentPage, currentBlock);
		// 테이블에 표시할 번호를 지정 - 거꾸로 줄력해 나갈것임.
		int number = pm.number;

		List<SaleReserve> list = dao.selectAll().subList(pm.startRow - 1, pm.endRow);

		model.addAttribute("list", list);
		model.addAttribute("number", number);
		// 수정, 댓글, 삭제 후 현재 위치로 돌아오게 하기 위해 현 위치값을 세션에 저장
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("currentBlock", currentBlock);
		model.addAttribute("pageCount", pm.pageCount);
		model.addAttribute("pagenation", pm.getPagenation("AdminSend?"));
		model.addAttribute("list", list);

		return "Main.jsp?center=admin/AdminMain.jsp?admin=AdminSend";
	}

	@RequestMapping("/SendProc")
	public String sendProc(HttpServletRequest request, Model model) {
		SaleReserveIDAO dao = sqlSession.getMapper(SaleReserveIDAO.class);

		int sale_No = Integer.parseInt(request.getParameter("sale_No"));
		dao.sendUpdate(sale_No);

		return "admin/SendProc";
	}

	@RequestMapping("/AdminSales")
	public String adminSales(HttpServletRequest request, Model model) {

		return "Main.jsp?center=admin/AdminMain.jsp?admin=AdminSales";
	}

	@RequestMapping("/SalesProc")
	public String salesProc(HttpServletRequest request, Model model) {
		SaleInfoIDAO infoDao = sqlSession.getMapper(SaleInfoIDAO.class);
		SaleReserveIDAO saleDao = sqlSession.getMapper(SaleReserveIDAO.class);

		String sDate = request.getParameter("sDate");
		String eDate = request.getParameter("eDate");

		ArrayList<SaleInfo> infoList = infoDao.selectDate(sDate, eDate);
		ArrayList<SaleInfo> todayList = infoDao.selectToday(eDate);

		for (SaleInfo x : todayList) {
			infoList.add(x);
		}

		int endCode = 0;
		for (SaleInfo x : infoList) {
			if (endCode < x.getSale_Code()) {
				endCode = x.getSale_Code();
			}
		}

		int startCode = endCode;
		for (SaleInfo x : infoList) {
			if (startCode > x.getSale_Code()) {
				startCode = x.getSale_Code();
			}
		}

		ArrayList<SaleReserve> list = saleDao.selectCode(startCode, endCode);
		int sumPrice = 0;
		for (SaleReserve x : list) {
			sumPrice += x.getPrice();
		}
		int size = list.size();

		model.addAttribute("list", list);
		model.addAttribute("sDate", sDate);
		model.addAttribute("eDate", eDate);
		model.addAttribute("sumPrice", sumPrice);
		model.addAttribute("size", size);

		return "Main.jsp?center=admin/AdminMain.jsp?admin=SalesProc";
	}

	@RequestMapping("/AdminExpense")
	public String adminExpense(HttpServletRequest request, Model model) {

		return "Main.jsp?center=admin/AdminMain.jsp?admin=AdminExpense";
	}

	@RequestMapping("/ExpenseProc")
	public String expenseProc(HttpServletRequest request, Model model) {
		InputIDAO dao = sqlSession.getMapper(InputIDAO.class);

		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");

		ArrayList<Input> list = dao.selectDate(startDate, endDate);
		ArrayList<Input> todayList = dao.selectToday(endDate);
		
		for(Input x : todayList) {
			list.add(x);
		}
		
		int sumPrice = 0;
		for (Input x : list) {
			sumPrice += x.getInput_Price();
		}
		int size = list.size();

		model.addAttribute("list", list);
		model.addAttribute("sDate", startDate);
		model.addAttribute("eDate", endDate);
		model.addAttribute("sumPrice", sumPrice);
		model.addAttribute("size", size);

		return "Main.jsp?center=admin/AdminMain.jsp?admin=ExpenseProc";
	}

	@RequestMapping("/UpdateSearch")
	public String updateSearch(HttpServletRequest request, Model model) {
		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);

		String goods_Name = request.getParameter("search");
		ArrayList<Save_Goods> list = dao.selectName("%" + goods_Name + "%");

		model.addAttribute("list", list);

		return "Main.jsp?center=admin/AdminMain.jsp?admin=UpdateSearch";
	}

	@RequestMapping("/DeleteSearch")
	public String deleteSearch(HttpServletRequest request, Model model) {
		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);

		String goods_Name = request.getParameter("search");
		ArrayList<Save_Goods> list = dao.selectName("%" + goods_Name + "%");

		model.addAttribute("list", list);

		return "Main.jsp?center=admin/AdminMain.jsp?admin=DeleteSearch";
	}
}
