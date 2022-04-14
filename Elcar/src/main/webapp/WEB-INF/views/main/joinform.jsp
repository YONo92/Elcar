<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elcar join</title>
 
    <link rel ="stylesheet" href="resources/css/Login.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<body>
    <section class="login-form" style="margin-bottom: 100px; margin-top: 30px;">
        <h1>Join</h1>
        <form id="joinForm" action="join" method="post">
            <div class="int-area" >
            <input type="text" name="id" id="id" autocomplete="off"  required oninput="idcheck()"/>
            <label for="id">ID</label>
            </div>
            <div class="int-area" id="id_check"> 
              
            </div> 
            
            <div class="int-area">
            <input type="password" name="pw" id="pw" autocomplete="off"  required oninput="pwcheck()"/>
            <label for="id">PW</label>
            </div>
            <div class="int-area" id="pw_check"> 
              
            </div> 
            
            <div class="int-area">
            <input type="password" name="checkpw" id="checkpw" autocomplete="off"  required oninput="fcheckpw()"/>
            <label for="id">PW CHECK</label>
            </div>
            <div class="int-area" id="pwpw"> 
              
            </div> 
            
            <div class="int-area">
            <input type="text" name="name" id="name" autocomplete="off"  required>
            <label for="id">Name</label>
            </div>
            
            <div class="int-area">
            <input type="text" name="email" id="email" autocomplete="off" required oninput="emailcheck()"/>
            <label for="id">Email</label>
            </div>
            <div class="int-area" id="email_check"> 
             
            </div>
            
            <div class="int-area">
            <input type="text" name="nickname" id="nickname" autocomplete="off" required oninput="nickcheck()"/>
            <label for="id">Nickname</label>
            </div>
            <div class="int-area" id="nickname_check"> 
              
            </div>            
            
            <div class="int-area">
            <input type="text" name="phone" id="phone" autocomplete="off" required oninput="phonecheck()">
            <label for="id">Phone</label>
            </div>
             <div class="int-area" id="phone_check"> 
             
            </div>
            
            <div class="btn-area">
            <input type="radio" name="gender" id="gender" autocomplete="off" required value="0" checked>남자
            <input type="radio" name="gender" id="gender" autocomplete="off" required value="1">여자
            </div>
            
            <div class="int-area">
            <input type="text" name="birth" id="birth" autocomplete="off" required oninput="birthcheck()"/>
            <label for="id">Birth</label>
            </div>
            <div class="int-area" id="birth_check"> 
             
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
     이용약관 및 주요사항 고지
만 14세 미만 회원은 부모님을 통해서 회원가입이 가능합니다.

선택약관에 동의하지 않아도 회원가입은 가능합니다.

홈런프렌즈 이용약관동의 (필수)

전자상거래(인터넷사이버몰) 표준약관

제1조(목적)

이 약관은 OO 회사(전자상거래 사업자)가 운영하는 OO 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리 · 의무 및 책임사항을 규정함을 목적으로 합니다.

※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」

제2조(정의)

①“몰”이란 OO 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.

②“이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.

③‘회원’이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.

④‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.
     </textarea>
     </div>
            
                <div class="btn-area" id="form_submit" >
				<input id="btn" class="btn btn-primary w-100 mb-3" type="submit" value="Join" style="width: 324.5px !important;" disabled>
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
    let pw = $('#pw');
    let checkpw = $('#checkpw');
    let name = $('#name');
    let email = $('#email');
    let nickname = $('#nickname');
    let phone = $('#phone');
    let birth = $('#birth');
    let btn = $('#btn');
    
    let email_check=false;
    let id_check=false;
    let pw_check=false;
    let pw_checkcheck=false;
    let nickname_check=false;
    let phone_check=false;
    let birth_check=false;


    $(btn).on('click',function(){
        if($(id).val() =="") {
            $(id).next('label').addClass('warning');
            setTimeout(function() {
                $('label').removeClass('warning');
            },1500);
        }
        else if($(pw).val() == ""){
            $(pw).next('label').addClass('warning');
            setTimeout(function() {
                $('label').removeClass('warning');
            },1500);
        }
        else if($(name).val() == ""){
            $(name).next('label').addClass('warning');
            setTimeout(function() {
                $('label').removeClass('warning');
            },1500);
        }
        else if($(email).val() == ""){
            $(email).next('label').addClass('warning');
            setTimeout(function() {
                $('label').removeClass('warning');
            },1500);
        }
        else if($(nickname).val() == ""){
            $(nickname).next('label').addClass('warning');
            setTimeout(function() {
                $('label').removeClass('warning');
            },1500);
        }
        else if($(phone).val() == ""){
            $(phone).next('label').addClass('warning');
            setTimeout(function() {
                $('label').removeClass('warning');
            },1500);
        }
        else if($(birth).val() == ""){
            $(birth).next('label').addClass('warning');
            setTimeout(function() {
                $('label').removeClass('warning');
            },1500);
        }
        else if($(checkpw).val() == ""){
            $(checkpw).next('label').addClass('warning');
            setTimeout(function() {
                $('label').removeClass('warning');
            },1500);
        }
    });
    
    function idcheck(){
    	var id = $('#id').val();
    	var regId = /^[A-Za-z0-9]{6,20}$/;
    	if(id==''){
    		$('#id_check').text("아이디를 입력해주세요");
    		$('#id_check').css("color","red");
    		id_check=false;
    		$('#btn').attr('disabled',true);
    	}else{
   		$.ajax({
    			url:"http://118.67.133.185:8080/idCheck",
    			type:'post',
    			data:{id:id},
    			success:function(data){
    				if(data == 'true'){
    					$('#id_check').text("이미 가입한 아이디 입니다");
    					$('#id_check').css("color","red");
    					id_check=false;
    					$('#btn').attr('disabled',true);
    				}else{
    					if(!regId.test(id)){
    						$('#id_check').text("영문과 숫자 8~12자 이내로 입력하세요");
        					$('#id_check').css("color","red");
        					id_check=false;
        					$('#btn').attr('disabled',true);
    					}else{
    						$('#id_check').text("사용 가능한 아이디 입니다");
        					$('#id_check').css("color","green");
        					id_check=true;
        					if(id_check==true&&email_check==true && nickname_check==true&&pw_check==true&&phone_check==true&&birth_check==true&&pw_checkcheck==true){
        						$('#btn').attr('disabled',false);
        					}
    					}
    				}
    			}
    		});
    	}
    }
    
    
    
    function emailcheck(){
    	var email = $('#email').val();
    	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    	if(email==''){
    		$('#email_check').text("이메일 주소를 입력해주세요");
    		$('#email_check').css("color","red");
    		email_check=false;
    		$('#btn').attr('disabled',true);
    	}else{
   		$.ajax({
    			url:"http://118.67.133.185:8080/emailcheck",
    			type:'post',
    			data:{email:email},
    			success:function(data){
    				if(data == 'true'){
    					$('#email_check').text("이미 존재하는 이메일 주소입니다");
    					$('#email_check').css("color","red");
    					email_check=false;
    					$('#btn').attr('disabled',true);
    				}else{
    					if(email.match(regExp) == null){
    						$('#email_check').text("이메일 형식에 맞게 입력해주세요");
        					$('#email_check').css("color","red");
        					email_check=false;
        					$('#btn').attr('disabled',true);
    					}else{
    						$('#email_check').text("사용 가능한 이메일주소 입니다");
        					$('#email_check').css("color","green");
        					email_check=true;
        					if(id_check==true&&email_check==true && nickname_check==true&&pw_check==true&&phone_check==true&&birth_check==true&&pw_checkcheck==true){
        						$('#btn').attr('disabled',false);
        					}
    					}
    				}
    			}
    		});
    	}
    }
    
    
    function nickcheck(){
    	var nickname = $('#nickname').val();
    	var spe = nickname.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    	if(nickname==''){
    		$('#nickname_check').text("닉네임을 입력해주세요");
    		$('#nickname_check').css("color","red");
    		nickname_check=false;
    		$('#btn').attr('disabled',true);
    	}else if(nickname.length < 2 || nickname.length > 11 ){
    		$('#nickname_check').text("닉네임 길이는 2자이상 10자이하 입니다");
    		$('#nickname_check').css("color","red");
    		nickname_check=false;
    		$('#btn').attr('disabled',true);
    	}else if(spe > 0){
    		$('#nickname_check').text("닉네임은 영문 또는 숫자만 입력가능 합니다");
    		$('#nickname_check').css("color","red");
    		nickname_check=false;
    		$('#btn').attr('disabled',true);
    	} else{
   		$.ajax({
    			url:"http://118.67.133.185:8080/nicknameCheck",
    			type:'post',
    			data:{nickname:nickname},
    			success:function(data){
    				if(data == 'true'){
    					$('#nickname_check').text("이미 사용중인 닉네임 입니다");
    					$('#nickname_check').css("color","red");
    					nickname_check=false;
    					$('#btn').attr('disabled',true);
    				}else{
    						$('#nickname_check').text("사용가능한 닉네임 입니다");
        					$('#nickname_check').css("color","green");
        					nickname_check=true;
        					if(id_check==true&&email_check==true && nickname_check==true&&pw_check==true&&phone_check==true&&birth_check==true&&pw_checkcheck==true){
        						$('#btn').attr('disabled',false);
        					}
    					}
    				}
    		});
    	}
    }
    
    function pwcheck(){
    	var pw = $("#pw").val();
    	var num = pw.search(/[0-9]/g);
   		var eng = pw.search(/[a-z]/ig);
   		var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
   		
   		if(pw==''){
   			$('#pw_check').text("패스워드를 입력하세요");
   			$('#pw_check').css("color","red");
   			pw_check=false;
   			$('#btn').attr('disabled',true);
   		}else if(pw.length < 7 || pw.length > 17){
   			$('#pw_check').text("패스워드 길이는 7자이상 16자이하 입니다");
   			$('#pw_check').css("color","red");
   			pw_check=false;
   			$('#btn').attr('disabled',true);
   		}else if(pw.search(/\s/)!=-1){
   			$('#pw_check').text("패스워드는 공백을 포함할 수 없습니다");
   			$('#pw_check').css("color","red");
   			pw_check=false;
   			$('#btn').attr('disabled',true);
   		}else if((num<0 && eng <0) || (eng<0 && spe<0)||(spe<0 && num<0)){
   			$('#pw_check').text("영문, 숫자, 특수문자 중 2개이상을 포함하여 작성해주세요");
   			$('#pw_check').css("color","red");
   			pw_check=false;
   			$('#btn').attr('disabled',true);
   		}else{
   			$('#pw_check').text("패스워드 사용가능");
   			$('#pw_check').css("color","green");
   			pw_check=true;
   			if(id_check==true&&email_check==true && nickname_check==true&&pw_check==true&&phone_check==true&&birth_check==true&&pw_checkcheck==true){
				$('#btn').attr('disabled',false);
			}
   		}
    }
    
   function fcheckpw(){
    	var checkpw = $("#checkpw").val();
    	var pw = $("#pw").val();
   		if(checkpw==''){
   			$('#pwpw').text("패스워드확인을 입력하세요");
   			$('#pwpw').css("color","red");
   			pw_checkcheck=false;
   			$('#btn').attr('disabled',true);
   		}else if(checkpw==pw){
   			$('#pwpw').text("패스워드가 일치합니다.");
   			$('#pwpw').css("color","green");
   			pw_checkcheck=true;
   			if(id_check==true&&email_check==true && nickname_check==true&&pw_check==true&&phone_check==true&&birth_check==true&&pw_checkcheck==true){
				$('#btn').attr('disabled',false);
			}
   		}else{
   			$('#pwpw').text("패스워드를 확인해주세요.");
   			$('#pwpw').css("color","red");
   			pw_checkcheck=false;
   			$('#btn').attr('disabled',true);
   		}
}

    
    function phonecheck(){
    	var phone = $("#phone").val();
    	var regTel = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})[0-9]{3,4}[0-9]{4}$/;
   		if(phone==''){
   			$('#phone_check').text("전화번호 입력하세요");
   			$('#phone_check').css("color","red");
   			phone_check=false;
   			$('#btn').attr('disabled',true);
   		}else if(!regTel.test(phone)){
   			$('#phone_check').text("올바른 전화번호를 입력하세요. ex)01012345678");
   			$('#phone_check').css("color","red");
   			phone_check=false;
   			$('#btn').attr('disabled',true);
   		}
   		else{
   		$.ajax({
			url:"http://118.67.133.185:8080/phoneCheck",
			type:'post',
			data:{phone:phone},
			success:function(data){
				if(data == 'true'){
					$('#phone_check').text("이미 사용중인 번호 입니다");
					$('#phone_check').css("color","red");
					phone_check=false;
					$('#btn').attr('disabled',true);
				}else{
						$('#phone_check').text("사용가능한 번호 입니다");
    					$('#phone_check').css("color","green");
    					phone_check=true;
    					if(id_check==true&&email_check==true && nickname_check==true&&pw_check==true&&phone_check==true&&birth_check==true&&pw_checkcheck==true){
    						$('#btn').attr('disabled',false);
    					}
					}
				}
		});
   		}
    }
    
    function birthcheck(){
    	var birth = $("#birth").val();
    	var check = /^[0-9]{8}$/;
    	if(birth==''){
   			$('#birth_check').text("생년월일을 입력하세요");
   			$('#birth_check').css("color","red");
   			birth_check=false;
   			$('#btn').attr('disabled',true);
   		}else if(!check.test(birth)){
   			$('#birth_check').text("올바른 생년월일(8자리)을 입력하세요. ex)19970729");
   			$('#birth_check').css("color","red");
   			birth_check=false;
   			$('#btn').attr('disabled',true);
   		}else{
   			$('#birth_check').text("생년월일 사용가능");
   			$('#birth_check').css("color","green");
   			birth_check=true;
   			if(id_check==true&&email_check==true && nickname_check==true&&pw_check==true&&phone_check==true&&birth_check==true&&pw_checkcheck==true){
				$('#btn').attr('disabled',false);
			}
   		}
    }
    	
 
</script>
</html>