<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지 전체 틀</title>
</head>
<body>
	<%
		String myArea = request.getParameter("myArea");
		if (myArea == null) {
			myArea = "MyPageMain.jsp";
		}
	%>
	<table width="80%">
		<tr valign="top">
			<td width="150"><jsp:include page="MyPageSideBar.jsp" /></td>
			<td><jsp:include page="<%=myArea%>" /></td>
		</tr>
	</table>
</body>
</html>