<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elcar join for SNS</title>
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
            
            <div class="int-area" style="display:none">
            <input type="text" name="name" id="name" value="${nickname }"autocomplete="off"  required></input>
            <label for="id">Name</label>
            </div>
            
            <div class="int-area"  >
            <input type="text" name="nickname" id="nickname"  autocomplete="off" required oninput="nickcheck()">
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
            
            <div class="int-area">
            <input type="text" name="birth" id="birth" autocomplete="off" required oninput="birthcheck()">
            <label for="id">Birth</label>
            </div>
            <div class="int-area" id="birth_check"> 
              
            </div>
            
                <div class="btn-area">
				<input class="btn btn-primary w-100 mb-3" id="btn"type="submit" value="Join for SNS" style="width: 324.5px !important;"disabled>
				</div>
            </form>
    </section>

</body>


<script>
    let nickname = $('#nickname');
    let phone = $('#phone');
    let birth = $('#birth');
    
    let nickname_check=false;
    let phone_check=false;
    let birth_check=false;


    $(btn).on('click',function(){
        if($(nickname).val() == ""){
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
    });
    
   
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
    			url:"https://118.67.133.185:8080/nicknameCheck",
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
        					if(nickname_check==true&&phone_check==true&&birth_check==true){
        						$('#btn').attr('disabled',false);
        					}
    					}
    				}
    		});
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
   		}else{
   			$('#phone_check').text("전화번호 사용가능");
   			$('#phone_check').css("color","green");
   			phone_check=true;
   			if(nickname_check==true&&phone_check==true&&birth_check==true){
				$('#btn').attr('disabled',false);
			}
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
   			if(nickname_check==true&&phone_check==true&&birth_check==true){
				$('#btn').attr('disabled',false);
			}
   		}
    }
    	
 
</script>
</html>