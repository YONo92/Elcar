<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<body>
	<!-- Footer Section Begin -->
	<footer class="footer set-bg" data-setbg="${path }/img/footer-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="footer__about">
						<div class="footer__widget">
							<h5>ELCAR</h5>
						</div>
						<p>여러분 모두 우리 함께 엘카 잘 완성 시켜보아요 굉장히 힘들겠지만 잠 좀 줄여보고 커피 때리구 그럼 아마
							눈이 떨리겠지만 마그네슘 잘 챙겨먹고 화이팅....**^_^**!!!</p>
					</div>
				</div>
				<div class="col-lg-2 offset-lg-1 col-md-3"></div>
				<div class="col-lg-2 col-md-3"></div>
				<div class="col-lg-3 col-md-6">
					<div class="footer__brand">
						<h5>Infomation</h5>
						<ul>
							<li><a href="../about"><i class="fa fa-angle-right"></i>
									About</a></li>
							<li><a href="../charger"><i class="fa fa-angle-right"></i>
									충전소 검색</a></li>
							<li><a href="../share"><i class="fa fa-angle-right"></i>
									카쉐어링</a></li>
							<li><a href="../join"><i class="fa fa-angle-right"></i>
									Sign Up</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="footer__copyright__text">
				<p>
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with </i> by ELCAR</a>
				</p>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Search Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search End -->
</body>
</html>