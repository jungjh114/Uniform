<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전, 영원한 행복을 찾아 떠납니다!</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		int res = (Integer) request.getAttribute("res");
		if (res == 2) {
	%>
	<script>
		alert('탈퇴코드를 잘못 입력하였습니다.');
		history.go(-1);
	</script>
	<%
		} else if (res == 3) {
	%>
	<script>
		alert('비밀번호를 확인해주세요.');
		history.go(-1);
	</script>
	<%
		} else if (res == 1) {
	%>
	회원님의 탈퇴 처리가 완료되었습니다.
	<br> 그 동안 저희 ALIVE Sports를 이용해 주셔서 감사합니다.
	<br> 언젠가, 더 나은 모습으로 또 뵐 수 있기를.
	<br>
	<br>

	<a href="Main">이 문장을 클릭하시면 메인 페이지로 이동합니다.</a>
	<%
		}
	%>
</body>
</html>