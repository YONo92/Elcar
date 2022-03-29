<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<!-- Offcanvas Menu Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="offcanvas-menu-wrapper">
		<div class="offcanvas__widget">
			<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"
				class="search-switch"><i class="fa fa-search"></i></a> <a
				href="../login" class="primary-btn">Login</a>
		</div>
		<div class="offcanvas__logo">
			<a href="../"><img src="${path }/img/001.png" alt=""></a>
		</div>
		<div id="mobile-menu-wrap"></div>
	</div>
	<!-- Offcanvas Menu End -->

	<!-- Header Section Begin -->
	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col-lg-2">
					<div class="header__logo">
						<a href="../"><img src="${path }/img/001.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-10">
					<div class="header__nav">
						<nav class="header__menu">
							<ul>
								<li class="active"><a href="./">Home</a></li>
								<li><a href="../about">About</a>
									<ul class="dropdown">
										<li><a href="./about.html">서비스 안내</a></li>
										<li><a href="./car-details.html">드라이버 등록</a></li>
										<li><a href="./blog-details.html">커뮤니티</a></li>
									</ul></li>
								<li><a href="../charger">전기차 충전소</a></li>
								<li><a href="../share">카쉐어링</a></li>
								<li><a href="../mypage">Mypage</a></li>
							</ul>
						</nav>
						<div class="header__nav__widget">
							<a href="../login" class="primary-btn">Login</a>
						</div>
					</div>
				</div>
			</div>
			<div class="canvas__open">
				<span class="fa fa-bars"></span>
			</div>
		</div>
	</header>
	<!-- Header Section End -->
</body>
</html>