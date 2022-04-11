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
<section style="margin-bottom: 100px; margin-top: 30px; height: 700px;">

<c:choose>
			<c:when test="${boardlist!=null && pageInfo.listCount>0 }">
				<section id="listForm">

					<h2 class="mb-5"
						style="text-decoration: underline; text-underline-position: under;">
						게시판
						</h2>
					<form action="boardlist" method="get">
						<input type="text" id="search_text" name="search_text" /> <input
							type="submit" value="검색" class="btn btn-outline-success"
							style="padding-left: 10px; padding-right: 10px; padding-top: 6.5; padding-top: 6.5; padding-top: 6.5; padding-top: 6px; padding-bottom: 7px;" />
					</form>

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
										<a href="./boarddetail?num=${boardlist.num }&page=${pageInfo.page }">
										${boardlist.title }
										</a>
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
</section>	
</body>
</html>