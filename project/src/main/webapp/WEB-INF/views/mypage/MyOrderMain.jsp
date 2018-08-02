<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<title>내 주문정보 첫화면</title>
<style>
hr {
	border-top: 2px solid #F12121;
}
</style>
</head>
<body>
	<h2>검색기간설정</h2>
	<div style="border: solid 1px; border-color: gray; padding: 20px;">
		<form method="GET" action="MyOrderMainSelect">
			<fieldset>
				<span><a href="MyOrderMainDate?day=0"><input
						type="button" class="btn btn-secondary" value="오늘"
						style="margin: 3px;"></a><a href="MyOrderMainDate?day=7"><input
						type="button" class="btn btn-secondary" value="1주일"
						style="margin: 3px;"></a><a href="MyOrderMainDate?day=30">
						<input type="button" class="btn btn-secondary" value="1개월"
						style="margin: 3px;">
				</a><a href="MyOrderMainDate?day=90"> <input type="button"
						class="btn btn-secondary" value="3개월" style="margin: 3px;"></a><a
					href="MyOrderMainDate?day=180"> <input type="button"
						class="btn btn-secondary" value="6개월" style="margin: 3px;">
				</a> </span> <input name="startDate" value="2018-04-18" type="date"
					style="margin: 3px;">&nbsp;&nbsp;~&nbsp;&nbsp; <input
					name="endDate" type="date" style="margin: 3px;" value="${today}">
				<input type="submit" value="조회" class="btn btn-dark"
					style="margin: 3px;">
			</fieldset>
		</form>
	</div>
	<p>
	<ul>
		<li>'기본적으로 최근 3개월간의 자료가 조회되며 , 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
		<li>'주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
		<li>'취소/교환/반품 신청은 주문완료일 기준 30일까지 가능합니다.'</li>
	</ul>

	<div class="table">
		<br /> <br />

		<h2>주문 상품 정보</h2>
		<br />
		<table width="90%" align="left">

			<tr align="center">
				<th width="200"><h3>주문일</h3></th>
				<th width="80"><h3>이미지</h3></th>
				<th width="200"><h3>상품이름</h3></th>
				<th width="80"><h3>수량</h3></th>
				<th width="150"><h3>상품구매금액</h3></th>
				<th width="300"><h3>배송지</h3></th>
				<th width="280"><h3>추가사항</h3></th>

			</tr>
			<c:forEach var="dto" items="${list}">
				<tr height="80">
					<td align="center"><h4>
							<br />${dto.sale_Date}</h4></td>
					<td align="center"><img alt="" src="resources/img/${dto.img}"
						height="80"></td>
					<td align="center">
						<h4>
							<br />${dto.goods_Name}</h4>
					</td>


					<td align="center">
						<h4>
							<br />${dto.qty}</h4>
					</td>
					<td align="center"><h4>
							<br />${dto.price}</h4></td>
					<td align="center"><h5>
							<br />${dto.address}</h5></td>
					<td align="center"><h4>
							<br />${dto.claim}</h4></td>

				</tr>

			</c:forEach>
			<tr align="center">
				<td colspan="7" height="5px;"><p>${pagenation}</p></td>
			</tr>
		</table>
	</div>
</body>
</html>