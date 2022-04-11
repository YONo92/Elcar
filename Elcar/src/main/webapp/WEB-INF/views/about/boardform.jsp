<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/ckeditor/ckeditor.js"></script>
</head>
<body>
	<section style="margin-bottom: 100px; margin-top: 30px; height: 700px;">
		<form action="write" method="post">
			<div>
				<input type="radio" name="type" id="type" autocomplete="off"
					required value="1" checked>자유
			    <input type="radio"
					name="type" id="type" autocomplete="off" required value="2">후기
			</div>
			<div>
				제목<input type="text" name="title" style="width: 300px"></input>
				유저아이디<input type="text" name="mem_id" value="${id }" readonly></input>
			</div>
			
			
			<!-- CKEDITOR -->
			<textarea id="editor4" name="content"></textarea>
			<script>
			 CKEDITOR.replace('editor4');
 			</script>


			<input type="submit" value="등록하기">
			<input type="button" onclick="location.href='/boardlist'" value="목록으로">

		</form>
	</section>
</body>
</html>