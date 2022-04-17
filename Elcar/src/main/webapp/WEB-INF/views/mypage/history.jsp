
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
					</h4>
				</div>

				<div align="left">

					<div class="container col-10" >
						<div class="row">

						</div>

 					</div>


				</div>
			</div>			
						
					<div align="left">
					
					<h4>
						<b>탈래 이용내역</b>
					</h4>
					<div style="height: 30px;"></div>
					<div class="row"></div>


			<!-- 여기부터 탈래 -->
			<div class="section-title">

		 	<!--  탈래 테이블-->
	 	
	<div class="card-body px-0 pb-2">
		<div class="table-responsive p-0">
			<table class="table align-items-center mb-0">
				<thead>
					<tr>
						<th scope="col">신고/평가</th>
						<th scope="col">Date</th>
						<th scope="col">내용</th>

					</tr>
				</thead>
				<tbody>
				<c:forEach var="history" items="${historyDDubukList }">
						<tr>
							<td>
								<span id="alerts" style="margin: 5px;"> 
								<span id="alert" class="alert" style="border: none; background-color: #d3d3d3; cursor: pointer; width: 55px; padding: 0px">
			
										<a href="singo/${history.num }">신고하기</a>
								</span> <input type="hidden" id="mwarning" name="mwarning" value=''><br>
								</span>
								<c:if test="${history.point eq 0 }">
									<span id="alerts" style="margin: 5px;"> <span id="alert"
										class="alert"
										style="border: none; background-color: #d3d3d3; cursor: pointer; width: 55px; padding: 0px">
											<a href="pyeongga/${history.num }">평가하기</a>
									</span>
									</span>
								</c:if>
								</td>
								
								
								
								<td><a style="margin-left: 20px !important;">${history.date}</a></td>


							<td><span style="font-size: 1.5em; color: green" class="nanum">
									${history.taker_id }<span> <b
										style="font-size: 1.3em; color: black;">님이</b></span>
								</span>
								
								<span style="font-size: 1.5em; color: green" class="nanum">
									${history.giver_id }<span> <b
										style="font-size: 1.3em; color: black;">님에게</b></span>
								</span>
								<span style="font-size: 1.3em; color: black;"> <b>
										탈래했습니다.</b>
								</span>		
								</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
							<hr style="height: 200px;">
 	<!--  탈래 테이블 -->	

	
	
	
	
	
	
	
	
	
				<div align="left">
					<h4>
						<b>태울래 이용내역</b>
					</h4></div>
					<div style="height: 30px;"></div>
					<div class="row"></div>
	
			 	<!--  태울래 테이블-->
	 	
	<div class="card-body px-0 pb-2">
		<div class="table-responsive p-0">
			<table class="table align-items-center mb-0">
				<thead>
					<tr>
						<th scope="col">신고/평가</th>
						<th scope="col">Date</th>
						<th scope="col">내용</th>

					</tr>
				</thead>
				<tbody>
							<c:forEach var="history" items="${historyDrivingList }">
						<tr>
							<td>
								<span id="alerts" style="margin: 5px;"> 
								<span id="alert" class="alert" style="border: none; background-color: #d3d3d3; cursor: pointer; width: 55px; padding: 0px">
			
										<a href="singo/${history.num }">신고하기</a>
								</span> <input type="hidden" id="mwarning" name="mwarning" value=''><br>
								</span>
								<c:if test="${history.point eq 0 }">
									<span id="alerts" style="margin: 5px;"> <span id="alert"
										class="alert"
										style="border: none; background-color: #d3d3d3; cursor: pointer; width: 55px; padding: 0px">
											<a href="pyeongga/${history.num }">평가하기</a>
									</span>
									</span>
								</c:if>
								</td>
																
								
								<td><a style="margin-left: 20px !important;">${history.date}</a></td>


							<td>	
								<span style="font-size: 1.5em; color: green" class="nanum">
											${history.taker_id  }<span> <b
												style="font-size: 1.3em; color: black;">님이</b></span>
										</span>

										<span style="font-size: 1.5em; color: green" class="nanum">
											${history.giver_id }<span> <b
												style="font-size: 1.3em; color: black;">님을</b></span>
										</span>

										<span style="font-size: 1.3em; color: black;"> <b>
												 태우셨습니다.</b>
										</span>
									
								</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
 	<!--  태울래 테이블 -->

						<hr style="height: 150px;">
					</div>
				</div>
		</div>
		
	</section>
	<!--  이용 내역 끝 -->

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>