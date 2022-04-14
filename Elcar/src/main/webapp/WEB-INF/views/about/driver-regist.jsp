<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>ELCAR | Hello :)</title>
<style>
.nice-select {
	width: 100%;
}

.nice-select .list {
	max-height: 200px;
	overflow-y: scroll;
}
</style>
<!-- Custom fonts for this template-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<!-- <link href="resources/css/sb-admin-2.min.css" rel="stylesheet"> -->

</head>
<body>
	<!-- 드라이버 등록 상단 이미지 -->
	<div class="breadcrumb-option set-bg"
		data-setbg="resources/img/breadcrumb-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Driver Registration</h2>
						<div class="breadcrumb__links">
							<a href="./"><i class="fa fa-home"></i> Home</a> <span>드라이버
								등록</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 드라이버 신청 내용 -->
	<div class="container">
		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<form id='form'>
					<div class="row">
						<div class="col-lg-5">
							<img id="preview" src="resources/img/about/dr.png"
								style="width: 350px; height: 250px; margin-left: 90px; margin-top: 100px;" />
							<br /> <br />
							<div class="input-group mb-3"
								style="margin-left: 90px; width: 350px;">
								<label class="input-group-text mr-2" for="inputGroupFile01">License Upload</label>
								<input type="file" class="form-control" id="inputGroupFile01" style="display: none;"
									name="file" onchange="readURL(this);" required>
							</div>
						</div>
						<div class="col-lg-7">
							<div class="p-5">
								<div class="text-center">
									<h1 class="h4 text-gray-900 mb-4">드라이버 등록</h1>
								</div>
								<div class="row mb-4">
									<div class="input-group col-6">
										<input type="text" class="form-control form-control-user"
											id="exampleId" name="id" value=${id } readOnly
											style="height: 40px;">
									</div>
									<div class="input-group col-6">
										<input type="text" class="form-control form-control-user"
											id="exampleName" name="name" value=${name } readOnly
											style="height: 40px;">
									</div>
								</div>
								<div class="row mb-4">
									<div class="input-group col-12">
										<label class="input-group-text" for="inputGroupSelect01">차종</label>
										<input id=car type="text" required
											style='opacity: 0; width: 0; float: left;'> <select
											class="form-control form-control-user"
											id="inputGroupSelect01" name="cartype" style="height: 40px;">
											<option selected value="">차종을 선택하세요</option>
											<option value="볼트">볼트</option>
											<option value="아이오닉5">아이오닉5</option>
											<option value="니로">니로</option>
											<option value="Taycan">Taycan</option>
											<option value="ModelS">ModelS</option>
											<option value="Model3">Model3</option>
											<option value="GV60">GV60</option>
											<option value="GV70">GV70</option>
											<option value="GV80">GV80</option>
											<option value="G80">G80</option>
										</select>
										<div id="cartype-invalid"></div>
									</div>
								</div>
								<div class="row mb-4">
									<div class="input-group col-12">
										<label class="input-group-text mr-2" for="exampleInputCarnum">차
											번호</label> <input type="text" class="form-control form-control-user"
											id="exampleInputCarnum" name="carnum"
											placeholder="차 번호를 입력하세요" required style="height: 40px;">
									</div>
								</div>
								<div class="row mb-4">
									<div class="input-group col-12">
										<span class="input-group-text mr-2"
											id="inputGroup-sizing-default">면허 취득일</span> <input
											type="date" class="form-control" name="getdate"
											id="startDate" max="2022-04-30" style="height: 40px;"
											required>
									</div>
								</div>
								<hr>
								<div class="d-grid gap-2 col-10 mx-auto text-center">
									<button type="submit" id="driverSubmit"
										class="btn btn-danger col-10 mx-auto" value='Submit'>Register</button>
								</div>
							</div>
						</div>
					</div>
				</form>
				<hr>
				<br>
				<div class="text-center">
					<a class="small">※ 면허증 무단 도용 및 위조는 법적처벌을 받을 수 있습니다. ※</a>
				</div>
				<div class="text-center">
					<a class="small">드라이버 등록 후 카쉐어링 서비스를 이용하실 수 있습니다.</a>
				</div>
				<br> <br>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="resources/js/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="resources/js/sb-admin-2.min.js"></script>
</body>

<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				document.getElementById('preview').src = e.target.result;
			};
			reader.readAsDataURL(input.files[0]);
		} else {
			document.getElementById('preview').src = "";
		}
	}
</script>
<script>
	// 파일 업로드 + 신청 내용 넘기기
	$(document).ready(function() {
		$('#inputGroupSelect01').change(function() {
			$('#car').val($('#inputGroupSelect01').val());
		})

		$('#form').submit(function(e) {
			const file = $("#inputGroupFile01")[0].files[0];
			const formData = new FormData();
			formData.append("file", file);
			formData.append("id", $('#exampleId').val())
			formData.append("name", $('#exampleName').val())
			formData.append("cartype", $('#inputGroupSelect01').val())
			formData.append("carnum", $('#exampleInputCarnum').val())
			formData.append("getdate", $('#startDate').val())

			e.preventDefault();
			$.ajax({
				url : '/driver-regist',
				processData : false,
				contentType : false,
				data : formData,
				type : 'post',
				success : function(data) {
					if (data == 'ok') {
						alert('드라이버 등록이 완료되었습니다. 마이페이지에서 확인하세요.');
						window.location.href = "/";
					} else {
						alert('신청을 다시 확인하세요');
						window.location.href = "/driver-regist";
					}
				}
			})
		})
	});
</script>

</html>