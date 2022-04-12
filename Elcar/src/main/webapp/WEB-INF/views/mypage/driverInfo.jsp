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
								Page</span>
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
				<div align="left">
					<h4 style="margin: 50px">
						<b>드라이버 정보</b>
					</h4>
					<div align="center" style="height: 100px;">
						<span style="font-size: 1.7em; color: green;">${id} </span>
						<c:choose>
							<c:when test="${driver.status == 0 }">
								<span style="font-size: 1.7em; color: black;"> 님의 드라이버
									신청이 인증 대기중입니다.</span>
							</c:when>
							<c:when test="${driver.status == 2 }">
								<span style="font-size: 1.7em; color: black;"> 님의 드라이버
									신청이 거절되었습니다.</span>
							</c:when>
							<c:when test="${driver.status == 1 }">
								<span style="font-size: 1.7em; color: black;"> 님의 드라이버
									신청이 인증되었습니다.</span>
							</c:when>
							<c:otherwise>
								<span style="font-size: 1.7em; color: black;">님! 드라이버 신청을
									진행해주시기 바랍니다. </span>
								<br>
								<br>
								<div class='header__menu'>
									<ul>
										<li><a href="/driver-regist">신청 페이지로 이동.</a></li>
									</ul>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
		<hr style="height: 100px;" />


		<c:if test="${driver != null }">

			<!-- 드라이버 신청 내용 -->
			<div class="container">
				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<div class="row">
							<div class="col-lg-5">
								<img id="preview"
									style="width: 350px; height: 250px; margin-left: 90px; margin-top: 100px;"
									src="resources/upload/${driver.img }" /> <br /> <br />
							</div>
							<div class="col-lg-7">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">드라이버 등록</h1>
									</div>
									<div class="row mb-4">
										<div class="input-group col-6">
											<input type="text" class="form-control form-control-user"
												id="exampleId" name="id" value=${driver.id } readOnly
												style="height: 40px;">
										</div>
										<div class="input-group col-6">
											<input type="text" class="form-control form-control-user"
												id="exampleName" name="name" value=${driver.name } readOnly
												style="height: 40px;">
										</div>
									</div>
									<div class="row mb-4">
										<div class="input-group col-12">
											<label class="input-group-text mr-2" for="inputGroupSelect01">차종</label>
											<input type="text" class="form-control form-control-user"
												id="inputGroupSelect01" name="cartype"
												value=${driver.cartype } readonly
												style="height: 40px; background-color: white">
											<div id="cartype-invalid"></div>
										</div>
									</div>
									<div class="row mb-4">
										<div class="input-group col-12">
											<label class="input-group-text mr-2" for="exampleInputCarnum">차
												번호</label> <input type="text" class="form-control form-control-user"
												id="exampleInputCarnum" name="carnum"
												value=${driver.carnum } readonly
												style="height: 40px; background-color: white">
										</div>
									</div>
									<div class="row mb-4">
										<div class="input-group col-12">
											<span class="input-group-text mr-2"
												id="inputGroup-sizing-default">면허 취득일</span> <input
												type="date" class="form-control" name="getdate"
												value=${driver.getdate } readonly
												style="height: 40px; background-color: white">
										</div>
									</div>
									<hr>
								</div>
							</div>
						</div>

						<div class="text-center">
							<a class="small">※ 면허증 무단 도용 및 위조는 법적처벌을 받을 수 있습니다. ※</a>
						</div>
						<div class="text-center">
							<a class="small">드라이버 등록 후 카쉐어링 서비스를 이용하실 수 있습니다.</a>
						</div>
						<br> <br>
					</div>
				</div>
			</div>
			<!-- 드라이버 신청 내용 -->

		</c:if>
	</section>


</body>
</html>