<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style.css" />
<style>
hr {
	border-top: 2px solid #F12121;
}
</style>
</head>
<body>
	<%
		int res = (Integer) request.getAttribute("res");
		if (res == 1) {
	%>
	<script>
		alert('로그인이 필요합니다.');
		location.href = 'Login';
	</script>
	<%
		}
	%>
	<center>
		<h3>게시글 작성</h3>

		<div style="width: 60%;">
			<form action="BoardWriteProc" method="post">
				<div class="form-group" align="left">
					<label>Wrier ID</label> <br> <font color="lightblue" size="3">
						${id} </font>
				</div>

				<div class="form-group" align="left">
					<label>Title</label> <input type="text" class="form-control"
						name="board_Title" aria-describedby="emailHelp"
						placeholder="제목을 입력해주세요.">
				</div>


				<div class="form-group" align="left">
					<label>Password</label> <input type="password" class="form-control"
						name="board_Pass" placeholder="Password"> <small
						class="form-text text-muted">글을 삭제 or 수정 하기위해선 비밀번호를
						기억해주세요.</small>
				</div>

				<div class="form-group" align="left">
					<label>Example textarea</label>
					<textarea class="form-control" name="board_Content" rows="3"
						placeholder="내용을 입력해주세요."></textarea>
				</div>




				<button type="submit" class="btn btn-primary">Submit</button>
				&nbsp;&nbsp; <input type="reset" value="Reset"
					class="btn btn-primary"> &nbsp;&nbsp; <input type="button"
					value="BoardList" class="btn btn-primary"
					onclick="location.href='BoardList'">

				<table>
					<tr height="40">
						<td align="center" colspan="2" width="600"><input
							type="hidden" name="id" value="${id}">
					</tr>
				</table>
			</form>
		</div>
	</center>
</body>
</html>