<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELCAR | Hello :)</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<!-- Breadcrumb End -->
    <div class="breadcrumb-option set-bg" data-setbg="resources/img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <a href="./mypage"><h2>My page</h2></a>
                        <div class="breadcrumb__links">
                            <a href="../"><i class="fa fa-home"></i> Home</a>
                            <span>My page</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Begin -->
    
     <section class="services spad" style="height:100px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>회원 정보</h2>
						<hr width=”” color=”” noshade />
						<div align="left">
						<br><br><br>
						<span style="color: green;">${member.name}</span>
						<span style="color: black;">님의 프로필입니다.</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>

    
    

     <!-- Contact Section Begin -->
    <section class="contact spad" align="right" >
        <div class="container"  align="right" >
            <div class="right">

                <div class="col-lg-10 col-md-6" align="right" >
                    <div class="contact__form" style="width:750px; height:800px;" align="left">
                        <form action="membermodifyform" method="post" >
                            <div class="row" >
                             <div class="col-lg-6" >
                                	<label for="name"><b>&nbsp;아이디</b></label>
                                    <input type="text" id="id" name='id' value="${id}" readonly>
                                </div>&nbsp;
                                <br><div class="col-lg-6">
                                	<label for="name"><b>&nbsp;이름</b></label>
                                    <input type="text" id="name" name='name' value="${member.name }" readonly>
                                </div>&nbsp;
                                <div class="col-lg-6">
                                	<label for="email"><b>&nbsp;이메일</b></label>
                                    <input type="text" id="emaii" name='email' value="${member.email }" readonly>
                                </div>&nbsp;
                                 <div class="col-lg-6">
                                	<label for="nickname"><b>&nbsp;닉네임</b></label>
                                    <input type="text" id="nickname" name='nickname' value="${member.nickname }" readonly>
                                </div>&nbsp;
                                 <div class="col-lg-6">
                                	<label for="phone"><b>&nbsp;전화번호</b></label>
                                    <input type="text" id="phone" name='phone' value="${member.phone }" readonly>
                                </div>&nbsp;
                                <div class="col-lg-6">
                                	<label for="gender"><b>&nbsp;성별</b></label>
                                	<input type="hidden" id="gender" name='gender' value="${member.gender}">                      	
                                    <input type="text" value="${member.gender == 0 ? '남성' : '여성'}" readonly>
                                </div>
							<div style=" height:200px;"></div>  <!--버튼 높이 조정-->
                            </div>
                           
                           
                            <div style="width:650px; float: right"> <!--  버튼 위치 수정 -->
                            <button type="submit" class="site-btn" >내 정보 변경하러 가기</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

   
</body>
</html>