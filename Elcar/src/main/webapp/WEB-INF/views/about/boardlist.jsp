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
			<button onclick="location.href='boardform'">글작성</button>
				<form action="boardlist" method="get">
					<input type="text" id="search_text" name="search_text" /> <input
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
										<h6 class="text-white text-capitalize ps-3">게시판</h6>
									</div>
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
																			<a>자유</a>
																		</c:if> <c:if test="${boardlist.type eq '2'}">
																			<a>후기</a>
																		</c:if></td>
																	<td><c:if test="${boardlist.type eq '1'}">
																			<a
																				href="./boarddetail?num=${boardlist.num }&page=${pageInfo.page }">
																				${boardlist.title } </a>
																		</c:if> <c:if test="${boardlist.type eq '2'}">
																			<a
																				href="./boarddetail?num=${boardlist.num }&page=${pageInfo.page }">
																				${boardlist.location } : ${boardlist.title } </a>
																		</c:if></td>
																	<td>${boardlist.mem_id }</td>
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
										<form action="boardlist" method="get">
											<input type="text" id="search_text" name="search_text" /> <input
												type="submit" value="검색" class="btn btn-outline-success"
												style="padding-left: 10px; padding-right: 10px; padding-top: 6.5; padding-top: 6.5; padding-top: 6.5; padding-top: 6px; padding-bottom: 7px;" />
										</form>
										<section id="emptyArea">게시글이 없습니다.</section>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<%-- <section style="margin-bottom: 100px; margin-top: 30px; height: 700px;">

<c:choose>
			<c:when test="${boardlist!=null && pageInfo.listCount>0 }">
				<section id="listForm">

				<div class="contact-address">
		<div class="container">
			<div class="contact__address__text">
				<form action="boardlist" method="get">
						<input type="text" id="search_text" name="search_text" /> <input
							type="submit" value="검색" class="btn btn-outline-success"
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
										<h6 class="text-white text-capitalize ps-3">게시판</h6>
									</div>
								</div>
								

					<!-- <h2 class="mb-5"
						style="text-decoration: underline; text-underline-position: under;">
						게시판
						</h2>
					<form action="boardlist" method="get">
						<input type="text" id="search_text" name="search_text" /> <input
							type="submit" value="검색" class="btn btn-outline-success"
							style="padding-left: 10px; padding-right: 10px; padding-top: 6.5; padding-top: 6.5; padding-top: 6.5; padding-top: 6px; padding-bottom: 7px;" />
					</form>
 -->
					<div class="table-responsive">

						<table class="table custom-table">
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
										<td>
										<c:if test="${boardlist.type eq '1'}">
										 <a>자유</a>
										</c:if>
										<c:if test="${boardlist.type eq '2'}">
										 <a>후기</a>
										</c:if>
										</td>
										<td>
										<c:if test="${boardlist.type eq '1'}">
										<a href="./boarddetail?num=${boardlist.num }&page=${pageInfo.page }">
										${boardlist.title }
										</a>
										</c:if>
										<c:if test="${boardlist.type eq '2'}">
										<a href="./boarddetail?num=${boardlist.num }&page=${pageInfo.page }">
										${boardlist.location } : ${boardlist.title }
										</a>
										</c:if>
										</td>
										<td>${boardlist.mem_id }</td> 
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</section>
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
				<form action="boardlist" method="get">
					<input type="text" id="search_text" name="search_text" /> <input
						type="submit" value="검색" 
						class="btn btn-outline-success"
							style="padding-left: 10px; padding-right: 10px; padding-top: 6.5; padding-top: 6.5; padding-top: 6.5; padding-top: 6px; padding-bottom: 7px;" 
							/>
				</form>
				<section id="emptyArea">게시글이 없습니다.</section>
			</c:otherwise>
		</c:choose>
	<button onclick="location.href='boardform'" >글작성</button>
</section>	 --%>
</body>
</html>