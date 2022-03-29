<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elcar join</title>
 <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!--Bootstrap-->
    <link rel ="stylesheet" href="resources/css/Login.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<body>
    <section class="login-form" style="margin-bottom: 100px; margin-top: 30px;">
        <h1>Join</h1>
        <form id="joinForm" action="join" method="post">
            <div class="int-area" >
            <input type="text" name="id" id="id" autocomplete="off"  required>
            <label for="id">ID</label>
            </div>
            
            <div class="int-area">
            <input type="password" name="pw" id="pw" autocomplete="off"  required>
            <label for="id">PW</label>
            </div>
            
            <div class="int-area">
            <input type="text" name="name" id="name" autocomplete="off"  required></input>
            <label for="id">Name</label>
            </div>
            
            <div class="int-area">
            <input type="email" name="email" id="email" autocomplete="off" required>
            <label for="id">Email</label>
            </div>
            
            <div class="int-area">
            <input type="text" name="nickname" id="nickname" autocomplete="off" required>
            <label for="id">Nickname</label>
            </div>
            
            <div class="int-area">
            <input type="text" name="phone" id="phone" autocomplete="off" required>
            <label for="id">Phone</label>
            </div>
            
            <div>
            <input type="radio" name="gender" id="gender" autocomplete="off" required value="0" checked>남자
            <input type="radio" name="gender" id="gender" autocomplete="off" required value="1">여자
            </div>
            
            <div class="int-area">
            <input type="text" name="birth" id="birth" autocomplete="off" required>
            <label for="id">Birth</label>
            </div>
            
            <div class="my-2 align-items-center" style="width: 400px; margin:auto; !important;" >
			<div class="form-check d-flex justify-content-between" style="padding:0;">
            	<div style="padding-right:30px; float: left;">
          			<label for="agree1" class="form-check-label text-black" style="text-align: left;">엘카 이용 동의</label>
       			</div>
       			<div>
        			<input id="checkbox1" name="checkTmp" type="checkbox"  class="form-check-input">
    			</div>
       		</div>
      	</div>


    <div class="form-floating" style="width: 400px; margin:auto; !important;">
      <textarea style="width:100%; height: 100px; resize:none;">
     엘카화이팅엘카화이팅엘카화이팅엘카화이팅엘카화이팅엘카화이팅
     엘카화이팅엘카화이팅엘카화이팅엘카화이팅엘카화이팅엘카화이팅
     엘카화이팅엘카화이팅엘카화이팅엘카화이팅엘카화이팅엘카화이팅
     엘카화이팅엘카화이팅엘카화이팅엘카화이팅엘카화이팅엘카화이팅
     </textarea>
     </div>
            
                <div class="btn-area"></div>
				<input class="btn btn-primary w-100 mb-3" type="submit" value="Join" style="width: 324.5px !important;">
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