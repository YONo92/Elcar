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
						<a href="./mypage">
							<h2>My page</h2>
						</a>
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
				<h2>신청 내역</h2>
				<hr width=”” color=”” noshade />
				<div align="left">
					<h4 style="margin: 50px">
						<b>탈래 신청 내역</b>
					</h4>
					
					<c:forEach var="talgestatus" items="${talgestatus}">
					<c:if test="${talgestatus.status eq '1'}">
						<div align="center" style="height: 100px;">
							<span style="font-size: 2em; color: green;">${talgestatus.nickname}
							</span> <span style="font-size: 2em; color: black;"> 님과</span> <span
								style="font-size: 2em; color: black;"> 매칭되셨습니다.</span>
						</div>
					</c:if>
					</c:forEach>

				</div>


				<div class="table-responsive">

					<table class="table custom-table">
						<thead>
							<tr>
								<th scope="col">신청자</th>
								<th scope="col">성별</th>
								<th scope="col">차종</th>
								<th scope="col">수락</th>
								<th scope="col">거절</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="talgeList" items="${talgeList}">
								<tr>
									<td>${talgeList.nickname}</td>
									<c:choose>
									<c:when test="${talgeList.gender eq '0'}">
									<td>남자</td>
									</c:when>
									<c:otherwise>
									<td>여자</td>
									</c:otherwise>
									</c:choose>
									<td>${talgeList.cartype}</td>
									<td><input type="button" value="수락"
										class="btn btn-outline-danger"
										onclick="location.href='talgaeSincheng_accept?sincheng_id=${talgeList.sincheng_id}&&surak_id=${talgeList.surak_id}&&talge_num=${talgeList.talge_num}'"></td>
									<td><input type="button" value="거절"
										class="btn btn-outline-danger"
										onclick="location.href='talgaeSincheng_delete?num=${talgeList.num}'"></td>
								</tr>
							</c:forEach>
						</tbody>

					</table>
				</div>
			</div>
		</div>
	</section>
	<!-- 태울래 거절 끝/// -->

</body>

</html>