<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<button class="badge badge-success rounded-pill d-inline"
						type="button" onclick="location.href='share'">탈래 신청</button>
					<c:forEach var="share" items="${shareList}">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="blog__item ">
									<div class="blog__item__pic set-bg"
										data-setbg="resources/img/breadcrumb-bg.jpg">
										<a href="shareList/${share.num}">
											<ul>
												<li>${share.date}</li>
												<li>${share.num}</li>
											</ul>
										</a>
									</div>
									<div class="blog__item__text ">
										<h5>
											<a href="shareList/${share.num}">출발지: ${share.start_name}</a>
										</h5>
										<h5>
											<a href="shareList/${share.num}">도착지: ${share.goal_name}</a>
										</h5>
										<span class="badge badge-success rounded-pill d-inline">${share.status == 0? '매칭전' : '매칭'}</span>
										<p>요구사항: ${share.request}</p>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					<div id="disp"></div>
				</div>
			</div>
		</div>
	</section>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
</body>
</html>