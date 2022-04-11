<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-option set-bg"
		data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Charging Station</h2>
						<div class="breadcrumb__links">
							<a href="./index.html"><i class="fa fa-home"></i> Home</a> <span>전기차
								충전소</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<section class="py-5">
		<!-- 지도를 표시할 div 입니다 -->
		<div class="container">
			<div id="map" style="width: 100%; height: 600px;"></div>
			<button type="button" onclick="getCurrentPosBtn()">현재 위치로이동</button>
		</div>
	</section>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d120f13b0bfd585a04627b83e71c82f8&libraries=services,clusterer,drawing"></script>
	<script>

		var geocoder = new daum.maps.services.Geocoder();
		function locationLoadSuccess(pos) {
			console.log(pos.coords)
			geocoder.coord2Address(pos.coords.getLng, pos.coords.getLat,
					function(result, status) {
						if (status == kakao.map.Services.status.ok) {
							console.log(result[0])
						}
					});

			$.ajax({
				type : "post",
				url : "http://localhost:8080/newcharger",
				data : {lat : pos.coords.latitude, lng : pos.coords.longitude},
				dataType : "json",
				success:function(data, statusText,XMLHttpRequest) {
					console.log(data)
					console.log(statusText)
					console.log(XMLHttpRequest)
				},
				error:function(data, statusText,XMLHttpRequest) {
					console.log(data)
					console.log(statusText)
					console.log("에러")
					// console.log(XMLHttpRequest)
				},
				complete : function(data, statusText) {}
			});
		}
		function locationLoadError(pos) {
			console.log("위치정보를 가져오는데 실패했습니다.")
		}

		//위치 가져오기
		function getCurrentPosBtn() {
			location.href="https://map.kakao.com/link/search/전기차충전소";
			// navigator.geolocation.getCurrentPosition(locationLoadSuccess,locationLoadError);
		// }
		}
	</script>
</body>
</html>