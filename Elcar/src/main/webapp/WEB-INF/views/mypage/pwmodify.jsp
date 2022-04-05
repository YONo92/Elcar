<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELCAR | Hello :)</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<!-- Breadcrumb End -->
	<div class="breadcrumb-option set-bg"
		data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<a href="./mypage"><h2>My page</h2></a>
						<div class="breadcrumb__links">
							<a href="../"><i class="fa fa-home"></i> Home</a> <span>My page</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 현재 비밀번호 입력 -->
	<section class="services spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">

			<!--  폼태그 시작  @PostMapping(value = "pwmodify")-->
				<form action="pwmodify" method="post">
					<div class="section-title" style="height: 550px;">
						<h2>비밀번호 변경</h2>
						<hr width=”” color=”” noshade />
						<div align="left" style="width: 380px; height: 200px;">
							<span style="color: green;"><b>변경할 비밀번호</b></span><span
								style="color: black;">를 입력해주세요.</span>
						</div>
						<div align="center" style="height: 100px;">
							<label for="name" style="width: 200px; height: 200px;"><h4>
									<b>새 비밀번호 </b>
								</h4></label> <input type="password" id="name"
								style="width: 250px; height: 45px;">
						</div>

						<div align="center" style="height: 250px;">
							<label for="name" style="width: 200px; height: 200px;"><h4>
									<b>비밀번호 확인</b>
								</h4></label> <input type="password" id="name"
								style="width: 250px; height: 45px;">
						</div>
						<button type="submit" class="site-btn" style="width: 380px;">다음</button>
					</div>
				</div>
			</form>
			<!--  폼태그 종료 -->

			</div>
		</div>
	</section>

	<!-- 현재 비밀번호 입력 끝-->
	
</body>
<script>
	$(document).ready(function () {
		let equalPw = '${equalPw}';
		if(equalPw) {
			alert(equalPw);
		}
		// 폼태그가 작동 되기 전에 비밀번호 입력과 확인을 비교해서 일치해야 컨트롤러로 이동
	})


</script>

</html>
	