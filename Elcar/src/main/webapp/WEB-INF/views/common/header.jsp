<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
</head>
<body>
	<!-- Offcanvas Menu Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="offcanvas-menu-wrapper">
		<div class="offcanvas__widget">
			<a href="../login" class="primary-btn">Login</a>
		</div>
		<div class="offcanvas__logo">
			<a href="../"><img src="resources/img/001.png" alt="" /></a>
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
						<a href="../"><img src="resources/img/001.png" alt="" /></a>
					</div>
				</div>
				<div class="col-lg-10">
					<div class="header__nav">
						<nav class="header__menu">
							<ul>
								<li class="active"><a href="./">Home</a></li>
								<li><a href="#">About</a>
									<ul class="dropdown">
										<li><a href="./about">서비스 안내</a></li>
										<li><a href="./driver-regist">드라이버 등록</a></li>
										<li><a href="./commu">커뮤니티</a></li>
									</ul></li>
								<li><a href="./charger">전기차 충전소</a></li>
								<li>
									<form id="locationForm" action="sharelist" method="post">
										<input type="hidden" id="lat" name="lat" /> <input
											type="hidden" id="lng" name="lng"  /> <a 
											onclick="shareList()" style="cursor: pointer;"> 카쉐어링 </a>
									</form>
								</li>
								<li><a href="./mypage">Mypage</a></li>
								<li><a href="#">Admin</a>
									<ul class="dropdown">
										<li><a href="./admin_memlist">회원관리</a></li>
										<li><a href="./admin_driverlist">드라이버회원관리</a></li>
										<li><a href="./admin_singolist">신고회원관리</a></li>
									</ul></li>
							</ul>
						</nav>
						<div class="header__nav__widget">
              <c:choose>
				<c:when test="${empty id}">
					<a href="../loginform" class="primary-btn">Login</a> 
				</c:when>
				<c:otherwise>
	                <a href="../logout" class="primary-btn">Logout</a>
				</c:otherwise>
			 </c:choose>
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
<script>
    // function shareList() {
  
    //   navigator.geolocation.getCurrentPosition(function (position) {
    //     $('#lat').val(position.coords.latitude);
    //     $('#lng').val(position.coords.longitude);
    //     document.getElementById('locationForm').submit();
    //   });
    // }

	function shareList() {
      navigator.geolocation.getCurrentPosition(
        function (position) {
          $('#lat').val(position.coords.latitude);
          $('#lng').val(position.coords.longitude);
          document.getElementById('locationForm').submit();
        },
        function (err) {
          alert('위치정보 허용 하시는 것을 권장 드립니다.');
          $('#lat').val(37.570028);
          $('#lng').val(126.986072);
          document.getElementById('locationForm').submit();
        }
      );
    }

  </script>
</html>
