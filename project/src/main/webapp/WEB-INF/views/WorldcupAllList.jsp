<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품리스트</title>
</head>
<body>
	<center>
		<table bgcolor="#F2F2F2" width="80%">
			<tr>
				<td align="center"><a href="WorldcupAllList"
					style="text-decoration: none"><font color="black" size="2"><strong>전체</strong></font></a></td>
				<c:forEach items="${listGroup}" var="group" varStatus="status">
					<td align="center"><a
						href="WorldcupCategory?group=${group.uni_Group}"
						style="text-decoration: none"> <font color="black" size="3"><strong>${group.uni_Group}</strong></font></a></td>
				</c:forEach>
			</tr>
		</table>
		<br />
		<table>
			<tr>
				<td align="center" colspan="3"><font size="6" color="gray">전체
						상품 보기(${currentPage}/${pageCount})</font></td>
			</tr>
			<c:forEach items="${list}" var="dto" varStatus="status">
				<c:if test="${status.index % 3 == 0}">
					<tr height="220">
				</c:if>
				<td width="300" align="center"><a
					href="CarReserveInfo?no=${dto.uni_No}&fromPage=CarAllList"> <img
						alt="" src="resources/img/${dto.img}" width="300" height="200">
				</a>
					<p>
						<font size="3" color="gray"><b>${dto.uni_Name}</b>
							<p>
								<b>${dto.price} 원</b></font></td>
				<c:if
					test="${status.index % 3 == 2 || status.index == (rowCount -1)}">
					</tr>
					<tr>
						<td colspan="3"><hr> <br /></td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		<p>${pagenation}
	</center>
</body>
</html>