<%@page import="java.sql.SQLException"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>답글쓰기</title>
</head>
<body>

	<center>
		<h2>답변글 입력하기</h2>
		<form action="BoardReWriteProc" method="post">
			<table width="600">
				<tr height="40">
					<td width="150" align="center" bgcolor="lightgreen">작성자ID</td>
					<td width="450">관리자님</td>

				</tr>
				<tr height="40">
					<td width="150" align="center" bgcolor="lightgreen">제목</td>
					<td width="450"><input type="text" name="board_Title"
						value="[답변]" size="60"></td>
				</tr>

				<tr height="40">
					<td width="150" align="center" bgcolor="lightgreen">비밀번호</td>
					<td width="450"><input type="password" name="board_Pass"
						size="60"></td>
				</tr>
				<tr height="40">
					<td width="150" align="center" bgcolor="lightgreen">글내용</td>
					<td width="450"><textarea name="board_Content" rows=10
							cols="60"></textarea></td>
				</tr>
				<tr height="40">
					<td colspan="2" align="center"><input type="hidden" name="ref"
						value="${dto.ref}"> <input type="hidden" name="ref_Step"
						value="${dto.ref_Step}"> <input type="hidden"
						name="ref_Level" value="${dto.ref_Level}"> <input
						type="submit" value="답글입력"> &nbsp; &nbsp; <input
						type="reset" value="취소하기"> &nbsp; &nbsp; <input
						type="button" onclick="location.href='BoardList'" value="모두보기">
						&nbsp; &nbsp;</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>