package com.project.uniform.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.uniform.common.PageManager;
import com.project.uniform.dao.MemberIDAO;
import com.project.uniform.dao.Order_BasketIDAO;
import com.project.uniform.dao.SaleInfoIDAO;
import com.project.uniform.dao.SaleReserveIDAO;
import com.project.uniform.dao.Save_GoodsIDAO;
import com.project.uniform.dto.Member;
import com.project.uniform.dto.Order_Basket;
import com.project.uniform.dto.SaleInfo;
import com.project.uniform.dto.SaleReserve;
import com.project.uniform.dto.Save_Goods;

@Controller
public class GoodsController {

	private static final Logger logger = LoggerFactory.getLogger(GoodsController.class);

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/WorldcupAllList")
	public String worldcupAllList(HttpServletRequest request, Model model) {

		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);
		HttpSession session = request.getSession();

		// 상품 정보 모두 가져오기
		List<Save_Goods> list = dao.selectCategory("%월드컵%");
		int perPage = 12; // (1) 화면에 보여질 글 갯수
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

		List<Save_Goods> listGroup = dao.selectGroup("%월드컵%");

		session.setAttribute("currentPage", currentPage);
		session.setAttribute("currentBlock", currentBlock);
		model.addAttribute("pageCount", pm.pageCount);
		model.addAttribute("list", list);
		model.addAttribute("listGroup", listGroup);
		model.addAttribute("pagenation", pm.getPagenation("WorldcupAllList?"));

		return "Main.jsp?center=goods/WorldcupAllList";
	}

	@RequestMapping("/WorldcupCategory")
	public String goodsCategory(HttpServletRequest request, Model model) {

		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);
		HttpSession session = request.getSession();

		String group = request.getParameter("group");
		// 상품 정보 모두 가져오기
		List<Save_Goods> list = dao.selectCategory("%" + group + "%");
		int perPage = 12; // (1) 화면에 보여질 글 갯수
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

		List<Save_Goods> listGroup = dao.selectGroup("%월드컵%");

		session.setAttribute("currentPage", currentPage);
		session.setAttribute("currentBlock", currentBlock);
		model.addAttribute("pageCount", pm.pageCount);
		model.addAttribute("list", list);
		model.addAttribute("listGroup", listGroup);
		model.addAttribute("pagenation", pm.getPagenation("WorldcupCategory?group=" + group + "&"));

		return "Main.jsp?center=goods/WorldcupCategory";
	}

	@RequestMapping("/LeagueList")
	public String leagueList(HttpServletRequest request, Model model) {

		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);
		HttpSession session = request.getSession();

		// 상품 정보 모두 가져오기
		List<Save_Goods> list = dao.selectCategory("League");
		int perPage = 12; // (1) 화면에 보여질 글 갯수
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
		session.setAttribute("currentPage", currentPage);
		session.setAttribute("currentBlock", currentBlock);
		model.addAttribute("pageCount", pm.pageCount);
		model.addAttribute("list", list);
		model.addAttribute("pagenation", pm.getPagenation("LeagueList?"));

		return "Main.jsp?center=goods/LeagueList";
	}

	@RequestMapping("/KBOList")
	public String kboList(HttpServletRequest request, Model model) {

		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);
		HttpSession session = request.getSession();

		// 상품 정보 모두 가져오기
		List<Save_Goods> list = dao.selectCategory("KBO");
		int perPage = 12; // (1) 화면에 보여질 글 갯수
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
		session.setAttribute("currentPage", currentPage);
		session.setAttribute("currentBlock", currentBlock);
		model.addAttribute("pageCount", pm.pageCount);
		model.addAttribute("list", list);
		model.addAttribute("pagenation", pm.getPagenation("KBOList?"));

		return "Main.jsp?center=goods/KBOList";
	}

	@RequestMapping("/GoodsSearch")
	public String goodsSearch(HttpServletRequest request, Model model) {

		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);
		HttpSession session = request.getSession();

		String search1 = request.getParameter("search");
		String search = "%" + search1 + "%";
		// 상품 정보 모두 가져오기
		List<Save_Goods> list = dao.selectName(search);
		int perPage = 12; // (1) 화면에 보여질 글 갯수
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

		session.setAttribute("currentPage", currentPage);
		session.setAttribute("currentBlock", currentBlock);
		model.addAttribute("pageCount", pm.pageCount);
		model.addAttribute("list", list);
		model.addAttribute("pagenation", pm.getPagenation("GoodsSearch?search=" + search1 + "&"));

		return "Main.jsp?center=goods/GoodsSearch";
	}

	@RequestMapping("/GoodsPayInfo")
	public String goodsPayInfo(HttpServletRequest request, Model model) {
		Save_GoodsIDAO dao = sqlSession.getMapper(Save_GoodsIDAO.class);

		int goods_No = Integer.parseInt(request.getParameter("no"));
		Save_Goods dto = dao.select(goods_No);

		model.addAttribute("dto", dto);

		return "Main.jsp?center=goods/GoodsPayInfo";
	}

	@RequestMapping("/SaleInfo")
	public String saleInfo(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html charset=UTF-8");
		Save_GoodsIDAO goodsDao = sqlSession.getMapper(Save_GoodsIDAO.class);
		MemberIDAO memberDao = sqlSession.getMapper(MemberIDAO.class);

		String id = (String) session.getAttribute("id");
		int res = 0;
		if (id == null) {
			res = 1;
			model.addAttribute("res", res);
			return "goods/SaleErr";
		}
		Member memberDto = memberDao.select(id);
		String address = memberDto.getAddress();
		int goods_No = Integer.parseInt(request.getParameter("no"));
		Save_Goods dto = goodsDao.select(goods_No);
		String strQty = request.getParameter("qty");
		if (strQty == null || strQty.equals("")) {
			res = 2;
			model.addAttribute("res", res);
			return "goods/SaleErr";
		}

		int qty = Integer.parseInt(request.getParameter("qty"));

		if (qty < 1) {
			res = 3;
			model.addAttribute("res", res);
			return "goods/SaleErr";
		}

		int fee = qty * dto.getPrice();

		model.addAttribute("dto", dto);
		model.addAttribute("id", id);
		model.addAttribute("address", address);
		model.addAttribute("qty", qty);
		model.addAttribute("fee", fee);
		model.addAttribute("memberDto", memberDto);

		return "Main.jsp?center=goods/SaleInfo";
	}

	@RequestMapping("/SaleReserve")
	public String saleReserve(HttpServletRequest request, HttpServletResponse response, Model model)
			throws IOException {
		HttpSession session = request.getSession();
		Save_GoodsIDAO goodsDao = sqlSession.getMapper(Save_GoodsIDAO.class);
		SaleReserveIDAO saleDao = sqlSession.getMapper(SaleReserveIDAO.class);
		SaleInfoIDAO saleInfoDao = sqlSession.getMapper(SaleInfoIDAO.class);
		MemberIDAO memberDao = sqlSession.getMapper(MemberIDAO.class);

		String id = (String) session.getAttribute("id");
		String address = request.getParameter("address");
		String claim = request.getParameter("claim");
		String strUsePoint = request.getParameter("usePoint");

		if (strUsePoint == null || strUsePoint.equals("")) {
			strUsePoint = "0";
		}

		int usePoint = Integer.parseInt(strUsePoint);

		int goods_No = Integer.parseInt(request.getParameter("no"));
		Save_Goods dto = goodsDao.select(goods_No);
		int qty = Integer.parseInt(request.getParameter("qty"));
		int fee = qty * dto.getPrice();
		int lastFee = (qty * dto.getPrice()) - usePoint;

		int memberPoint = memberDao.select(id).getPoint();

		if (usePoint > memberPoint) {
			int res = 4;
			model.addAttribute("res", res);

			return "goods/SaleErr";
		}

		if (usePoint > fee) {
			int res = 6;
			model.addAttribute("res", res);

			return "goods/SaleErr";
		}

		saleInfoDao.insert(id);
		ArrayList<SaleInfo> list = saleInfoDao.selectAll();

		int salecode = 0;
		for (SaleInfo x : list) {
			if (salecode < x.getSale_Code()) {
				salecode = x.getSale_Code();
			}
		}

		saleDao.insert(salecode, goods_No, qty, lastFee, address, claim);

		int point = (fee / 100) * 2;
		memberDao.pointUpdate(point, id);
		memberDao.pointUpdate(-usePoint, id);

		goodsDao.saleUpdate(qty, goods_No);

		model.addAttribute("dto", dto);
		model.addAttribute("id", id);
		model.addAttribute("address", address);
		model.addAttribute("claim", claim);
		model.addAttribute("qty", qty);
		model.addAttribute("fee", fee);
		model.addAttribute("lastFee", lastFee);
		model.addAttribute("usePoint", usePoint);

		return "Main.jsp?center=goods/SaleReserve";
	}

	@RequestMapping("/Basket")
	public String basket(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html charset=UTF-8");
		PrintWriter out = response.getWriter();
		Order_BasketIDAO dao = sqlSession.getMapper(Order_BasketIDAO.class);

		String id = (String) session.getAttribute("id");

		if (id == null) {
			out.println("<script>alert('로그인부터 하셔야 합니다.');location.href = 'Login';</script>");
		}

		ArrayList<Order_Basket> list = dao.selectMember(id);
		int sumPrice = 0;
		for (Order_Basket x : list) {
			sumPrice += x.getPrice();
		}

		model.addAttribute("list", list);
		model.addAttribute("sumPrice", sumPrice);

		return "Main.jsp?center=goods/Basket";
	}

	@RequestMapping("/BasketProc")
	public String basketProc(HttpServletRequest request, HttpServletResponse response, Model model)
			throws NumberFormatException, SQLException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		Order_BasketIDAO orderDao = sqlSession.getMapper(Order_BasketIDAO.class);
		Save_GoodsIDAO goodsDao = sqlSession.getMapper(Save_GoodsIDAO.class);

		String id = (String) session.getAttribute("id");
		int res = 0;
		if (id == null) {
			res = 1;
			model.addAttribute("res", res);
			return "goods/SaleErr";
		}

		int goods_No = Integer.parseInt(request.getParameter("no"));
		Save_Goods dto = goodsDao.select(goods_No);
		String strQty = request.getParameter("qty");
		if (strQty == null || strQty.equals("")) {
			res = 2;
			model.addAttribute("res", res);
			return "goods/SaleErr";
		}
		int qty = Integer.parseInt(strQty);

		if (qty < 1) {
			res = 3;
			model.addAttribute("res", res);
			return "goods/SaleErr";
		}

		int fee = qty * dto.getPrice();
		String goods_Name = dto.getGoods_Name();
		String img = dto.getImg();

		if (qty != 0) {
			res = 1;
			orderDao.insert(id, goods_No, qty, fee, goods_Name, img);
		}

		model.addAttribute("res", res);

		return "Main.jsp?center=goods/BasketProc";
	}

	@RequestMapping("/BasketDelete")
	public String basketDelete(HttpServletRequest request, HttpServletResponse response, Model model)
			throws NumberFormatException, SQLException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		Order_BasketIDAO dao = sqlSession.getMapper(Order_BasketIDAO.class);
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();

		int goods_No = Integer.parseInt(request.getParameter("no"));
		session.setAttribute("deleteNo", goods_No);
		System.out.println(goods_No);

		return "Main.jsp?center=goods/BasketDelete";
	}

	@RequestMapping("/DeleteConfirm")
	public String DeleteConfirm(HttpServletRequest request, HttpServletResponse response, Model model)
			throws NumberFormatException, SQLException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		Order_BasketIDAO dao = sqlSession.getMapper(Order_BasketIDAO.class);
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();

		int goods_No = (Integer) session.getAttribute("deleteNo");
		dao.delete(goods_No);

		return "Main.jsp?center=goods/DeleteConfirm";
	}

	@RequestMapping("/BasketAllPay")
	public String basketAllPay(HttpServletRequest request, HttpServletResponse response, Model model)
			throws NumberFormatException, SQLException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		Order_BasketIDAO dao = sqlSession.getMapper(Order_BasketIDAO.class);
		MemberIDAO memberDao = sqlSession.getMapper(MemberIDAO.class);

		String id = (String) session.getAttribute("id");
		Member memberDto = memberDao.select(id);
		String address = memberDto.getAddress();
		int point = memberDto.getPoint();

		ArrayList<Order_Basket> list = dao.selectMember(id);
		System.out.println(list);
		if (list.isEmpty()) {
			int res = 5;
			model.addAttribute("res", res);

			return "goods/SaleErr";
		}

		int sumPrice = 0;
		for (Order_Basket x : list) {
			sumPrice += x.getPrice();

		}

		model.addAttribute("address", address);
		model.addAttribute("list", list);
		model.addAttribute("sumPrice", sumPrice);
		model.addAttribute("point", point);

		return "Main.jsp?center=goods/BasketAllPay";
	}

	@RequestMapping("/BasketAllProc")
	public String basketAllProc(HttpServletRequest request, HttpServletResponse response, Model model)
			throws NumberFormatException, SQLException, IOException {
		HttpSession session = request.getSession();
		Save_GoodsIDAO goodsDao = sqlSession.getMapper(Save_GoodsIDAO.class);
		SaleReserveIDAO saleDao = sqlSession.getMapper(SaleReserveIDAO.class);
		SaleInfoIDAO saleInfoDao = sqlSession.getMapper(SaleInfoIDAO.class);
		MemberIDAO memberDao = sqlSession.getMapper(MemberIDAO.class);
		Order_BasketIDAO orderDao = sqlSession.getMapper(Order_BasketIDAO.class);

		ArrayList<Order_Basket> list = (ArrayList<Order_Basket>) session.getAttribute("list");
		String id = (String) session.getAttribute("id");
		String address = request.getParameter("address");
		String claim = request.getParameter("claim");
		String strUsePoint = request.getParameter("usePoint");
		int fee = Integer.parseInt(request.getParameter("sumPrice"));

		if (strUsePoint == null || strUsePoint.equals("")) {
			strUsePoint = "0";
		}
		int usePoint = Integer.parseInt(strUsePoint);
		
		int memberPoint = memberDao.select(id).getPoint();

		if (usePoint > memberPoint) {
			int res = 4;
			model.addAttribute("res", res);

			return "goods/SaleErr";
		}

		if (usePoint > fee) {
			int res = 6;
			model.addAttribute("res", res);

			return "goods/SaleErr";
		}

		saleInfoDao.insert(id);
		ArrayList<SaleInfo> infoList = saleInfoDao.selectAll();

		int salecode = 0;
		for (SaleInfo x : infoList) {
			if (salecode < x.getSale_Code()) {
				salecode = x.getSale_Code();
			}
		}
		int sumPrice = 0;
		for (Order_Basket x : list) {
			if (usePoint > (x.getPrice() * x.getQty())) {

				int goods_No = x.getGoods_No();
				int qty = x.getQty();
				int price = x.getPrice();
				int lastPrice = 0;
				
				saleDao.insert(salecode, goods_No, qty, lastPrice, address, claim);

				int point = (price / 100) * 2;
				memberDao.pointUpdate(point, id);

				goodsDao.saleUpdate(qty, goods_No);
				memberDao.pointUpdate(-price, id);
				
				sumPrice += lastPrice;
				usePoint = usePoint - price;
			} else if(usePoint < (x.getPrice() * x.getQty())){
				int goods_No = x.getGoods_No();
				int qty = x.getQty();
				int price = x.getPrice();
				
				int lastPrice = price - usePoint;
				
				saleDao.insert(salecode, goods_No, qty, lastPrice, address, claim);

				int point = (price / 100) * 2;
				memberDao.pointUpdate(point, id);

				goodsDao.saleUpdate(qty, goods_No);
				memberDao.pointUpdate(-usePoint, id);

				sumPrice += lastPrice;
				usePoint = 0;
			}
		}

		for (Order_Basket x : list) {
			int goods_No = x.getGoods_No();

			orderDao.delete(goods_No);
		}
		int point = memberDao.select(id).getPoint();

		model.addAttribute("id", id);
		model.addAttribute("list", list);
		model.addAttribute("address", address);
		model.addAttribute("sumPrice", sumPrice);
		model.addAttribute("claim", claim);
		model.addAttribute("point", point);

		return "Main.jsp?center=goods/BasketAllProc";
	}
}
