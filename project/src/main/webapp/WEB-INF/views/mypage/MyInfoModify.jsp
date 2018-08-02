<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	type="text/css">
<style>
hr {
	border-top: 2px solid red;
}

.centering {
	text-align: center;
}
</style>
</head>
<body>
	<center>
		<div class="centering">
			<b>배송받으실 주소는, 실제 주문시에도 변경하실 수 있습니다.</b><br> <br>
		</div>
		<form action="UpdateProc">
			<div style="width: 600px;">


				<div class="form-group" align="left">
					<label>변경할 이메일 </label> <input type="text" class="form-control"
						name="email" value="${dto.email}" required>
				</div>


				<div class="form-group" align="left">
					<label>변경할 연락처</label> <input type="text" class="form-control"
						name="tel" value="${dto.tel}" required>
				</div>



				<div class="form-group" align="left">
					<label>주소변경 </label> <input type="text" class="form-control"
						name="address" value="${dto.address}" required>
				</div>

				<input type="submit" class="btn btn-primary" value="정보수정">&nbsp;&nbsp;<input
					type="reset" class="btn btn-primary" value="다시 작성">
			</div>
		</form>
	</center>
</body>
</html>