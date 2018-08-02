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
	<%
		int currentPage = (Integer) request.getAttribute("currentPage");
		int currentBlock = (Integer) request.getAttribute("currentBlock");
		// 수정,댓글, 삭제 후 현재위치로 돌아오게 하기 위해 현 위치값을 세션에 저장
		session.setAttribute("currentPage", currentPage);
		session.setAttribute("currentBlock", currentBlock);
	%>
	<center>
		<h2>배송정보(${currentPage}/${pageCount})</h2>
		<div style="width: 1000px;">
			<form>
				<table class="table table-striped">
					<tr>
						<th>판매번호</th>
						<th>판매코드</th>
						<th>상품번호</th>
						<th>판매수량</th>
						<th>판매가격</th>
						<th>배송주소</th>
						<th>요청사항</th>
						<th>배송확인</th>
						<th></th>
					</tr>
					<c:forEach items="${list}" var="dto" varStatus="status">
						<tr>
							<td>${dto.sale_No}</td>
							<td>${dto.sale_Code}</td>
							<td>${dto.goods_No}</td>
							<td>${dto.qty}</td>
							<td>${dto.price}</td>
							<td>${dto.address}</td>
							<td>${dto.claim}</td>
							<td>${dto.send}</td>
							<td><c:if test="${dto.send eq 'no'}">
									<input type="button"
										onclick="location.href='SendProc?sale_No=${dto.sale_No}'"
										value="배송완료">
								</c:if></td>
						</tr>
					</c:forEach>
				</table>
			</form>
			<p>${pagenation}</p>
		</div>
	</center>

</body>
</html>