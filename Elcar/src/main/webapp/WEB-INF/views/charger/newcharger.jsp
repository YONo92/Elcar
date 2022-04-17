<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-option set-bg"
		data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Charging Station</h2>
						<div class="breadcrumb__links">
							<a href="./"><i class="fa fa-home"></i> Home</a> <span>전기차충전소</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<section class="py-10">
		<!-- 지도를 표시할 div 입니다 -->
		<div class="embed-responsive embed-responsive-16by9"
			style="text-align: center; margin: auto;">
			<iframe class="embed-responsive-item" id="content"
				src="https://map.kakao.com/link/search/전기차충전소" width="80%"
				height="400px" allowfullscreen></iframe>
		</div>
		<a href="#" class="btn_gotop"> <span
			class="glyphicon glyphicon-chevron-up" > TOP </span>
		</a>



	</section>
</body>
</html>