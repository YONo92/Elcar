
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
							<a href="../"><i class="fa fa-home"></i> Home</a> <span>My
								page</span>
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
				<h2>이용 내역</h2>
				<hr width=”” color=”” noshade />
				<div align="left">
					<h4 style="margin: 50px">
						<b>신고 내역</b>
					</h4>

				</div>

				<hr style="height: 100px;" />

				<div align="left">
					<!-- 신고 내용 시작  -->
					<c:forEach var='dr' items='${drlist }'>
						
						<div class="testimonial__item__author">
							<div class="row">
								<div class='col-lg-2'>
									<input type="text" id="id" value="${dr.date }"
										style="width: 100px; height: 40px;" disabled>

								</div>

								<div class='col-lg-3'>
									<h5 style="font-size: 1.4em; color: black" class="nanum">
										<b> 닉네임 : </b> <span> <b
											style="font-size: 1.2em; color: green;">${dr.minususer }</b></span>
									</h5>
								</div>

								<div class='col-lg-4'>
									<h5 style="font-size: 1.4em; color: black" class="nanum">
										<b> 신고유형 : </b> <span> <b
											style="font-size: 1.2em; color: green;">${dr.category }</b></span>
									</h5>
								</div>

								<div class='col-lg-3'>
												<a href='/singoHistoryDetail/${dr.num }'><input type="text" value="${dr.status  == 0 ? '답변 대기중' : '답변 완료'}"
													class="btn btn-outline-success"
													style="font-size: 1.0em; color: black;">
												</a>
								</div>
							</div>
						</div>
						<hr style="height: 100px;">
					</c:forEach>
					<!-- 신고 내역 끝/// -->


					<!-- 페이지 이동 버튼 -->
					<div class="pagination__option" style="height: 150px;" align=center>
						<a href="#"><span class="arrow_carrot-2left"></span></a> <a
							href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><span
							class="arrow_carrot-2right"></span></a>
					</div>
				</div>
			</div>
			<hr />
			<div class="col-lg-10" style="margin: 1px; height: 15px;">
				<!-- 페이지 이동 버튼 끝/// -->

			</div>
		</div>
	</section>
	<!--  이용 내역 끝 -->
</body>
</html>