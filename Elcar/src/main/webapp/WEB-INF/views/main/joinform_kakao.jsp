<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elcar join for kakao</title>
    <link rel ="stylesheet" href="resources/css/Login.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<body>
    <section class="login-form" style="margin-bottom: 100px; margin-top: 30px;">
        <h1>Join for Kakao</h1>
        <form id="loginForm" action="join_kakao" method="post">
            <div class="int-area" style="display:none">
            <input type="text" name="id" id="id" autocomplete="off" value="${id }" required>
            <label for="id">Account ID</label>
            </div>
            
            <div class="int-area" style="display:none">
            <input type="text" name="gender2" id="gender2" autocomplete="off" value="${gender }" required>
            <label for="id">Gender</label>
            </div>
            
            <div class="int-area">
            <input type="text" name="name" id="name" autocomplete="off"  required></input>
            <label for="id">Name</label>
            </div>
            
            <div class="int-area" style="display:none" >
            <input type="text" name="nickname" id="nickname"  value="${nickname }" autocomplete="off" required>
            <label for="id">Nickname</label>
            </div>
            
            <div class="int-area">
            <input type="text" name="phone" id="phone" autocomplete="off" required>
            <label for="id">Phone</label>
            </div>
            
            <div class="int-area">
            <input type="text" name="birth" id="birth" autocomplete="off" required>
            <label for="id">Birth</label>
            </div>
            
                <div class="btn-area">
				<input class="btn btn-primary w-100 mb-3" type="submit" value="Join for Kakao" style="width: 324.5px !important;">
				</div>
            </form>
    </section>
<%--     <form id="loginForm" action="sign-up_kakao" method="post">
					<label for="Email" class="form-label"></label> <input type="text"
						class="form-control mb-3" id="id" name="id" value="${id }"></input>

					 <label	for="nickname" class="form-label">Nickname</label> <input type="text"
						class="form-control mb-3" id="nickname" name="nickname" placeholder="enter your nickname">
					<input class="btn btn-primary w-100 mb-3" type="submit"
						value="Sign up">

					<button id="signin" type="button"
						class="btn btn-outline-danger mb-3"
						style="float: center; width: 100%">Sign in</button>
				</form> --%>
				
 <!-- <form id="loginForm" action="sign-in" method="post">
                    <label for="Input Email" class="form-label">Input ID</label>
                    <input type="text" class="form-control mb-3" id="id" name="id" placeholder="Input your ID">

                    <label for="inputPW" class="form-label">Input PW</label>
                    <input type="password" class="form-control mb-3" id="password" name="password"
                        placeholder="Input your password">


                    <input class="btn btn-primary w-100 mb-3" type="submit"  value="Sign In">      
                    <button id="signup" type="button" class="btn btn-outline-success mb-3"
                        style="float:right; width:100%">Sign Up</button>
                </form>
                <a id="kakao-login-btn" href="javascript:kakaoLogin();"><img src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
    alt="카카오 로그인 버튼"/></a> -->
</body>

<script>
    let id = $('#id');
    let btn = $('#btn');

    $(btn).on('click',function(){
        if($(id).val() =="") {
            $(id).next('label').addClass('warning');
            setTimeout(function() {
                $('label').removeClass('warning');
            },1500);
        }
        else if($(pw).val() == ""){
            $(pw).next('label').addClass('warning');
        }
    });

</script>
</html>