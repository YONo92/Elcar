<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/ckeditor/ckeditor.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>

<div class="breadcrumb-option set-bg"
		data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Board Write</h2>
						<div class="breadcrumb__links">
							<a href="boardlist"><i class="fa fa-home"></i> Board</a> <span>write
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<section style="margin-bottom: 100px; margin-top: 30px; height: 700px;">
			<form action="write" method="post">
			<div>
				<input type="radio" name="type" id="type1" autocomplete="off" required value="1" checked>자유
			    <input type="radio"	name="type" id="type2" autocomplete="off" required value="2">후기
			</div>
			<div id="location" style=display:none>
				지역<input type="text" name="location" style="width: 300px"/>
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
			</form>
			<input type="button" onclick="location.href='/boardlist'" value="목록으로">
	</section>
</body>
<script>
$(document).ready(function(){
	 
    // 라디오버튼 클릭시 이벤트 발생
    $("input:radio[name=type]").click(function(){
 
        if($("input:radio[name=type]:checked").val() == "2"){
            $("#location").css("display","block");
            // radio 버튼의 value 값이 1이라면 활성화
 
        }else if($("input:radio[name=type]:checked").val() == "1"){
        	$("#location").css("display","none");
            // radio 버튼의 value 값이 0이라면 비활성화
        }
    });
});
</script>
</html>