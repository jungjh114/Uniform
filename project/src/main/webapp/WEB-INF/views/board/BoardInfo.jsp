<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style.css" />
<style>
hr {
	border-top: 2px solid #F12121;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("id");
		if (id == null) {
			id = "GUEST";
		}

		pageContext.setAttribute("br", "<br/>");
		pageContext.setAttribute("cn", "\n");

		int backPage = Integer.parseInt(session.getAttribute("currentPage") + "");
		int backBlock = Integer.parseInt(session.getAttribute("currentBlock") + "");
	%>
	<center>
		<h2>게시글보기</h2>
		<div style="width: 60%;">
			<table width="600" class="table">
				<tr height="40">
					<td align="center" width="120" bgcolor="#E6E6E6">글번호</td>
					<td align="center" width="180">${dto.board_No}</td>
					<td align="center" width="120" bgcolor="#E6E6E6">조회수</td>
					<td align="center" width="180">${dto.readCount}</td>
				</tr>
				<tr height="40">
					<td align="center" width="120" bgcolor="#E6E6E6">작성자ID</td>
					<td align="center" width="180">${dto.member_Id}</td>
					<td align="center" width="120" bgcolor="#E6E6E6">작성일</td>
					<td align="center" width="180">${dto.board_Date}</td>
				</tr>
				<tr height="40">
					<td align="center" width="120" bgcolor="#E6E6E6">제목</td>
					<td colspan="3">${dto.board_Title}</td>
				</tr>
				<tr height="200">
					<td align="center" width="120" bgcolor="#E6E6E6">글내용</td>
					<td colspan="3">${fn:replace(dto.board_Content, cn, br)}</td>
				</tr>
				<tr height="40">
					<td align="center" colspan="4">
						<%
							if (id.equals("admin")) {
						%> <input type="button" value="답글쓰기"
						onclick="location.href='BoardReWriteForm?num=${dto.board_No}'">
						<%
							}
						%> <input type="button" value="수정하기"
						onclick="location.href='BoardUpdateForm?num=${dto.board_No}'">
						<input type="button" value="삭제하기"
						onclick="location.href='BoardDeleteForm?num=${dto.board_No}'">
						<input type="button" value="목록보기"
						onclick="location.href='BoardList?pageNum=<%=backPage%>&pageBlock=<%=backBlock%>'">
					</td>
				</tr>
			</table>
		</div>
	</center>
</body>
</html>