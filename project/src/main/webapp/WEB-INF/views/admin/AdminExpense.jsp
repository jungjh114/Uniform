<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	type="text/css">
<style>
hr {
	border-top: 2px solid red;
}
</style>
</head>
<body>
	<center>
		<div style="width: 500px;">
			<form action="ExpenseProc" method="get">
				<table class="table">
					<tr>
						<td align="center"><h2>기간선택</h2></td>
					</tr>
					<tr height="80">
						<td align="center"><br /> <input type="date"
							name="startDate"> ~ <input type="date" name="endDate"><br />
						<br /></td>
					</tr>
					<tr height="80">
						<td align="center"><input type="submit" value="검색"></td>
					</tr>
				</table>
			</form>
		</div>
	</center>

</body>
</html>