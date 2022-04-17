
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
		data-setbg="../resources/img/breadcrumb-bg.jpg">
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
	<!--  매너 등급 -->
	<section class="services spad">
		<div class="container" align="right">
			<div class="section-title">
				<h2>이용 내역</h2>
				<hr width=”” color=”” noshade />
				<div align="left">
					<h4>
						<b class="txtBox10">평가하기</b>
					</h4>
					<hr style="height: 100px;">

					<!-- 현재 매너 포인트는~~ 위치 변경 -->
				</div>
				<div>
					<!-- 멤버 별 이용 평가  -->
					<div class="testimonial__item__author">
						<input type="hidden" id="historyNum" value="${history.num }">
						<div class="row">
							<div class='col-lg-2'>${history.date}</div>
							<div class='col-lg-4'>
								<span style="font-size: 1.5em; color: green">
									${id == history.taker_id ? history.giver_id : history.taker_id}<span>
										<b style="font-size: 1.3em; color: black;">님을</b>
								<span style="font-size: 1.3em; color: black;"> <b>평가해주세요.</b>
								</span>
									</span>
								</span>
							</div>



							<div class='col-lg-2 pointOption'>
								<div class="services__item3"
									style="font-size: 1.4em; color: black;">
									<b>좋음</b> <a><b>5</b></a>
								</div>
							</div>

							<div class='col-lg-2 pointOption'>
								<div class="services__item3"
									style="font-size: 1.4em; color: black;">
									<b>보통</b> <a><b>3</b></a>
								</div>
							</div>

							<div class='col-lg-2 pointOption'>
								<div class="services__item3"
									style="font-size: 1.4em; color: black;">
									<b>나쁨</b> <a><b>-1</b></a>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
		<hr style="height: 150px;">



		<div align=center>
			<button type="button" id="pyeonggaBtn"class="site-btn">평가하기</button>
		</div>
		<!--이용 평가 /// -->






   <!--  매너 등급 -->
   <!--  매너 등급 -->
   <section class="services spad">
      <div class="container" align="right">
         <div class="section-title">
            <h2>이용 내역</h2>
            <hr width=”” color=”” noshade />
            <div align="left">
               <h4>
                  <b class="txtBox10">평가하기</b>
               </h4>
               <hr style="height: 100px;">

               <!-- 현재 매너 포인트는~~ 위치 변경 -->
            </div>
            <div>
               <!-- 멤버 별 이용 평가  -->
               <div class="testimonial__item__author">
                  <input type="hidden" id="historyNum" value="${history.num }">
                  <div class="row">
                     <div class='col-lg-2'>${history.date}</div>
                     <div class='col-lg-4'>
                        <span style="font-size: 1.5em; color: green">
                           ${id == history.taker_id ? history.giver_id : history.taker_id}<span>
                              <b style="font-size: 1.3em; color: black;">님을</b>
                        <span style="font-size: 1.3em; color: black;"> <b>평가해주세요.</b>
                        </span>
                           </span>
                        </span>
                     </div>



                     <div class='col-lg-2 pointOption'>
                        <div class="services__item3"
                           style="font-size: 1.4em; color: black;">
                           <b>좋음</b> <a><b>5</b></a>
                        </div>
                     </div>

                     <div class='col-lg-2 pointOption'>
                        <div class="services__item3"
                           style="font-size: 1.4em; color: black;">
                           <b>보통</b> <a><b>3</b></a>
                        </div>
                     </div>

                     <div class='col-lg-2 pointOption'>
                        <div class="services__item3"
                           style="font-size: 1.4em; color: black;">
                           <b>나쁨</b> <a><b>-1</b></a>
                        </div>
                     </div>


                  </div>
               </div>
            </div>
         </div>
      </div>
      <hr style="height: 150px;">



      <div align=center>
         <button type="button" id="pyeonggaBtn"class="site-btn">평가하기</button>
      </div>
      <!--이용 평가 /// -->




   </section>
   <!--  매너 등급 끝 -->
</body>
   <script>
      $(document).ready(function() {
         $('.pointOption').on('click', function() { 
            $('.pointOption').removeClass('border')
            $('.pointOption').removeClass('rounded')
            $('.pointOption').removeClass('border-dark')
            $('.pointOption').removeClass('selected')
            $(this).addClass('border')
            $(this).addClass('rounded')
            $(this).addClass('border-dark')
            $(this).addClass('selected')            
         })

         $('#pyeonggaBtn').on('click', function(e) {
            
            if ($('.selected')[0] == undefined) {
               alert("아 선택좀해~");
            } else {
               let num = $('#historyNum').val();
               let point = $('.selected')[0].getElementsByTagName('a')[0].innerText;
               $.ajax({
                  url: "https://118.67.133.185:8080/pyeongga",
                  type: "post",
                  data: { "num" : num, "point" : point},
                  success: function(data) {
                     if(data == "성공") {
                        alert("평가가 완료되었습니다.");
                        window.location.href = "/history"
                     } else {
                        alert("점수 평가 오류");
                        window.location.reload();
                     }
                     
                  }
               })
            }
            
         })
      })
   </script>
</html>
