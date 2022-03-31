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
            
            <div class="int-area" style="display:none">
            <input type="text" name="name" id="name" value="${nickname }"autocomplete="off"  required></input>
            <label for="id">Name</label>
            </div>
            
            <div class="int-area"  >
            <input type="text" name="nickname" id="nickname"  autocomplete="off" required>
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