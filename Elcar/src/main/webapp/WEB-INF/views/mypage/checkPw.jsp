<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELCAR | Hello :)</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<!-- Breadcrumb End -->
    <div class="breadcrumb-option set-bg" data-setbg="resources/img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <a href="./mypage"><h2>My page</h2></a>
                        <div class="breadcrumb__links">
                            <a href="../"><i class="fa fa-home"></i> Home</a>
                            <span>정보 수정</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
   <!-- 현재 비밀번호 입력 -->
	<section class="services spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<form action="pwmodifyform" method="post">
						<div class="section-title" style="height:550px;" >
							<h2 >비밀번호 변경</h2>
							<hr width=”” color=”” noshade />
							<div align="left" style="width: 380px; height:200px;">	
								<span style="color: green;"><b>현재 비밀번호</b></span><span style="color: black;">를 입력해주세요.</span>
							</div>
							
							<div align="center" style=" height:290px;">
								<label for="name" style="width: 120px; height:200px;"><h4><b>비밀번호 </b></h4></label>
								<input type="password" id="password" name="password" style="width: 250px; height:45px;">
							</div>
							<button type="submit" class="site-btn" style="width:380px;">다음</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

		<!-- 현재 비밀번호 입력 끝-->
		
</body>
<script>
$(document).ready(function () {
	let alertMsg = `${alertMsg}`;
	if(alertMsg) {
		alert(alertMsg);
	}
})

</script>
</html>
 
		
		
 