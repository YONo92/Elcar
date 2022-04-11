<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/Login.css">
</head>
<body>

<section class="login-form"	style="margin-bottom: 100px; margin-top: 80px; height: 300px;">
		<h1>회원정보를 찾을 수 없습니다.
		</h1>
		<div class="int-area">
		<input type="text" placeholder="조회된 아이디가 없습니다" disabled>
		</div>
			<div class="btn-area">
				<button id="btn" type="button" class="btn btn-dark" style="width: 230px; margin-top: 50px;" onclick="location.href='/joinform'">회원가입</button>
			</div>
	</section>
</body>
</html>