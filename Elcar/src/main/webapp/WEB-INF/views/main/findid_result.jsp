<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/Login.css">
</head>
<body>
<body>
	<section class="login-form"	style="margin-bottom: 100px; margin-top: 80px; height: 300px;">
		<h1>${mem.name }님의 아이디 찾기 결과</h1>
		<div class="int-area">
		<input type="text" placeholder="${mem.id }" disabled>
		</div>
			<div class="btn-area">
				<button id="btn" type="button" class="btn btn-dark" style="width: 230px; margin-top: 50px;" onclick="location.href='/loginform'">로그인</button>
			</div>
	</section>

</body>
</body>
</html>