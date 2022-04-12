
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>홈런프렌즈</title>
	<link rel="stylesheet" type="text/css" href="resources/css/mall.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
	<link href="https://fonts.googleapis.com/css?family=Exo:300,600,800&display=swap" rel="stylesheet"> <!-- 200213 수정 -->
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="../js/common.js"></script>
	
</head>
<body>
	<div class="breadcrumb-option set-bg" data-setbg="resources/img/breadcrumb-bg.jpg" style="background-image: url(&quot;resources/img/breadcrumb-bg.jpg&quot;);">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<a href="./mypage"><h2>My page</h2></a>
						<div class="breadcrumb__links">
							<a href="../"><i class="fa fa-home" aria-hidden="true"></i> Home</a> <span>My
								page</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

		<!-- container -->
		<div class="container ty02">

			<!-- cont-wrap -->
			<div class="cont-wrap mypage cs">
				<h2 class="tit">이용 내역</h2>



				<!-- cont-middle-wrap -->
				<div class="cont-middle-wrap">
					<!-- lnb pc-ver -->
					<div class="lnb-wrap pc-ver">


						
						
					</div>
					<!-- //lnb pc-ver -->

					<!-- cont-group-wrap -->
					<div class="cont-group-wrap">
						<div class="txt-box ty01">
							<p class="txt disc ty02">카쉐어링 신고를 제외한 게시판 신고/기타회원님의 이용에 관한 의견 사항은 <span class="color-orange">게시판 페이지</span>를 이용하세요.</p>
							<!-- [D] 200305 버튼 추가 -->
							<div class="btn-box">
								<a href="board" class="btn line-gray">게시판 바로가기</a>
							</div>
						</div>
						
						
						<!-- cont group -->
						<div class="cont-group chk-form-wrap" >
							<div class="tit-box">
								<h3 class="cont-tit bd-none">카쉐어링 신고</h3>
								<p class="txt-alert bb000">카쉐어링 신고에 대한 답변은 마이페이지의 카쉐어링 신고 내역을 통해 확인하실 수 있습니다.</p>
							</div>
							
							<ul class="inp-list-wrap" >
							
							
							
								<li>
									<label class="inp-tit">신고자 닉네임</label>
									<div class="inp-sel-box">
									
										
									</div>
									<div align="left">
									<input type="text" class="inp-txt" value="$[giver_id ]" ></div>
								</li>
							
							
							
								<li>
									<label class="inp-tit">제목</label>
									<div class="inp-sel-box pc-ver">
									
										<select class="select">
											<option>문의 유형 선택</option>
											<option>옵션1</option>
											<option>옵션2</option>
											<option>옵션3</option>
										</select>
									</div>
									<input type="text" class="inp-txt" placeholder="제목을 입력하세요.">
								</li>
								<li class="m-ver">
									<label class="inp-tit">분류</label>
									<div class="inp-sel-box">
										<select class="select">
											<option>문의 유형 선택</option>
											<option>옵션1</option>
											<option>옵션2</option>
											<option>옵션3</option>
										</select>
									</div>
								</li>
								<li>
									<label class="inp-tit">문의 내용</label>
									<textarea placeholder="문의 내용 입력"></textarea>
								</li>
								
								
							</ul>
							<ul class="btn-box ty01">
								<li>
									<div class="btn-inner">
										<a href="javascript:void(0)" class="btn line-orange">취소</a>
									</div>
								</li>
								<li>
									<div class="btn-inner">
										<a href="javascript:void(0)" class="btn bg-orange">등록하기</a>
									</div>
								</li>
							</ul>
						</div>
						<!-- //cont group -->
					</div>
					<!-- //cont-group-wrap -->
				</div>
				<!-- //cont-middle-wrap -->

			</div>
			<!-- //cont-wrap -->

		</div>
		<!-- //container -->

		

	</div>
</body>
</html>