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

	<section class="py-5">
		<!-- ������ ǥ���� div �Դϴ� -->
		<div id="map" style="width: 500px; height: 400px;"></div>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d120f13b0bfd585a04627b83e71c82f8"></script>
		<script>
			var container = document.getElementById('map'); //������ ���� ������ DOM ���۷���
			var options = { //������ ������ �� �ʿ��� �⺻ �ɼ�
				center : new kakao.maps.LatLng(33.450701, 126.570667), //������ �߽���ǥ.
				level : 3
			//������ ����(Ȯ��, ��� ����)
			};

			var map = new kakao.maps.Map(container, options); //���� ���� �� ��ü ����
		</script>
	</section>
</body>
</html>