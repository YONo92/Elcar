
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
							<a href="../"><i class="fa fa-home"></i> Home</a> <span>My page</span>
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
					<h4 style="margin:50px">
						<b>이용 내역</b>
					</h4>

				</div>

				<hr />

				<div align="left">

				<div class="container col-15" align="right">
					<div class="row">
						<div class='col-3' style="margin:5px; height:100px;">
							<select style="display: none;" >
	
								<option value="">태울래</option>
								<option value="">탈래</option>
		
							</select>
						</div>
					</div>



    
					<!-- 태울래 거절  -->
					<div class="testimonial__item__author" >
					<c:forEach var="history" items="${historyDrivingList }">
						<div class="row">
							<div class='col-lg-1'>
								
									<!--	<i class="fa-solid fa-circle-user">
											</i></div> -->
							</div>
							<div class='col-lg-1'>
								${history.date}
								
							</div>
							<div class='col-lg-2'>
								<h5 style="font-size: 1.4em; color: green" class="nanum"> ${history.taker_id }<span> <b style="font-size: 1.2em; color: black;">님이</b></span> </h5>
							</div>
							
							<div class='col-lg-2'>
								<h5 style="font-size: 1.4em; color: green" class="nanum"> ${history.giver_id }<span> <b style="font-size: 1.2em; color: black;">님을</b></span> </h5>
							</div>
							
							<div class='col-lg-3'>
							<span style="font-size: 1.2em; color: black;">
								<b >거절하셨습니다.</b>
							</span>
							</div><br><br><br><br><br>
							
							<div class='col-lg-3'>
								

						</div></div>
						</c:forEach>
					</div>	

					<hr>
					<!-- 태울래 거절 끝/// -->
					
					
								
					<!-- 태울래 이용 완  -->
					<div class="testimonial__item__author">
					<c:forEach var="history" items="${historyDrivingList }">
						<div class="row">
							<div class='col-lg-1'>
								<span id="alerts" style="margin: 5px;">
						<span id="alert" class="alert" style="border:none;background-color:#d3d3d3;cursor:pointer;width: 55px;padding:0px"><a href="singo">신고</a></span>
						<input type="hidden" id="mwarning" name="mwarning" value=''>
					</span>
									<!--	<i class="fa-solid fa-circle-user">
											</i></div> -->
							</div>
							<div class='col-lg-1 '>
								${history.date}
								
							</div>
							<div class='col-lg-2'>
								<h5 style="font-size: 1.4em; color: green" class="nanum"> ${history.taker_id  }<span> <b style="font-size: 1.2em; color: black;">님이</b></span> </h5>
							</div>
							
							<div class='col-lg-2'>
								<h5 style="font-size: 1.4em; color: green" class="nanum"> ${history.giver_id }<span	> <b style="font-size: 1.2em; color: black;">님을</b></span> </h5>
							</div>
							
							<div class='col-lg-3'>
							<span style="font-size: 1.2em; color: black;">
								<b> &emsp; 태우셨습니다.</b>
							</span>
							</div>
		
							<div class='col-lg-3'>
								
								<botton type="submit" class="btn btn-outline-success" style="font-size: 1.0em; color: black;">
									<i class="fas fa-car"> 출발지</i>
								</botton>
								
								<botton type="submit" class="btn btn-outline-success" style="font-size: 1.0em; color: black;">
									<i class="fas fa-car"> 도착지</i>
								</botton>
				<br><br><br><br><br>
						</div></div>
						</c:forEach>
					</div>	
					<hr style=" height:150px;">

					<!-- 태울래 이용 완 끝/// -->
					</div>
					
					
					
					
					
					
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
			
			
			
			
			<!-- 여기부터 탈래 -->
			<div class="section-title">
			<div class="row">
						<div class='col-3' style="margin:5px; height:100px;">
							<select style="display: none;" >
	
								<option value="">탈래</option>
								<option value="">태울래</option>
		
							</select>
						</div>
					</div>





					
					
					
					
					<!-- 태울래 이용 완  -->
					<div class="testimonial__item__author">
		<c:forEach var="history" items="${historyDDubukList }">
						<div class="row">
							<div class='col-lg-1'>
									<span id="alerts" style="margin: 5px;">
						<span id="alert" class="alert" style="border:none;background-color:#d3d3d3;cursor:pointer;width: 55px;padding:0px"><a href="singo">신고</a></span>
						<input type="hidden" id="mwarning" name="mwarning" value=''>
					</span>
									<!--	<i class="fa-solid fa-circle-user">
											</i></div> -->
							</div>
							<div class='col-lg-1'>
								${history.date }
								
							</div>
							<div class='col-lg-2'>
								<h5 style="font-size: 1.4em; color: green" class="nanum"> ${history.taker_id }<span> <b style="font-size: 1.2em; color: black;">님이</b></span> </h5>
							</div>
							
							<div class='col-lg-2'>
								<h5 style="font-size: 1.4em; color: green" class="nanum"> ${history.giver_id }<span> <b style="font-size: 1.2em; color: black;">님에게</b></span> </h5>
							</div>
							
							<div class='col-lg-3'>
							<span style="font-size: 1.2em; color: black;">
								<b>  탈래했습니다.</b>
							</span>
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
								
								<botton type="submit" class="col-3 nanum txtBox00" style="font-size: 1.0em; color: black;">
									 평가하기
								</botton>
							</div><br><br><br><br><br>
							</c:forEach>
						</div>
						
					</div>	
					<hr style=" height:150px;">
					<!-- 태울래 이용 완 끝/// -->
					
					
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
			<div class="col-lg-10" style="margin: 100px; height: 150px;">
				<!-- 페이지 이동 버튼 끝/// -->

			</div>
			
	<div class="col-1 nanum txtBox00" ><a> 평가 완료</a></div>
	<div class="col-1 nanum txtBox10" ><a> 평가 완료</a></div>
	<div class="col-1 nanum txtBox10" ><a> 평가 완료</a></div>
	</section>
	<!--  이용 내역 끝 -->
	
	<span id="alerts" style="margin: 5px;">
						<span id="alert" class="alert" style="border:none;background-color:#d3d3d3;cursor:pointer;width: 55px;padding:0px">신고</span>
						<input type="hidden" id="mwarning" name="mwarning" value=''>
					</span>
</body>
</html>