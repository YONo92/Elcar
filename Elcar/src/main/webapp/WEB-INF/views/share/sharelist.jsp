<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR" />
<title>Insert title here</title>
</head>
<link
		href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap"
		rel="stylesheet">
	

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
				<div class="col-lg-12"  id="disp">
					<button class="badge badge-success rounded-pill d-inline"
						type="button" onclick="location.href='share'">탈래 신청</button>
					<c:forEach var="share" items="${shareList}">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="blog__item ">
									<div class="blog__item__pic set-bg" data-setbg="resources/img/breadcrumb-bg.jpg">
										<a href="sinchenginfo/${share.num}">
											<ul>
												<li>${share.date}</li>
												<li>${share.num}</li>
											</ul>
										</a>
									</div>
									<div class="blog__item__text ">
										<h5>
											<a href="#">출발지: ${share.start_name}</a>
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
	<div id="test">
	</div>

	




	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<!-- 무한스크롤링 기능구현  -->
	<script>
		var liststartsize = ${listsize};
		var lat = ${lat};
		var lng = ${lng};
		var lastScrollTop  = 0 ;
		var easeEffect = 'easeInQuint';


		$(window).scroll(function (){
			var currentScrollTop = $(window).scrollTop();


			if(currentScrollTop - lastScrollTop >0 ) {
				/* console.log("다운 스크롤") */
			}

			if($(window).scrollTop() >= ($(document).height() -$(window).height())) {
				console.log(liststartsize);
				console.log($(window).scrollTop());
				var lastshare = $(".scrolling:last").attr("items");

				$.ajax({
					type: "post",
					url: "http://localhost:8080/sharelist_more",
					dataType: "json",
					data: {
						"liststartsize": liststartsize,
						"lat": lat,
						"lng": lng,
					},
					success: function (response) {
						var html =""
						$.each(response,function(key,value){
							html += "<div class='row'>"
								html += "<div class='col-lg-12 col-md-12 col-sm-12'>"
									html += "<div class='blog__item'>"
										html += '<div class="blog__item__pic set-bg" ' + `data-setbg="../resources/img/breadcrumb-bg.jpg" style="background-image: url('resources/img/breadcrumb-bg.jpg');">`
											html += '<a href="shareList/${share.num}">'
												html += '<a href=shareList/'+ value.num + '>' + '<ul>'+'<li>'+value.date+'</li>'+''+'<li>'+value.num+'</li>'+'</ul>' +'</a>'
											html += '</a>'
										html += '</div>'
										html += '<div class="blog__item__text ">'
										html += '<h5><a href="#">'+ '출발지:'+ value.start_name + '</a></h5>'
										html += '<h5><a href="#">'+ '출발지:'+ value.goal_name + '</a></h5>'	
										html += '<span class="badge badge-success rounded-pill d-inline">'
										html +=  value.status   == 0 ? "매칭전":"매칭"   
										html += '</span>' 
										html += '<p>'+'요구사항:'+ value.request+'</p>'
									html += '</div>'
								html += '</div>'
							html += '</div>'
							html += '</div>'
							html += '</div>'
						});
						$('#disp').append(html)
						console.log(response);
						if (response != null) {
							liststartsize += 10;
						}
					}
				}); 
			}
		})
	</script>
</body>
</html>
