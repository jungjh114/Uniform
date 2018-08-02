<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script type="text/javascript">
	function email_change() {
		if (document.join.email.options[document.join.email.selectedIndex].value == '0') {
			document.join.email2.disabled = true;
			document.join.email2.value = "";
		}
		if (document.join.email.options[document.join.email.selectedIndex].value == 'DirectInput') {
			document.join.email2.disabled = false;
			document.join.email2.value = "";
			document.join.email2.focus();
		} else {
			document.join.email2.disabled = true;
			document.join.email2.value = document.join.email.options[document.join.email.selectedIndex].value;
		}
	}
</script>
<style>
.divForm {
	width: 800px;
}
</style>
<style>
hr {
	border-top:1px solid #F12121;
}
</style>
</head>
<body>

	<center>
		<h2>회원가입</h2>
		<div class="divForm">
			<form name="join" action='JoinProc' method='post'>
				<table width='800' class="table table-striped">
					<tr height='30'>
						<td width='150' align='center' bgcolor="#cccccc">아이디</td>
						<td width='550' align='left'><input type='input' name='id'
							size='40'></td>
					</tr>
					<tr height='30'>
						<td width='150' align='center' bgcolor="#cccccc">비밀번호</td>
						<td width='550' align='left'><input type='password'
							name='pass' size='40'></td>
					</tr>
					<tr height='30'>
						<td width='150' align='center' bgcolor="#cccccc">비밀번호확인</td>
						<td width='550' align='left'><input type='password'
							name='pass' size='40'></td>
					</tr>
					<tr height='30'>
						<td width='150' align='center' bgcolor="#cccccc">생년월일</td>
						<td><select name="year">
							<%
									for (int i = 2000; i >= 1950; i--) {
								%>
								<option value="<%=i%>"><%=i%></option>
								<%
									}
								%>
								<option value="year" selected="selected">year</option>
						</select> <select name="month">
							<%
									for (int i = 1; i <= 12; i++) {
								%>
								<option value="<%=i%>월"><%=i%>월</option>
								<%
									}
								%>
								<option value="month" selected="selected">month</option>
						</select> <select name="day">

								<%
									for (int i = 1; i <= 31; i++) {
								%>
								<option value="<%=i%>"><%=i%></option>
								<%
									}
								%>
								<option value="day" selected="selected">day</option>
						</select></td>
					</tr>
					<tr height='30'>
						<td width='150' align='center'>이메일</td>
						<td width='400' align='left'><input type='text' name="email1"
							size='20'> @ <input type="text" name="email2" value=""
							disabled> <select name="email" onchange="email_change()">
								<option value="0" selected="selected">선택하세요</option>
								<option value="DirectInput">직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="nate.com">nate.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="vision.com">vision.com</option>
						</select></td>
					</tr>
					<tr height='30'>
						<td width='150' align='center' bgcolor="#cccccc">주소</td>
						<td width='550' align='left'><input type='text'
							name='address' size='40'></td>
					</tr>
					<tr height='30'>
						<td width='150' align='center' bgcolor="#cccccc">전화번호</td>
						<td width='550' align='left'><input type='tel' name='tel'
							size='40'></td>
					</tr>
					<tr height='30'>
						<td align='center' colspan='2'>
						<input type='submit'value='가입하기'> 
							<input type="reset" value='삭제하기'></td>


					</tr>
				</table>
			</form>
		</div>
	</center>
</body>
</html>