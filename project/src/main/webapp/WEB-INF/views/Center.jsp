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
	<script src="jquery-3.3.1.min.js"></script>


	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://malsup.github.com/jquery.cycle2.js"></script>



	<div class="cycle-slideshow" cycle-slideshow data-cycle-loader="wait"
		data-cycle-timeout=2000 align="center">
		<img src="resources/img/main/Main.jpg" id="img1" width="100%"
			height="600" /> <img src="resources/img/main/Main2.jpg" id="img2"
			width="100%" height="600" /> <img src="resources/img/main/Main3.jpg"
			id="img3" width="100%" height="600" /> <img
			src="resources/img/main/Main4.jpg" id="img4" width="100%"
			height="600" />
	</div>
	<table width="">
		<tr>
			<td align="center" colspan="2"><img
				src="resources/img/main/top.jpg" id="top" width="100%" height="150"></td>
		</tr>
		<tr>
			<td align="center" width="50%"><a href="GoodsSearch?search=포르투칼"><img
					src="resources/img/main/500.jpg" id="Portugal" width="80%"></a><br>
				<strong>Portugal</strong></td>

			<td align="center" width="50%"><a
				href="GoodsSearch?search=아르헨티나"> <img
					src="resources/img/main/argentina.jpg" id="argentina" width="80%"></a>
				<br> <strong>Argentina</strong></td>

		</tr>
		<tr>
			<td align="center" width="50%"><a href="GoodsSearch?search=브라질"><img
					src="resources/img/main/brazil.jpg" id="brazil" width="80%"></a>
				<br> <strong>Brazil</strong></td>


			<td align="center" width="50%"><a href="GoodsSearch?search=잉글랜드">
					<img src="resources/img/main/england.jpg" id="England" width="80%">
			</a> <br> <strong>England</strong></td>
		</tr>
		<tr>
			<td align="center" width="50%"><a href="GoodsSearch?search=프랑스">
					<img src="resources/img/main/france.jpg" id="france" width="80%">
			</a> <br> <strong>France</strong></td>


			<td align="center" width="50%"><a href="GoodsSearch?search=스페인">
					<img src="resources/img/main/spain.jpg" id="spain" width="80%">
			</a> <br> <strong>Spain</strong></td>

		</tr>



	</table>




</body>
</html>