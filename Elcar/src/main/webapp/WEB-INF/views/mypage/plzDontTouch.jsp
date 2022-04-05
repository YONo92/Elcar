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
                        <h2>정보 수정 </h2>
                        <div class="breadcrumb__links">
                            <a href="../"><i class="fa fa-home"></i> Home</a>
                            <span>정보 수정</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Begin -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">

                <div class="col-lg-6 col-md-6">
                    <div class="contact__form">
                        <form action="#">
                            <div class="row">
                             <div class="col-lg-6">
                                	<label for="name">아이디</label>
                                    <input type="text" id="id" value="$[id ]">
                                </div>
                                <div class="col-lg-6">
                                	<label for="name">이름</label>
                                    <input type="text" id="name" value="$[name ]">
                                </div>
                                <div class="col-lg-6">
                                	<label for="email">이메일</label>
                                    <input type="text" id="emaii" value="$[email ]">
                                </div>
                                 <div class="col-lg-6">
                                	<label for="nickname">닉네임</label>
                                    <input type="text" id="nickname" value="$[nickname ]">
                                </div>
                                 <div class="col-lg-6">
                                	<label for="phone">전화번호</label>
                                    <input type="text" id="phone" value="$[phone ]">
                                </div>
                                <div class="col-lg-6">
                                	<label for="gender">성별</label>
                                    <input type="text" id="gender" value="$[gender ]">
                                </div>

                            </div>
                            <input type="text" placeholder="Subject">
                            <textarea placeholder="Your Question"></textarea>
                            <button type="submit" class="site-btn">Submit Now</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- Contact Address Begin -->
    <div class="contact-address">
        <div class="container">
            <div class="contact__address__text">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="contact__address__item">
                            <h4>California Showroom</h4>
                            <p>625 Gloria Union, California, United Stated Colorlib.california@gmail.com</p>
                            <span>(+12) 456 678 9100</span>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="contact__address__item">
                            <h4>New York Showroom</h4>
                            <p>8235 South Ave. Jamestown, NewYork Colorlib.Newyork@gmail.com</p>
                            <span>(+12) 456 678 9100</span>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="contact__address__item">
                            <h4>Florida Showroom</h4>
                            <p>497 Beaver Ridge St. Daytona Beach, Florida Colorlib.california@gmail.com</p>
                            <span>(+12) 456 678 9100</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact Address End -->
</body>
</html>