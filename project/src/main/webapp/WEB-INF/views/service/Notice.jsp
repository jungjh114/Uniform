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
</style>
</head>

<body>

	<center>
		<h1>공지사항</h1>
		<div style="width: 1200px">
			<table width="80%" class="table">
				<colgroup>
					<col style="width: 10%">
					<col style="width: 20%">
					<col>
				</colgroup>
				<tr height="50">
					<th>번호</th>
					<th>분류</th>
					<th>내용</th>
				</tr>
				<tr height="50">
					<td>1</td>
					<td>[공지]</td>
					<td><a
						onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';"href="javascript:void(0)"><font color="black" size="2">사이트 오픈!</font></a><div style="display: none">
							<img src="resources/img/service/open.png"
								style="max-width: 100%; height: auto; margin-top: 10px;">
						</div></td>
				</tr>
				<tr height="50">
					<td>2</td>
					<td>[공지]</td>
					<td><a
						onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';"href="javascript:void(0)"><font color="black" size="2">배송관련 안내!</font></a><div style="display: none">
							<img src="resources/img/service/baesong.png"
								style="max-width: 100%; height: auto; margin-top: 10px;">
						</div></td>
				</tr>
				<tr height="50">
					<td>3</td>
					<td>[공지]</td>
					<td><a
						onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';"href="javascript:void(0)"><font color="black" size="2">100%정품만을 판매합니다.</font></a><div style="display: none">
							<img src="resources/img/service/jungpum.png">
						</div></td>
				</tr>
			</table>
		</div>
	</center>
</body>
</html>