<%@page import="java.sql.SQLException"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>보드리스트</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
		int currentPage = (Integer) request.getAttribute("currentPage");
		int currentBlock = (Integer) request.getAttribute("currentBlock");
		// 수정,댓글, 삭제 후 현재위치로 돌아오게 하기 위해 현 위치값을 세션에 저장
		session.setAttribute("currentPage", currentPage);
		session.setAttribute("currentBlock", currentBlock);
	%>
	<center>





		<div style="width: 80%;">
			<table width="800" class="table table-striped">
				<tr height="40" align="center" style="font-size: 100%;">
					<td colspan="5" align="left">
						<button onclick="location.href='BoardWriteForm'"
							class="btn btn-info">글쓰기</button>
					</td>

				</tr>
				<tr height="2">
					<td colspan="5"></td>
				</tr>
				<tr style="font-size: 80%;" align="center">
					<td width="50" style="color: blue;"><h5>번호</h5></td>
					<td align="left" width="200" style="color: blue;"><h5>제목</h5></td>
					<td align="left" width="100" style="color: blue;"><h5>작성자</h5></td>
					<td align="left" width="150" style="color: blue;"><h5>날짜</h5></td>
					<td width="50" style="color: blue;"><h5>조회수</h5></td>
				</tr>
				<tr height="2">
					<td colspan="5"></td>
				</tr>
				<c:forEach items="${list}" var="dto" varStatus="status">

					<tr height="40" style="font-size: 100%;">
						<td align="center">${(number - status.index) - ((currentPage - 1) * displayNum)}</td>
						<td><c:forEach begin="1" end="${dto.ref_Step - 1}"> &nbsp;&nbsp;[re]</c:forEach>
							<a href="BoardInfo?num=${dto.board_No}"
							style="text-decoration: none">${dto.board_Title}</a></td>
						<td>${dto.member_Id}</td>
						<td>${dto.board_Date}</td>
						<td align="center">${dto.readCount}</td>
					</tr>
				</c:forEach>
				<tr height="2">
					<td colspan="5"></td>
				</tr>
			</table>
		</div>
		<p>${pagenation}</p>
	</center>

</body>
</html>