
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELCAR | Hello :)</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/b31b46a561.js"
	crossorigin="anonymous"></script>



<link href="//fonts.googleapis.com/earlyaccess/hanna.css"
	rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/earlyaccess/nanumgothic.css"
	rel="stylesheet" type="text/css">
<style type="text/css">
.nanum {
	font-family: 'Nanum Barun Gothic';
}
</style>







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
							<a href="../"><i class="fa fa-home"></i> Home</a> <span>회원
								정보</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb end -->
	<!--  매너 등급 -->
	<section class="services spad">
		<div class="container" align="right">
			<div class="section-title">
				<h2>회원 정보</h2>
				<hr width=”” color=”” noshade />





				<!--  회원 탈퇴 -->
				<div class="car__details__sidebar">
					<div class="car__details__sidebar__model" align=left>
						<ul>
							<li><h3>
									<b>탈퇴 안내</b>
								</h3> <span></span></li>
							<br>
							<br>
							<br>
						</ul>
						<ul>
							<li><h5>회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</h5></li>
							<br>
							<br>
							<br>
							<li><h6>
									<b>사용하고 계신 <b style="color: green;">"${id}"</b>아이디는 탈퇴할 경우
										재사용 및 복구가 불가능합니다.
									</b>
									<h6>
										<span></span></li>
							<span style="color: orange;"><b>탈퇴한 아이디는 본인과 타인 모두 재사용
									및 복구가 불가하오니</b> </span>
							<span style="color: black;">신중하게 선택하시기 바랍니다.</span>
							<div style="height: 150px;"></div>
						</ul>

						<ul>
							<li><h6>
									<b>탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.</b>
								</h6></li>
							<li>회원정보 및 드라이버 정보 등 개인형 서비스 이용기록은 모두 삭제되며, 삭제된 데이터는 복구되지
								않습니다.</li>


							<div style="height: 300px;">
								<table border="2" bordercolor="gray" width="500" height="200"
									align="left">
									<tr bgcolor="lightgray" align="center">
									</tr>
									<tr align="center" bgcolor="black">
									</tr>
									<tr>

										<td span style="color: black" bgcolor="darkgray">회원 정보</td>
										<td>이름, 아이디 등 개인 정보 삭제</td>
									</tr>
									<tr>
										<td span style="color: black" bgcolor="darkgray">드라이버 정보</td>
										<td>등록된 드라이버 정보 및 운전면허증 이미지 삭제</td>
									</tr>

								</table>
							</div>

						</ul>
						<br> <br>



					</div>
					<div style="height: 200px;"></div>
					<div class="radio-box" align=left>
						<div style="height: 70px;">
							<span style="color: orange;"><b> 탈퇴 후에는 아이디 <b
									style="color: green;">${id}</b> 로 다시 가입할 수 없으며 아이디와 데이터는 복구할 수
									없습니다.
							</b> </span><br>
						</div>
						<input type="radio" name="radio" id="r1"> <label for="r1"
							style="height: 50px">안내 사항을 모두 확인하였으며, 이에 동의합니다.</label>

					</div>
					<form action="deleteId" method="post">
						<div align=center>
							<div style='width: 150px;'>
								<button type="submit" class="btn btn-danger" id="delete"
									name="delete" style="width: 150px;">회원탈퇴</button>
							</div>
						</div>
					</form>
				</div>
				<!--  회원 탈퇴 끝 -->


			</div>
		</div>
	</section>
</body>
</html>
