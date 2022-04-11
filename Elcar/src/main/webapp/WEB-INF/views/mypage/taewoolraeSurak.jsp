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
						<b>태울래 신청 내역</b>
					</h4>
					
					<c:forEach var="taewoolist" items="${taewoolist}">
					<div align="center" style="height:100px;">						
						 <span style="font-size: 1.7em; color: black;"> 현재 </span> 
						<span style="font-size: 1.7em; color: green;">${taewoolist.nickname} </span>
						<span style="font-size: 1.7em; color: black;"> 님의 수락을 기다리는중입니다.</span>
					</div>
					</c:forEach>
					
					<c:forEach var="taewoostatus" items="${taewoostatus}">
					<c:if test="${taewoostatus.status eq '1'}">
						<div align="center" style="height: 100px;">
							<span style="font-size: 2em; color: green;">${taewoostatus.nickname}
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
								<th scope="col">태울자</th>
								<th scope="col">출발시간</th>
								<th scope="col">인원</th>
								<th scope="col">성별</th>
								<th scope="col">취소</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="taewoolist" items="${taewoolist}">
								<tr>
									<td>${taewoolist.nickname}</td>
									<td>${taewoolist.date}</td>
									<td>${taewoolist.person}</td>
									<c:choose>
									<c:when test="${taewoolist.gender eq '0'}">
									<td>남자</td>
									</c:when>
									<c:otherwise>
									<td>여자</td>
									</c:otherwise>
									</c:choose>
									<td><input type="button" value="취소"
										class="btn btn-outline-danger"
										onclick="location.href='taewooSincheng_delete?num=${taewoolist.num}'"></td>
								</tr>
							</c:forEach>
						</tbody>

					</table>
				</div>
			</div>
		</div>
	</section>
</body>
</html>