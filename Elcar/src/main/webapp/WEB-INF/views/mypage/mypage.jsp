
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Our Services</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>

<body>
	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-option set-bg"
		data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
                        <a href="./mypage"><h2>My page</h2></a>
						<div class="breadcrumb__links">
							<a href="./index.html"><i class="fa fa-home"></i> Home</a> 
							<span>전기차충전소</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- MyPage Section Begin -->
	<section class="services spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<span>마이 페이지</span>
						<h2>My page</h2>
						<span style="color: green;">${member.name } </span> <span
							style="color: black;">님의 마이페이지 입니다.</span>
						<hr width=”” color=”” noshade />
					</div>
				</div>
			</div>
		

		<div class="row">
			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="services__item2">
					<div class="pb-5">
						<h4><b>회원 정보</b></h4>
					</div>
					<div class="blog__sidebar__categories">
						<ul>
							<li><a href="checkPw"><b>비밀번호 변경</b></a></li>
							<li><a href="mypageMyinfo"><b>프로필 보기</b></a></li>
							<li><a href="driverInfo"><b>드라이버 정보</b></a></li>
							<li><a href="tal"><b>회원 탈퇴</b></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="services__item2">
				
					<div class="pb-5">
						<h4><b>매너 포인트</b></h4>
					</div>
					
					<div class="blog__sidebar__categories">
						<ul>
							<li><a href="mannerPoint"><b>나의 매너 포인트</b></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="services__item2">
					<div class="pb-5">
					<h4>
						<b>이용 내역</b>
					</h4>
					</div>
					
					<div class="blog__sidebar__categories">
						<ul>
							<li><a href="history"><b>카쉐어링 이용내역</b></a></li>
							<li><a href="singo"><b>카쉐어링 신고</b></a></li>
							<li><a href="singoHistory"><b>카쉐어링 신고 내역</b></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="services__item2">
				<div class="pb-5">
					<h4>
						<b>신청 내역</b>
					</h4>
					</div>
					
					<div class="blog__sidebar__categories">
						<ul>
							<li><a href="taewoolraeSurak"><b>카쉐어링 태울래 수락내역</b></a></li>
							<li><a href="talgaeSincheng"><b>카쉐어링 탈래 신청내역</b></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		</div>
	
	</section>
	<!-- MyPage Section End -->	
		
</body>
<script>
	$(document).ready(function () {
		let alertMsg = `${alertMsg}`;
		if(alertMsg) {
			alert(alertMsg);
		}
	})
	
</script>
</html>