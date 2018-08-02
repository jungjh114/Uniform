<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String service = request.getParameter("service");
		session.setMaxInactiveInterval(60 * 60 * 24);
		if (service == null) {
			service = "Service.jsp";
		}
	%>
	<center>
		<table width="80%">
			<tr valign="top">
				<td width="150px"><jsp:include page="ServiceMenu.jsp" /></td>
				<td><jsp:include page="<%=service%>" /></td>
			</tr>
		</table>
	</center>
</body>
</html>