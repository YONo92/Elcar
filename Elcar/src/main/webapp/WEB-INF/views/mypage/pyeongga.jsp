
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELCAR | Hello :)</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/b31b46a561.js" crossorigin="anonymous"></script>

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
	<!-- Breadcrumb end -->


	<!--  매너 등급 -->
	<!--  매너 등급 -->
	<section class="services spad">
		<div class="container" align="right">
			<div class="section-title">
				<h2>이용 내역</h2>
				<hr width=”” color=”” noshade />
				<div align="left">
					<h4>
						<b class="txtBox10">평가하기</b>
					</h4>
					<hr style=" height:100px;">

					<!-- 현재 매너 포인트는~~ 위치 변경 -->
					
				<div align="left">



					<!-- 멤버 별 이용 평가  -->
					<div class="testimonial__item__author">
						<div class="row">
							<div class='col-lg-2'>
								$[date]
								
							</div>
							<div class='col-lg-2'>
								<h5 style="font-size: 1.7em; color: green"> ${name }<span> <b style="font-size: 1.5em; color: black;">님을</b></span> </h5>
							</div>			
							
							<div class='col-lg-2'>
							<span style="font-size: 1.4em; color: black;">
								<b>평가해주세요.</b>
							</span>
							</div>
							
							
							<div class='col-lg-1 txtBox10' style="cursor: pointer">
							<span style="font-size: 1.4em; color: black;">
								<b>좋음</b>
							</span>
							</div>
						
							<div class='col-lg-1'>
								<div class="services__item3">
									<a id="point"><b>5</b></a>
								</div>
							</div>
							
							<div class='col-lg-1 txtBox10'>
							<span style="font-size: 1.4em; color: black;">
								<b>보통</b>
							</span>
							</div>
							
							<div class='col-lg-1'>
								<div class="services__item3">
									<a id="point"><b>3</b></a>
								</div>
							</div>
							
							<div class='col-lg-1 txtBox10'>
							<span style="font-size: 1.4em; color: black;">
								<b>나쁨</b>
							</span>
							</div>
							
							<div class='col-lg-1'>
								<div class="services__item3">
									<a id="point" onclick=""><b>-1</b></a>
								</div>
							</div>
							</div>
							</div>
							</div>
							</div>
							</div>
							</div>
					<hr style="height:150px;">	
					
					
					
					<div align=center>
					<button type="submit" class="site-btn" >평가하기</button>
					</div>
					<!--이용 평가 /// -->
					
					
					
	
	</section>
	<!--  매너 등급 끝 -->
</body>
</html>