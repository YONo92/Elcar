<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Elcar</title>
</head>
<body>
	<script type="text/javascript"
		src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=yvfp2vy65o"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<section class="py-5">
		<h1>네이버지도 API</h1>
		<div id="map" style="width: 100%; height: 400px;"></div>
		<script>
			var mapOptions = {
				center : new naver.maps.LatLng(37.3595704, 127.105399),
				zoom : 10
			};

			var map = new naver.maps.Map('map', mapOptions);
			
			$.ajax({
				url:'/allcharger',
				type:"GET",
				dataType:"text",
				success: function(data){
					if(data){
						map = new naver.maps.Map('map',mapOptions);
						
						$(data).find('item').each(function() {
							var tmX = $(this).find("lat").text();
							var tmY = $(this).find("lng").text();
							
							marker = new naver.maps.Marker({
								position: new naver.maps.LatLng(tmY,tmX),
								map:map
							});			
						});
					}
				}
			});
			
		</script>


	</section>
</body>
</html>