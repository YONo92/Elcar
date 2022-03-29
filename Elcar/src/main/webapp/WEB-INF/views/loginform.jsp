<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Elcar loginForm</title>
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
    <section class="login-form">
        <h1>LOGIN</h1>
        <form action="login" method="post">
            <div class="int-area">
            <input type="text" name="id" id="id"
            autocomplete="off" required>
            <label for="id">ID</label>
            </div>
            <div class="int-area">
                <input type="password" name="pw" id="pw"
                autocomplete="off" required>
                <label for="pw">PW</label>
                </div>
                
               <!--  아이디 저장 기능 구현부
                <div class="checkbox">
                <li><input type = "checkbox" id="chk_id"><label for="chk_id"> 아이디 저장</label></li>
            </div> -->
            
                <div class="btn-area"></div>
                <button id="btn" type="submit" class="btn btn-dark" style="width:230px;">LOGIN</button>
                <a href="joinform">
                    <button id="btn" type="button" class="btn btn-outline-dark" style="width:230px;">JOIN</button>
                </a>
            </form>
            <div class = "Forgot">  
                <li><a href="index.html">아이디 찾기</a></li>
                <li><a href="">비밀번호 찾기</a></li>
        </div>
        <div class="Forgot2">
            <a id="kakao-login-btn" href="javascript:kakaoLogin();"><img src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
    alt="카카오 로그인 버튼"/></a>
        </div>
        
    </section>
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
<script type="text/javascript">
Kakao.init('8a9556b483ee07ff9538989cc3f83453');
			
			
function kakaoLogin(){
	window.Kakao.Auth.login({
		scope:'profile_nickname, account_email, gender',
		success:function(authObj){
			window.Kakao.API.request({
				url:'/v2/user/me',
				success:res=>{
					let kakao_account = res.kakao_account;
					let jsonData={
							"id":kakao_account.email,
							"gender":kakao_account.gender
					};
					window.location.href="/login-kakao?id="+kakao_account.email+"&gender="+kakao_account.gender;
					return false;
				}
			});
		}
	})
}
			/* Kakao.Auth.createLoginButton({
			  container: '#kakao-login-btn',
			  success: function(authObj) {
			    Kakao.API.request({
			      url: '/v2/user/me',
			      success: function(result) {
			        $('#result').append(result);
			        id = result.id
			        connected_at = result.connected_at
			        kakao_account = result.kakao_account
			        $('#result').append(kakao_account);
			        resultdiv="<h2>로그인 성공 !!"
			        resultdiv += '<h4>id: '+id+'<h4>'
			        resultdiv += '<h4>connected_at: '+connected_at+'<h4>'
					email ="";
					gender ="";
					birthday ="";
					if(typeof kakao_account != 'undefined'){
						email = kakao_account.email;
						gender = kakao_account.gender;
						birthday = kakao_account.birthday;
					}
					resultdiv += '<h4>email: '+email+'<h4>'
					resultdiv += '<h4>gender: '+gender+'<h4>'
					resultdiv += '<h4>birthday: '+birthday+'<h4>'
					$('#result').append(resultdiv);
				},
				fail: function(error){
					alert('login success, but failed to request user information: '+JSON.stringify(error))
					},
			})
		},
		fail: function(err){
			alert('failed to login: '+JSON.stringify(err))
		},
	}) */
</script>
<script>
    let id = $('#id');
    let pw = $('#pw');
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