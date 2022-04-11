<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ELCAR | Hello :)</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
<!-- Nucleo Icons -->
<link href="resources/css/nucleo-icons.css" rel="stylesheet" />
<link href="resources/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<!-- Material Icons -->
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
	rel="stylesheet">
<!-- CSS Files -->
<link id="pagestyle" href="resources/css/material-dashboard.css?v=3.0.2"
	rel="stylesheet" />
</head>
<body>
	<!-- 관리자 페이지 상단 이미지 -->
	<div class="breadcrumb-option set-bg"
		data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Admin</h2>
						<div class="breadcrumb__links">
							<a href="./"><i class="fa fa-home"></i> Home</a> <span>관리자_드라이버회원관리
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 관리자_드라이버 회원 관리 -->
	<div class="contact-address">
		<div class="container">
			<div class="contact__address__text">
				<form action="admin_driverlist" method="get">
					<input type="text" id="mem_text" name="mem_text" /> <input
						type="submit" value="찾기" class="btn btn-light"
						style="padding-left: 10px; padding-right: 10px; padding-top: 6.5; padding-top: 6.5; padding-top: 6.5; padding-top: 6px; padding-bottom: 7px;" />
				</form>
				<div class="container-fluid py-4">
					<div class="row">
						<div class="col-12">
							<div class="card my-4">
								<div
									class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
									<div
										class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
										<h6 class="text-white text-capitalize ps-3">관리자_드라이버 회원
											관리</h6>
									</div>
								</div>
								<c:choose>
									<c:when test="${driver!=null && pageInfo.listCount>0 }">
										<form action="admin_driverlist" method="get">
											<div class="card-body px-0 pb-2">
												<div class="table-responsive p-0">
													<table class="table align-items-center mb-0">
														<thead>
															<tr>
																<th
																	class="text-uppercase text-secondary 
														text-xxs font-weight-bolder opacity-7 ps-6">이름</th>
																<th
																	class="text-uppercase text-secondary 
														text-xxs font-weight-bolder opacity-7 ps-1">아이디</th>
																<th
																	class="text-uppercase text-secondary 
														text-xxs font-weight-bolder opacity-7 ps-4">면허
																	취득일</th>
																<th
																	class="text-uppercase text-secondary 
														text-xxs font-weight-bolder opacity-7 ps-1">차
																	번호</th>
																<th
																	class="text-uppercase text-secondary 
														text-xxs font-weight-bolder opacity-7 ps-2">차종</th>
																<th
																	class="text-uppercase text-secondary 
														text-xxs font-weight-bolder opacity-7 ps-2">면허증</th>
																<th
																	class="text-uppercase text-secondary 
														text-xxs font-weight-bolder opacity-7 ps-2">처리</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach var="driver" items="${driver }">
																<tr>
																	<td>
																		<div class="d-flex px-2 py-1">
																			<div
																				class="d-flex flex-column justify-content-center">
																				<h6 class="mb-0 text-sm ps-5">${driver.name }</h6>
																			</div>
																		</div>
																	</td>
																	<td>
																		<h6 class="mb-0 text-sm ps-0">${driver.id }</h6>
																	</td>
																	<td>
																		<h6 class="mb-0 text-sm ps-4">${driver.getdate }</h6>
																	</td>
																	<td>
																		<h6 class="mb-0 text-sm ps-0">${driver.carnum }</h6>
																	</td>
																	<td>
																		<p class="text-xs font-weight-bold mb-0">${driver.cartype }</p>
																	</td>
																	<td>
																		<!--  <p class="text-xs font-weight-bold mb-0">${driver.img }</p> -->
																		<a href="/view/${driver.img }" download><img
																			width="50px" src="/view/${driver.img }"></a>
																	</td>
																	<td><select class="form-select form-select-sm"
																		aria-label=".form-select-sm example">
																			<option selected>상태</option>
																			<option value="1">승인</option>
																			<option value="2">대기중</option>
																			<option value="3">반려</option>
																	</select></td>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div>
										</form>

										<!-- 페이징 처리  -->
										<section id="pageList" style="text-align: center;">
											<c:choose>
												<c:when test="${pageInfo.page<=1}">
					[이전]&nbsp;
				</c:when>
												<c:otherwise>
													<a
														href="admin_driverlist?page=${pageInfo.page-1}&mem_text=${mem_text}">[이전]</a>&nbsp;
				</c:otherwise>
											</c:choose>
											<c:forEach var="i" begin="${pageInfo.startPage }"
												end="${pageInfo.endPage }">
												<c:choose>
													<c:when test="${pageInfo.page==i }">[${i }]</c:when>
													<c:otherwise>
														<a href="admin_driverlist?page=${i}&mem_text=${mem_text}">[${i }]</a>
													</c:otherwise>
												</c:choose>
											</c:forEach>
											<c:choose>
												<c:when test="${pageInfo.page>=pageInfo.maxPage }">
					[다음]
				</c:when>
												<c:otherwise>
													<a
														href="admin_driverlist?page=${pageInfo.page+1}&mem_text=${mem_text}">[다음]</a>
												</c:otherwise>
											</c:choose>
										</section>
									</c:when>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<!--   Core JS Files   -->
<script src="resources/js/core/popper.min.js"></script>
<script src="resources/js/core/bootstrap.min.js"></script>
<script src="resources/js/plugins/perfect-scrollbar.min.js"></script>
<script src="resources/js/plugins/smooth-scrollbar.min.js"></script>
<script>
	var win = navigator.platform.indexOf('Win') > -1;
	if (win && document.querySelector('#sidenav-scrollbar')) {
		var options = {
			damping : '0.5'
		}
		Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
	}
</script>
</html>