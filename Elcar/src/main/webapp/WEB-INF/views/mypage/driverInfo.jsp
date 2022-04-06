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



					<c:choose>
						<c:when test="${status == 0 }">
							<div align="center" style="height: 100px;">
								<span style="font-size: 1.7em; color: green;">${id} </span> <span
									style="font-size: 1.7em; color: black;"> 님의 드라이버 신청이 인증
									대기중입니다.</span>
							</div>
						</c:when>
						<c:when test="${status == 1 }">
							<div align="center" style="height: 100px;">
								<span style="font-size: 1.7em; color: green;">${id} </span> <span
									style="font-size: 1.7em; color: black;"> 님의 드라이버 신청이
									거절되었습니다.</span>
							</div>
						</c:when>
						<c:when test="${status == 2 }">
							<div align="center" style="height: 100px;">
								<span style="font-size: 1.7em; color: green;">${id} </span> <span
									style="font-size: 1.7em; color: black;"> 님의 드라이버 신청이
									인증되었습니다.</span>
							</div>
						</c:when>
						<c:otherwise>
							<div align="center" style="height: 100px;">
								<span style="font-size: 1.7em; color: green;">${id} </span> <span
									style="font-size: 1.7em; color: black;">님! 드라이버 신청을
									진행해주시기 바랍니다. </span>
							</div>
						</c:otherwise>
					</c:choose>
				</div>

				<hr style="height: 100px;" />

				<!-- 드라이버 신청 내용 -->
				<div class="container">
					<div class="card o-hidden border-0 shadow-lg my-5">
						<div class="card-body p-0">
							<form id='driverForm' method="post" action="/driver-regist"
								enctype="multipart/form-data">
								<div class="row">
									<div class="col-lg-5">
										<img id="preview"
											style="width: 350px; height: 250px; margin-left: 90px; margin-top: 100px;" />
										<br /> <br />

									</div>
									<div class="col-lg-7">
										<div class="p-5">
											<div class="text-center">
												<h1 class="h4 text-gray-900 mb-4">드라이버 정보</h1>
											</div>
											<div class="row mb-4">
												<div class="input-group col-6">
													<input type="text" class="form-control form-control-user"
														id="exampleId" name="id" value=${id }
														style="height: 40px;" readonly>
												</div>
												<div class="input-group col-6">
													<input type="text" class="form-control form-control-user"
														id="exampleName" name="name" value=${name }
														style="height: 40px;" readonly>
												</div>
											</div>
											<div class="row mb-4">
												<div class="input-group col-12">
													<label class="input-group-text" for="inputGroupSelect01">차종</label>
													<label class="form-control form-control-user required"
														id="inputGroupSelect01" name="cartype"
														style="height: 40px;" required="required"
														value="${cartype }" readonly> </label>
												</div>

												<div class="input-group col-6">
													<input type="text" class="form-control form-control-user"
														id="exampleId" name="id" value=${id }
														style="height: 40px;" readonly>
												</div>


												<div id="err"></div>
											</div>
											<div class="row mb-4">
												<div class="input-group col-12">
													<label class="input-group-text" for="exampleInputCarnum">차
														번호</label> <input type="text"
														class="form-control form-control-user"
														id="exampleInputCarnum" name="carnum"
														placeholder="차 번호를 입력하세요" value="$[]car_num" required
														style="height: 40px;" readonly>
												</div>
											</div>
											<div class="row mb-4">
												<div class="input-group col-12">
													<span class="input-group-text"
														id="inputGroup-sizing-default">면허 취득일</span> <input
														type="date" class="form-control" name="getdate"
														id="startDate" max="2022-03-31" style="height: 40px;"
														required>
												</div>
											</div>
											<hr>
											<div class="d-grid gap-2 col-10 mx-auto text-center">
												<button type="Submit" id="driverSubmit"
													class="btn btn-danger col-10 mx-auto" value='Submit'>Register</button>
											</div>
										</div>
									</div>
								</div>
							</form>
							<hr>
							<br>
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
	</section>
	<script>
		if (status == '0') {
			;
		} else if (status == '1') {

		} else if (status == '2') {

		} else {
			;
		}
	</script>

</body>
</html>