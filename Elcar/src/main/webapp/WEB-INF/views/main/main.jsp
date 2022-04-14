<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>ELCAR | Hello :)</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<!-- Main Section Begin -->
<<<<<<< HEAD
	<section class="hero spad set-bg" data-setbg="../resources/img/main.png">
=======
	<section class="hero spad set-bg" data-setbg="resources/img/main.PNG">
>>>>>>> refs/heads/main
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<div class="hero__text">
						<div class="hero__text__title">
							<span>FIND YOUR ELCAR</span>
							<h2>카쉐어링 서비스</h2>
						</div>
						<form id="locationForm" action="../sharelist" method="post">
							<input type="hidden" id="lat" name="lat" /> <input type="hidden"
								id="lng" name="lng" /> <a onclick="shareList()"
								class="primary-btn more-btn"
								style="color: white; cursor: pointer">
								바로가기 </a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Main Section End -->

	<!-- Services Section Begin -->
	<section class="services spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<span>Our Services</span>
						<h2>What We Offers</h2>
						<p>ELCAR의 다양한 서비스를 빠르게 만나보세요</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="services__item">
						<img src="resources/img/services/services-1.png" alt="" />
						<h5>ELCAR Service</h5>
						<p>ELCAR만의 이용자 편의 중심 전기차 충전소 검색 서비스와 카쉐어링을 추천합니다.</p>
						<a href="./guide"><i class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="services__item">
						<img src="resources/img/services/services-2.png" alt="" />
						<h5>전기차 충전소 찾기</h5>
						<p>
							지역별, 사용자 위치별 <br />가장 가까운 전기차 충전소를 <br />검색해보세요.
						</p>
						<a href="./newcharger"><i class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="services__item">
						<img src="resources/img/services/services-3.png" alt="" />
						<h5>카쉐어링</h5>
						<p>
							드라이버와 함께 목적지까지 전기차 쉐어링 어떠세요? <br /> <br />
						</p>
						<form id="locationForm" action="../sharelist" method="post">
							<input type="hidden" id="lat" name="lat" /> <input type="hidden"
								id="lng" name="lng" /> <a onclick="shareList()"
								style="cursor: pointer"><i
								class="fa fa-long-arrow-right"></i></a>
						</form>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="services__item">
						<img src="resources/img/services/services-4.png" alt="" />
						<h5>매너등급제</h5>
						<p>
							카쉐어링을 통한 ELCAR만의 포인트를 적립해보세요. <br /> <br />
						</p>
						<a href="../guide"><i class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Services Section End -->
	<script>
      function shareList() {
        navigator.geolocation.getCurrentPosition(
          function (position) {
            $('#lat').val(position.coords.latitude);
            $('#lng').val(position.coords.longitude);
            document.getElementById('locationForm').submit();
          },
          function (err) {
            Swal.fire({
              icon: 'warning',
              text: '위치정보 허용 하시는 것을 권장 드립니다.',
            }).then(function (isOkay) {
              $('#lat').val(37.570028);
              $('#lng').val(126.986072);
              document.getElementById('locationForm').submit();
            });
          }
        );
      }
    </script>
</body>
</html>
