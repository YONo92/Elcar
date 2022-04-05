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



<link href="//fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet" type="text/css">
	<link href="//fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet" type="text/css">
	<style type="text/css">
	.nanum { font-family: 'Nanum Barun Gothic'; }
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
							<a href="../"><i class="fa fa-home"></i> Home</a> <span>My Page</span>
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
				<h2>신청 내역</h2>
				<hr width=”” color=”” noshade />
				<div align="left">
					<h4 style="margin:50px">
						<b>탈래 신청 내역</b>
					</h4>
					
					
					<div align="center" style="height:100px;">						
						<span style="font-size: 2em; color: green;">$[id] </span>
						<span style="font-size: 2em; color: black;"> 님이</span>
						<span style="font-size: 2em; color: green;">$[id] </span>
						<span style="font-size: 2em; color: black;"> 님의 탈래를 수락하셨습니다. <- 아직 매칭 미완..</span>
					</div>
					
					<div align="center" style="height:100px;">						
						<span style="font-size: 2em; color: black;"> 아직 매칭중인 회원이 없습니다.</span>
					</div>
					
					<div align="center" style="height:100px;">						
						<span style="font-size: 2em; color: green;">$[id] </span>
						<span style="font-size: 2em; color: black;"> 님과</span>
						<span style="font-size: 2em; color: black;"> 매칭되셨습니다.</span>
					</div>
					
				</div>

				<hr />

				<div align="left">





					<!-- 태울래 거절  -->
					<div class="testimonial__item__author" >
						<div class="row">

							<div class='col-lg-1'>
								22.03.26
								 16:30
								
							</div>
							<div class='col-4'>
							<span> <b style="font-size: 1.2em; color: black;">근처</b></span>
									<b style="font-size: 1.4em; color: green" class="nanum"> $[name] 
									<span> <b style="font-size: 1.2em; color: black;">님이 탈래를 수락했습니다.</b></span>
									 </b>
							</div>
		
		
							<div class='col-lg-3'>
								
								<botton type="submit" class="btn btn-outline-success" style="font-size: 1.0em; color: black;">
									<i class="fas fa-car"> 출발지</i>
								</botton>
								
								<botton type="submit" class="btn btn-outline-success" style="font-size: 1.0em; color: black;">
									<i class="fas fa-car"> 도착지</i>
								</botton>
								</div>
								
								
								
							<div class='col-lg-3'>
								
								<botton type="submit" class="btn btn-outline-success" style="font-size: 1.0em; color: black;">
									 수락
								</botton>
								
								<botton type="submit" class="btn btn-outline-success" style="font-size: 1.0em; color: black;">
									 거절
								</botton>

						</div>
						</div>
								

						</div></div>
					</div>	
					<hr>
					<!-- 태울래 거절 끝/// -->
					
					
					
					
					
					
					
					
					
					
					
					<!-- 페이지 이동 버튼 -->
					<div class="pagination__option" style=" height:150px;" align=center>
					<a href="#"><span class="arrow_carrot-2left"></span></a>
                        <a href="#" >1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#"><span class="arrow_carrot-2right"></span></a>
                    </div>
				</div>
			</div>
			<hr />
			<div class="col-lg-10" style="margin: 1px; height: 15px;">
				<!-- 페이지 이동 버튼 끝/// -->

			</div>
			
			
			

</body>
</html>