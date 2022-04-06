<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/Login.css">
</head>
<body>
	<section class="login-form"	style="margin-bottom: 100px; margin-top: 30px; height: 300px;">
		<h1>아이디 찾기</h1>
		<form action='findId' method='post'>
			<div class="int-area">
				<input type="text" name="name" id="name" autocomplete="off" required>
				<label for="name">가입시 등록한 이름 입력하세요.</label>
			</div>
			<div class="int-area">
				<input type="text" name="birth" id="birth" autocomplete="off"required>
				 <label for="birth">가입시 등록한 8자리 생년월일을	 입력하세요.</label>
			</div>

			<div class="btn-area">
				<button id="btn" type="submit" class="btn btn-dark" style="width: 230px; margin-top: 50px;">아이디 찾기</button>
			</div>
		</form>
	</section>

</body>
<script>

let name = $('#name');
let birth = $('#birth');
let btn = $('#btn');


$(btn).on('click', function(){
	  if($(name).val() =="") {
	        $(name).next('label').addClass('warning');
	        setTimeout(function() {
	            $('label').removeClass('warning');
	        },1500);
	    }
	    else if($(birth).val() == ""){
	        $(birth).next('label').addClass('warning');
	    }
});
</script>
</html>