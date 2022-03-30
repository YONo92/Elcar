<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<style>
@media screen and (min-width:670px) {
	#grid1 {
		display: none;
	}
	#grid2 {
		display: block;
	}
}

@media screen and (max-width:670px) {
	#grid1 {
		display: block;
	}
	#grid2 {
		display: none;
	}
}
</style>

<!-- nav -->
<div class="container" style="margin-top: 30px">
	<div class="row no-gutters slider-text align-items-end">
		<div class="col-md-9 ftco-animate pb-5">
			<p class="breadcrumbs mb-2">
				<span class="mr-2">myinfo <i class="ion-ios-arrow-forward"></i></span>
			</p>
			<h1 class="mb-0 bread">MyPage</h1>
		</div>
	</div>
</div>
<!-- END nav -->
<section>
	<div id="grid1" class="container">
		<ul class="nav justify-content-center">
			<li class="nav-item dropdown">
				<button type="button"
					class="nav-link dropdown-toggle btn btn-outline-success "
					data-toggle="collapse" data-target="#demo" style="width: 400px;"></button>
				<div class="collapse" id="demo">
					<button type="button" class="nav-link btn btn-outline-success"
						id="myinfo-tab1" style="width: 400px;">나의 정보</button>
					<button type="button" class="nav-link btn btn-outline-success"
						id="subscribe-tab1" style="width: 400px;">구독 내역</button>
					<button type="button" class="nav-link btn btn-outline-success"
						id="order-tab1" style="width: 400px;">주문 내역</button>
					<button type="button" class="nav-link btn btn-outline-success"
						id="delivery-tab1" style="width: 400px;">배송지 관리</button>
				</div>
			</li>
		</ul>
	</div>
	<div id="grid2">
		<ul class="nav justify-content-center">
			<li class="nav-item" role="presentation" style="margin-right: 10px;">
				<button type="button"
					class="nav-link active btn btn-outline-success " id="myinfo-tab"
					style="width: 150px;">나의 정보</button>
			</li>
		</ul>
	</div>
</section>

<!-- 나의 정보 내역 내용 -->
<div class="tab-content mx-5" id="myTabContent">
	<div class="row d-flex justify-content-center align-items-center h-100">
		<div style="height: 850px; width: 600px; margin-top: 100px">
			<div id="myinfoPage" class="pageSection">
				<div class="table-responsive">
					<table class="table">
						<tbody>
							<tr>
								<th scope="row">Id</th>
								<td>${member.member_id }</td>
							</tr>
							<tr>
								<th scope="row">Name</th>
								<td>${member.member_name }</td>
							</tr>
								<tr>
								<th scope="row">Email</th>
								<td>${member.member_email }</td>
							</tr>
								<tr>
								<th scope="row">Nickname</th>
								<td>${member.member_nickname }</td>
							</tr>
							<tr>
								<th scope="row">Phone</th>
								<td>${member.member_phone }</td>
							</tr>
								<tr>
								<th scope="row">Gender</th>
								<td>${member.member_gender }</td>
							</tr>
								<tr>
								<th scope="row">Birth</th>
								<td>${member.member_birth }</td>
							</tr>

						</tbody>

					</table>
				</div>
				<div>

					<input type="button" class="btn btn-success"
						onclick="location.href='membermodify'" value="수정하기" />
				</div>
			</div>