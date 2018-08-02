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

import com.project.uniform.common.PageManager;
import com.project.uniform.dao.BoardIDAO;

import com.project.uniform.dto.Board;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/BoardList")
	public String boardList(HttpServletRequest request, Model model) {
		BoardIDAO dao = sqlSession.getMapper(BoardIDAO.class);

		int perPage = 10;
		int perBlock = 10;

		int rowCount = dao.selectAll().size();
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

		int number = pm.number;
		List<Board> list = dao.selectAll().subList(pm.startRow - 1, pm.endRow);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("currentBlock", currentBlock);
		model.addAttribute("list", list);
		model.addAttribute("number", number);
		model.addAttribute("pagenation", pm.getPagenation("BoardList?"));
		model.addAttribute("pageCount", pm.pageCount);

		return "Main.jsp?center=board/BoardList";
	}

	@RequestMapping("/BoardInfo")
	public String boardInfo(HttpServletRequest request, Model model) {
		BoardIDAO dao = sqlSession.getMapper(BoardIDAO.class);

		int num = Integer.parseInt(request.getParameter("num"));

		dao.upHit(num);
		Board dto = dao.select(num);

		model.addAttribute("dto", dto);

		return "Main.jsp?center=board/BoardInfo";
	}

	@RequestMapping("/BoardWriteForm")
	public String main(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("id");
		int res = 0;

		if (id == null) {
			res = 1;
		}

		model.addAttribute("res", res);
		model.addAttribute("id", id);

		return "Main.jsp?center=board/BoardWriteForm";
	}

	@RequestMapping("/BoardWriteProc")
	public String BoardWriteProc(HttpServletRequest request, Model model) {
		BoardIDAO dao = sqlSession.getMapper(BoardIDAO.class);

		String member_Id = request.getParameter("id");
		String board_Title = request.getParameter("board_Title");

		String board_Pass = request.getParameter("board_Pass");
		String board_Content = request.getParameter("board_Content");

		int res = 0;
		if ((member_Id != null && !member_Id.equals("")) && (board_Pass != null && !board_Pass.equals(""))
				&& (board_Title != null && !board_Title.equals(""))
				&& (board_Content != null && !board_Content.equals(""))) {
			dao.insert(member_Id, board_Pass, board_Title, board_Content);
			res = 1;
		}

		model.addAttribute("res", res);

		return "Main.jsp?center=board/BoardWriteProc";

	}

	@RequestMapping("/BoardDeleteForm")
	public String BoardDeleteForm(HttpServletRequest request, Model model) {
		int num = Integer.parseInt(request.getParameter("num"));

		model.addAttribute("num", num);

		return "Main.jsp?center=board/BoardDeleteForm";
	}

	@RequestMapping("/BoardDeleteProc")
	public String BoardDeleteProc(HttpServletRequest request, Model model) {
		BoardIDAO dao = sqlSession.getMapper(BoardIDAO.class);

		String xpwd = (String) request.getParameter("xpwd");

		int num = Integer.parseInt(request.getParameter("num"));

		Board dto = dao.select(num);

		int res = 0;
		if (dto.getBoard_Pass().equals(xpwd)) {
			dao.delete(num);
			res = 1;
		}
		model.addAttribute("res", res);

		return "Main.jsp?center=board/BoardDeleteProc";
	}

	@RequestMapping("/BoardUpdateForm")
	public String BoardUpdateForm(HttpServletRequest request, Model model) {
		BoardIDAO dao = sqlSession.getMapper(BoardIDAO.class);
		
		int num = Integer.parseInt(request.getParameter("num"));

		Board dto = dao.select(num);

		model.addAttribute("dto", dto);

		return "Main.jsp?center=board/BoardUpdateForm";
	}

	@RequestMapping("/BoardUpdateProc")
	public String BoardUpdateProc(HttpServletRequest request, Model model) {
		BoardIDAO dao = sqlSession.getMapper(BoardIDAO.class);

		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		String pass = request.getParameter("password");

		int num = Integer.parseInt(request.getParameter("num"));

		Board dto = dao.select(num);

		int res = 0;
		if (dto.getBoard_Pass().equals(pass)) {
			dao.update(subject, content, num);
			res = 1;
		}

		model.addAttribute("res", res);

		return "Main.jsp?center=board/BoardUpdateProc";
	}

	@RequestMapping("/BoardReWriteForm")
	public String BoardReWriteForm(HttpServletRequest request, Model model) {
		BoardIDAO dao = sqlSession.getMapper(BoardIDAO.class);

		int num = Integer.parseInt(request.getParameter("num"));

		Board dto = dao.select(num);

		model.addAttribute("dto", dto);

		return "Main.jsp?center=board/BoardReWriteForm";
	}

	@RequestMapping("/BoardReWriteProc")
	public String BoardReWriteProc(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();

		BoardIDAO dao = sqlSession.getMapper(BoardIDAO.class);

		String member_Id = (String) session.getAttribute("id");
		String board_Title = request.getParameter("board_Title");

		String board_Pass = request.getParameter("board_Pass");
		String board_Content = request.getParameter("board_Content");

		int ref = Integer.parseInt(request.getParameter("ref"));
		int ref_Step = Integer.parseInt(request.getParameter("ref_Step"));
		int ref_Level = Integer.parseInt(request.getParameter("ref_Level"));

		int res = 0;
		if ((member_Id != null && !member_Id.equals("")) && (board_Title != null && !board_Title.equals(""))
				&& (board_Content != null && !board_Content.equals(""))
				&& (board_Pass != null && !board_Pass.equals(""))) {
			dao.updateLevel(ref, ref_Level);
			dao.insert2(member_Id, board_Pass, board_Title, board_Content, ref, ref_Step, ref_Level);
			res = 1;
		}

		model.addAttribute("res", res);

		return "Main.jsp?center=board/BoardReWriteProc";
	}

}
