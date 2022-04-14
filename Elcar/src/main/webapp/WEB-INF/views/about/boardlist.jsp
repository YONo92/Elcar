<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<!--     Fonts and icons     -->
<!-- <link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" /> -->
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
<style>
.bg-gradient-primary{
	background-image: linear-gradient(339deg, #ec407a, #1b71d8 91.6%);
}

#writebtn{
	background-image:  linear-gradient(263deg, #ec407a, #1b71d8 91.6%);
}
</style>
<body>

<div class="breadcrumb-option set-bg"
		data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Board</h2>
						<div class="breadcrumb__links">
							<a href="./"><i class="fa fa-home"></i> Home</a> <span>board
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="contact-address">
		<div class="container">
			<div class="contact__address__text">
				<div class="container-fluid py-4">
					<div class="row">
						<div class="col-12">
							<div class="card my-4">
								<div
									class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
									<div
										class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
										<h4 class="text-white text-capitalize ps-3">Board</h4>
										<form action="boardlist" method="get" style="margin-left: 15px;">
											<input type="text" id="search_text" name="search_text" /> 
											<input type="submit" value="찾기" class="btn btn-light" style="padding: 6px 10px 7px; margin-bottom: 0px !important;">
										</form>
									</div>
								</div>
								<div style="margin-top: 20px; margin-left: 17px;">
								<form action="boardlist" method="get">
								<input type="number" value="" name="type" style="display: none"/>
								<input class="btn btn-primary" id="writebtn" type="submit" style="width: 10%; float: left; margin-left: 10px" value="전체"/>
								</form>
								<form action="boardlist" method="get">
								<input type="number" value="1" name="type" style="display: none"/>
								<input class="btn btn-primary" id="writebtn" type="submit" style="width: 10%; float: left; margin-left: 10px" value="자유"/>
								</form>
								<form action="boardlist" method="get">
								<input type="number" value="2" name="type" style="display: none"/>
								<input class="btn btn-primary" id="writebtn" type="submit" style="width: 10%; float: left; margin-left: 10px" value="후기"/>
								</form>
								</div>
								<c:choose>
									<c:when test="${boardlist!=null && pageInfo.listCount>0 }">
										<form action="boardlist" method="get">
											<div class="card-body px-0 pb-2">
												<div class="table-responsive p-0">
													<table class="table align-items-center mb-0">
														<thead>
															<tr>
																<th scope="col">카테고리</th>
																<th scope="col">제목</th>
																<th scope="col">아이디</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${boardlist }" var="boardlist">
																<tr>
																	<td><c:if test="${boardlist.type eq '1'}">
																			<a style="margin-left: 20px !important;">자유</a>
																		</c:if> <c:if test="${boardlist.type eq '2'}">
																			<a style="margin-left: 20px !important;">후기</a>
																		</c:if></td>
																	<td><c:if test="${boardlist.type eq '1'}">
																			<a
																				href="./boarddetail?num=${boardlist.num }&page=${pageInfo.page }" style="margin-left: 18px !important;">
																				${boardlist.title } </a>
																		</c:if> <c:if test="${boardlist.type eq '2'}">
																			<a
																				href="./boarddetail?num=${boardlist.num }&page=${pageInfo.page }" style="margin-left: 18px !important;">
																				${boardlist.location } : ${boardlist.title } </a>
																		</c:if></td>
																	<td><a style="margin-left: 15px !important;">${boardlist.mem_id }</a></td>
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
														href="boardlist?page=${pageInfo.page-1}&search_text=${search_text}">[이전]</a>&nbsp;
				</c:otherwise>
											</c:choose>
											<c:forEach var="i" begin="${pageInfo.startPage }"
												end="${pageInfo.endPage }">
												<c:choose>
													<c:when test="${pageInfo.page==i }">[${i }]</c:when>
													<c:otherwise>
														<a href="boardlist?page=${i}&search_text=${search_text}">[${i }]</a>
													</c:otherwise>
												</c:choose>
											</c:forEach>
											<c:choose>
												<c:when test="${pageInfo.page>=pageInfo.maxPage }">
					[다음]
				</c:when>
												<c:otherwise>
													<a
														href="boardlist?page=${pageInfo.page+1}&search_text=${search_text}">[다음]</a>
												</c:otherwise>
											</c:choose>
										</section>
									</c:when>
									<c:otherwise>
								
										<section id="emptyArea">게시글이 없습니다.</section>
									</c:otherwise>
								</c:choose>
								
							</div>
							<button id="writebtn" onclick="location.href='boardform'" style="float: right; margin-right: 10px" class="btn btn-primary">글작성</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</body>
</html>