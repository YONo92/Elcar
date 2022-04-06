<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <link rel ="stylesheet" href="resources/css/Login.css">
</head>
<body>
<section class="login-form" style="margin-bottom: 100px; margin-top: 30px; height:300px;">
        <h1>비밀번호 찾기</h1>

            <div class="int-area">
            <input type="text" name="email" id="email"
            autocomplete="off" required>
            <label for="email">가입시 등록한 이메일을 입력하세요.</label>
            </div>
            <div class="int-area">
                <input type="text" name="name" id="name"
                autocomplete="off" required>
                <label for="name">가입시 등록한 이름을 입력하세요.</label>
                </div>
            
                <div class="btn-area">
               <!-- <button type=button class="btn btn-success btn-block" id="checkEmail">임시 비밀번호 발급</button> -->
               <button id="btn" type="button" class="btn btn-dark" style="width:230px; margin-top: 50px;">임시 비밀번호 발급</button>
                </div>
    </section>
                    
</body>
<script>

let id = $('#email');
let pw = $('#name');
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



$(btn).on('click', function(){
	let email = $("#email").val();
	let name = $("#name").val();
	  if($(id).val() =="") {
	        $(id).next('label').addClass('warning');
	        setTimeout(function() {
	            $('label').removeClass('warning');
	        },1500);
	    }
	    else if($(pw).val() == ""){
	        $(pw).next('label').addClass('warning');
	    }else{
		     $.ajax({
		         type: "GET",
		         url: "/check/findPw",
		         data: {
		             "email": email,
		             "name": name
		         },
		         success: function (res) {
		        	/* alert("메일을 통해 임시비밀번호를 발급했습니다. 발급된 비밀번호로 로그인해주시길 바랍니다."); */
		              if (res['check']) {
		                          $.ajax({
		                             type: "POST",
		                             url: "/check/findPw/sendEmail",
		                             data: {
		                                 "email": email,
		                                 "name": name
		                             }
		                         });
		                         alert("메일을 통해 임시비밀번호를 발급했습니다. 발급된 비밀번호로 로그인해주시길 바랍니다.");
		                         window.location = "/loginform";
		
		             
		                  /* $('#checkMsg').html('<p style="color:darkblue"></p>'); */
		             } else {
		            	 alert("일치하는 정보가 없습니다.");
		                 /* $('#checkMsg').html('<p style="color:red">일치하는 정보가 없습니다.</p>'); */
		             } 
		         } 
		     });
	    }
});


/* $(btn).on('click',function(){
        let email = $("#email").val();
        let name = $("#name").val();
        $.ajax({
            type: "GET",
            url: "http://localhost:8080/check/findPw",
            data: {
                "email": email,
                "name": name
            },
            success: function (res) {
                if (res['check']) {
                    swal("발송 완료!", "입력하신 이메일로 임시비밀번호가 발송되었습니다.", "success").then((OK) = > {
                        if(OK) {
                            $.ajax({
                                type: "POST",
                                url: "/check/findPw/sendEmail",
                                data: {
                                    "email": email,
                                    "name": name
                                }
                            })
                            window.location = "/login";
                        }


                    }
                )
                    $('#checkMsg').html('<p style="color:darkblue"></p>');
                } else {
                    $('#checkMsg').html('<p style="color:red">일치하는 정보가 없습니다.</p>');
                }
            }
        });
    } */
</script>
</html>