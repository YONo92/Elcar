
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

<<<<<<< HEAD
					<div style="height: 100px;" align="center">
						<span style="font-size: 2em; color: green;">${id } </span> <span
							style="font-size: 2em; color: black;"> 님의 현재 매너 포인트는 </span> <span
							style="font-size: 2em; color: darkblue;">${member.point }
						</span> <span style="font-size: 2em; color: black;"> 포인트입니다. </span>
					</div>
=======
               <div style="height: 100px;" align="center">
                  <span style="font-size: 2em; color: green;">${id } </span> <span
                     style="font-size: 2em; color: black;"> 님의 현재 매너 포인트는 </span> <span
                     style="font-size: 2em; color: darkblue;">${member.point }
                  </span> <span style="font-size: 2em; color: black;"> 포인트입니다. </span>
               </div>
>>>>>>> branch 'main' of https://github.com/YONo92/Elcar.git

            </div>

<<<<<<< HEAD
				<hr />
				<div style="height: 80px;"></div>
				<div align="left">
					<h4>
						<b>탈래 이용</b>
					</h4>
					<div style="height: 30px;"></div>
					<div class="row"></div>


				<!-- 멤버 별 이용 평가  -->


	 	<!--  태울래 매너포인트 -->
	 	
	<div class="card-body px-0 pb-2">
		<div class="table-responsive p-0">
			<table class="table align-items-center mb-0">
				<thead>
					<tr>
						<th scope="col">Date</th>
						<th scope="col">내용</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="history" items="${historyDrivingList }">
						<tr>
							<td><c:if test="${history.point != 0 }">
									<a style="margin-left: 20px !important;">${history.date}</a>
								</c:if></td>


							<td><c:if test="${history.point != 0 }">
									<span style="font-size: 1.7em; color: green">${history.taker_id }&nbsp;
									</span>
									<b style="font-size: 1.5em; color: black;">님이 &nbsp;&nbsp;</b>
									<span class="services__item3"> <a id="point"><b>${history.point }</b></a>
									</span>
									<span style="font-size: 1.4em; color: black;"> <b>&nbsp;&nbsp;점을
											&nbsp;&nbsp;주셨습니다.</b>
									</span>
								</c:if></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
 	<!--  태울래 매너포인트 끝 -->	
=======
            <hr />
            <div style="height: 80px;"></div>
            <div align="left">
               <h4>
                  <b>탈래 이용</b>
               </h4>
               <div style="height: 30px;"></div>
               <div class="row"></div>
>>>>>>> branch 'main' of https://github.com/YONo92/Elcar.git


<<<<<<< HEAD
				<hr width=”” color=”” noshade />



				<div style="height: 200px;"></div>
				<div align="left">
					<h4>
						<b>태울래 이용</b>
					</h4>
					<div style="height: 30px;"></div>
					<div class="row"></div>
<!--  탈래 매너포인트 -->
	<div class="card-body px-0 pb-2">
		<div class="table-responsive p-0">
			<table class="table align-items-center mb-0">
				<thead>
					<tr>
						<th scope="col">Date</th>
						<th scope="col">내용</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="history" items="${historyDDubukList }">
						<tr>
							<td><c:if test="${history.point != 0 }">
									<a style="margin-left: 20px !important;">${history.date}</a>
								</c:if></td>


							<td><c:if test="${history.point != 0 }">
									<span style="font-size: 1.7em; color: green">${history.taker_id }&nbsp;
									</span>
									<b style="font-size: 1.5em; color: black;">님이 &nbsp;&nbsp;</b>
									<span class="services__item3"> <a id="point"><b>${history.point }</b></a>
									</span>
									<span style="font-size: 1.4em; color: black;"> <b>&nbsp;&nbsp;점을
											&nbsp;&nbsp;주셨습니다.</b>
									</span>
								</c:if></td>
						</tr>
					</c:forEach>
=======
            <!-- 멤버 별 이용 평가  -->
>>>>>>> branch 'main' of https://github.com/YONo92/Elcar.git

<<<<<<< HEAD
				</tbody>
			</table>
		</div>
	</div>
 	<!--  탈래 매너포인트 끝 -->	
				</div>
			</div>
=======

       <!--  태울래 매너포인트 -->
       
   <div class="card-body px-0 pb-2">
      <div class="table-responsive p-0">
         <table class="table align-items-center mb-0">
            <thead>
               <tr>
                  <th scope="col">Date</th>
                  <th scope="col">내용</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach var="history" items="${historyDrivingList }">
                  <tr>
                     <td><c:if test="${history.point != 0 }">
                           <a style="margin-left: 20px !important;">${history.date}</a>
                        </c:if></td>


                     <td><c:if test="${history.point != 0 }">
                           <span style="font-size: 1.7em; color: green">${history.taker_id }&nbsp;
                           </span>
                           <b style="font-size: 1.5em; color: black;">님이 &nbsp;&nbsp;</b>
                           <span class="services__item3"> <a id="point"><b>${history.point }</b></a>
                           </span>
                           <span style="font-size: 1.4em; color: black;"> <b>&nbsp;&nbsp;점을
                                 &nbsp;&nbsp;주셨습니다.</b>
                           </span>
                        </c:if></td>
                  </tr>
               </c:forEach>

            </tbody>
         </table>
      </div>
   </div>
    <!--  태울래 매너포인트 끝 -->   
>>>>>>> branch 'main' of https://github.com/YONo92/Elcar.git

<<<<<<< HEAD
		</div>
	</section>
	<!--  매너 등급 끝 -->
	
	
	
	
=======

            <hr width=”” color=”” noshade />



            <div style="height: 200px;"></div>
            <div align="left">
               <h4>
                  <b>태울래 이용</b>
               </h4>
               <div style="height: 30px;"></div>
               <div class="row"></div>
<!--  탈래 매너포인트 -->
   <div class="card-body px-0 pb-2">
      <div class="table-responsive p-0">
         <table class="table align-items-center mb-0">
            <thead>
               <tr>
                  <th scope="col">Date</th>
                  <th scope="col">내용</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach var="history" items="${historyDDubukList }">
                  <tr>
                     <td><c:if test="${history.point != 0 }">
                           <a style="margin-left: 20px !important;">${history.date}</a>
                        </c:if></td>


                     <td><c:if test="${history.point != 0 }">
                           <span style="font-size: 1.7em; color: green">${history.taker_id }&nbsp;
                           </span>
                           <b style="font-size: 1.5em; color: black;">님이 &nbsp;&nbsp;</b>
                           <span class="services__item3"> <a id="point"><b>${history.point }</b></a>
                           </span>
                           <span style="font-size: 1.4em; color: black;"> <b>&nbsp;&nbsp;점을
                                 &nbsp;&nbsp;주셨습니다.</b>
                           </span>
                        </c:if></td>
                  </tr>
               </c:forEach>

            </tbody>
         </table>
      </div>
   </div>
    <!--  탈래 매너포인트 끝 -->   
            </div>
         </div>

      </div>
   </section>
   <!--  매너 등급 끝 -->
   
   
   
   
>>>>>>> branch 'main' of https://github.com/YONo92/Elcar.git
</body>
</html>