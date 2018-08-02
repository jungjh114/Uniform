<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.topFixBannerFixed {
	top: 0px;
	padding: 0px 0px 0px 0px;
	position: fixed;
	width: 100%;
	background-color: #F2F2F2;
}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String center = request.getParameter("center");
		session.setMaxInactiveInterval(60 * 60 * 24);
		if (center == null) {
			center = "Center.jsp";
		}
		String id = (String) session.getAttribute("id");
		if (id == null) {
			id = "GUEST";
		}
	%>
	<center>
		<div class="topFixBannerFixed">
			<table width="100%" class='font'>
				<tr height="40">
					<td width="70%" align="right">
						<form action="GoodsSearch" method="get">
							<strong>Search</strong> &nbsp;&nbsp; <input type="text"
								name="search"> <input type="submit" class="btn btn-info"
								value="검색">
						</form>
					</td>
					<td align="right"><a href="Basket"
						style="text-decoration: none"><font color="black" size="2"><strong>장바구니</strong></font></a></td>
					<td align="right"><a href="MyPage"
						style="text-decoration: none"><font color="black" size="2"><strong>마이페이지</strong></font></a></td>
					<td align="right"><font color="black" size="2"><strong><%=id%></strong></font></td>
					<td>&nbsp;&nbsp; <%
 	if (id.equals("GUEST")) {
 %>
						<button class="btn btn-info" onclick="location.href='Login'">로그인</button>
						<%
							} else {
						%>
						<button class="btn btn-info" onclick="location.href='Logout'">로그아웃</button>
						<%
							}
						%>
					</td>
					<%
						if (id.equals("admin")) {
					%><td><button class="btn btn-info"
							onclick="location.href='AdminMain'">관리자</button></td>
					<%
						}
					%>
				</tr>
			</table>
		</div>
	</center>
	<table width="100%">

		<tr height="140" align="center">
			<td align="center"><jsp:include page="Top.jsp" /></td>
		</tr>
		<tr height="140" align="center">
			<td align="center"><jsp:include page="<%=center%>" /></td>
		</tr>
		<tr height="2">
			<td><br /> <br />
				<hr color="black"></td>
		</tr>
		<tr height="110" align="center">
			<td align="center"><jsp:include page="Bottom.jsp" /></td>
		</tr>
	</table>
</body>
</html>