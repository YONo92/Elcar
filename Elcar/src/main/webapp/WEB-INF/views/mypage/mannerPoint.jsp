
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
							<a href="../"><i class="fa fa-home"></i> Home</a> <span>My
								Page</span>
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
				<h2>매너 포인트</h2>
				<hr width=”” color=”” noshade />
				<div align="left">
					<h4>
						<b>나의 매너 포인트</b>
					</h4>
					<div style="height: 80px;"></div>

					<!-- 현재 매너 포인트는~~ 위치 변경 -->

					<div style="height: 100px;" align="center">
						<span style="font-size: 2em; color: green;">${id } </span> <span
							style="font-size: 2em; color: black;"> 님의 현재 매너 포인트는 </span> <span
							style="font-size: 2em; color: darkblue;">${member.point }
						</span> <span style="font-size: 2em; color: black;"> 입니다. </span>
					</div>

				</div>

				<hr />
				<div style="height: 80px;"></div>
				<div align="left">
					<h4>
						<b>기사역할을 했을 때</b>
					</h4>
					<div style="height: 30px;"></div>
					<div class="row">
						<div class='col-3' style="height: 80px;">
							<select style="display: none;">
								<option value="">태울래</option>
							</select>
						</div>
					</div>
			

					<!-- 멤버 별 이용 평가  -->
					<div class="testimonial__item__author" style="height: 200px;">
						<c:forEach var="history" items="${historyDrivingList }">
							<div class="row">
							<div style="height=200px;"></div>
								<div class='col-lg-2'>
									${history.date}
									<!--	<i class="fa-solid fa-circle-user">
											</i></div> -->
								</div>
								<div class='col-lg-2'>
									<h5 style="font-size: 1.7em; color: green" >
										${history.giver_id }<span> <b
											style="font-size: 1.5em; color: black;">님이</b></span>
									</h5>
								</div>

								<div class='col-lg-1'>
									<div class="services__item3">
										<a id="point" ><b>${history.point }</b></a>
									</div>
								</div>

								<div class='col-lg-3'>
									<span style="font-size: 1.4em; color: black;"> <b>점을
											주셨습니다.</b>
									</span>
								</div>


								<div class='col-lg-4'>

									<botton type="submit" class="btn btn-outline-success"
										style="font-size: 1.3em; color: black;"> <i
										class="fas fa-car"> 출발지</i> </botton>

									<botton type="submit" class="btn btn-outline-success"
										style="font-size: 1.3em; color: black; "> <i
										class="fas fa-car"> 도착지</i> </botton><br><br><br>

								</div>
								
								
							</div>
						</c:forEach>
					</div>
					
					
							<hr style="height:120px;">
					
					<h4>
						<b>뚜벅이</b>
					</h4>
					<div style="height: 30px;"></div>
					<div class="row">
						<div class='col-3' style="height: 80px;">
							<select style="display: none;">
								<option value="">탈래</option>
							</select>
						</div>
					</div>
					<div class="testimonial__item__author" style="height: 400px;">
						<c:forEach var="history" items="${historyDDubukList }">
							<div class="row">
								<div class='col-lg-2'>
									${history.date}
									<!--	<i class="fa-solid fa-circle-user">
											</i></div> -->
								</div>
								<div class='col-lg-2'>
									<h5 style="font-size: 1.7em; color: green" id="sincheng_id"
										name="sincheng_id">
										${history.giver_id }<span> <b
											style="font-size: 1.5em; color: black;">님이</b></span>
									</h5>
								</div>

								<div class='col-lg-1'>
									<div class="services__item3">
										<a id="point" name="point"><b>${history.point }</b></a>
									</div>
								</div>

								<div class='col-lg-3'>
									<span style="font-size: 1.4em; color: black;"> <b>점을
											주셨습니다.</b>
									</span>
								</div>


								<div class='col-lg-4'>

									<botton type="submit" class="btn btn-outline-success"
										style="font-size: 1.3em; color: black;"> <i
										class="fas fa-car"> 출발지</i> </botton>

									<botton type="submit" class="btn btn-outline-success"
										style="font-size: 1.3em; color: black;"> <i
										class="fas fa-car"> 도착지</i> </botton><br><br><br>

								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>

		</div>
	</section>
	<!--  매너 등급 끝 -->
</body>
</html>