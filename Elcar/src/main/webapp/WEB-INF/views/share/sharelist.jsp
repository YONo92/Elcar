<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<!-- 드라이버 등록 상단 이미지 -->
	<div class="breadcrumb-option set-bg"
		data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Car sharing</h2>
						<div class="breadcrumb__links">
							<a href="./"><i class="fa fa-home"></i> Home</a> <span>카쉐어링</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<!-- <form action="sharelist" method="get"> -->
	<input type="text" id="lat" name="lat" value="" style="display: none" />
	<input type="text" id="lng" name="lng" value="" style="display: none" />

	<section class="blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<c:forEach var="share" items="${shareList}">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="blog__item ">
									<div class="blog__item__pic set-bg"
										data-setbg="resources/img/breadcrumb-bg.jpg">
										<ul>
											<li>${share.date}</li>
										</ul>
									</div>
									<div class="blog__item__text ">
										<h5>
											<a href="#" >출발지: ${share.start_name}</a>
										</h5>
										<h5>
											<a href="#">도착지: ${share.goal_name}</a>
										</h5>
										<span class="badge badge-success rounded-pill d-inline">${share.status == 0? '매칭전' : '매칭'}</span>
										<p>요구사항: ${share.request}</p>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>

	<div class="container">
		<table class="table">
			<!--<table class="table table-striped table-hover">-->
			<thead>
				<tr>
					<th>작성자</th>
					<th>출발지</th>
					<th>도착지</th>
					<th>상태</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="share" items="${shareList}">
					<tr>
						<td>${share.sincheng_id}</td>
						<td class="fw-bold mb-1">${share.start_name}</td>
						<td class="fw-bold mb-1">${share.goal_name}</td>
						<td><span class="badge badge-success rounded-pill d-inline">${share.status == 0? '매칭전' : '매칭'}</span></td>
						<td>${share.date}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>




	<button class="badge badge-success rounded-pill d-inline" type="button"
		onclick="location.href='share'">탈래 신청</button>

	<script>
    let currentPage = 1;
    let isLoading = false;
		    $(".board_body").scroll(function () {
        if ($(this).scrollTop() + $(this).innerHeight() >= $(this)[0].scrollHeight) {
            return;
        }
        isLoading = true;
        $(".loading").show();
        setTimeout(loadNewPage, 1400);
    });
	</script>
</body>
</html>
