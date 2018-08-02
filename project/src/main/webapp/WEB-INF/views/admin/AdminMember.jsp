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
		<h3>회원 정보</h3>
		<br/>
		<div style="width: 1000px;">
			<table class="table table-striped">
				<tr>
					<th>회원 아이디</th>
					<th>회원 이름</th>
					<th>이메일</th>
					<th>전화번호</th>
					<th>주소</th>
					<th>생년월일</th>
					<th>포인트</th>
				</tr>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.member_Id}</td>
						<td>${dto.name}</td>
						<td>${dto.email}</td>
						<td>${dto.tel}</td>
						<td>${dto.address}</td>
						<td>${dto.birth}</td>
						<td>${dto.point}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</center>

</body>
</html>