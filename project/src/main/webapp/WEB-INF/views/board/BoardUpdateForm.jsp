<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>보드 업데이트 폼</title>
</head>
<body>


	<center>
		<h2>게시글수정</h2>
		<form action="BoardUpdateProc" method="post">
			<div style="width: 60%;">
			<table width="600" class="table">
				<tr height="40">
					<td width="120" align="center" bgcolor="#E6E6E6">작성자 ID</td>
					<td width="180" align="center">${dto.member_Id}</td>
					<td width="120" align="center" bgcolor="#E6E6E6">작성일</td>
					<td width="180" align="center">${dto.board_Date}</td>
				</tr>

				<tr height="40">
					<td width="120" align="center" bgcolor="#E6E6E6">제목</td>
					<td width="480" colspan="3">&nbsp; <input type="text"
						name="subject" value="${dto.board_Title}" size="100%"></td>
				</tr>
				<tr height="40">
					<td width="120" align="center" bgcolor="#E6E6E6">패스워드</td>
					<td width="480" colspan="3">&nbsp; <input type="password"
						name="password" size="100%"></td>
				</tr>
				<tr height="40">
					<td width="120" align="center" bgcolor="#E6E6E6">글내용</td>
					<td width="480" colspan="3"><textarea rows="10" cols="100%"
							name="content">${dto.board_Content}</textarea></td>
				</tr>
				<tr>

					<td colspan="4" align="center"><input type="hidden" name="num"
						value="${dto.board_No}"> <input type="submit" value="글수정">
						&nbsp;&nbsp; <input type="button"
						onclick="location.href='BoardList'" value="전체글보기"></td>
				</tr>
			</table>
			</div>
		</form>
	</center>
</body>
</html>