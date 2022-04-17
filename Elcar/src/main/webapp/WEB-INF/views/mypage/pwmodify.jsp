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
   <div class="breadcrumb-option set-bg"
      data-setbg="resources/img/breadcrumb-bg.jpg">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 text-center">
               <div class="breadcrumb__text">
                  <a href="./mypage"><h2>My page</h2></a>
                  <div class="breadcrumb__links">
                     <a href="../"><i class="fa fa-home"></i> Home</a> <span>My
                        page</span>
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
            <!--  폼태그 시작  @PostMapping(value = "pwmodify")-->
            <div class="col-lg-12">
            <form action="pwmodify" method="post">

                  <div class="section-title" style="height: 550px;">
                     <h2>비밀번호 변경</h2>
                     <hr width=”” color=”” noshade />
                     <div align="left" style="width: 380px; height: 200px;">
                        <span style="color: green;"><b>변경할 비밀번호</b></span><span
                           style="color: black;">를 입력해주세요.</span>
                     </div>
                     <div align="center" style="height: 100px;">
                        <label for="password1" style="width: 200px; height: 200px;"><h4>
                              <b>새 비밀번호 </b>
                           </h4></label> <input type="password" id="password1" name="password1"
                           style="width: 250px; height: 45px;">
                     </div>

                     <div align="center" style="height: 250px;">
                        <label for="password2" style="width: 200px; height: 200px;"><h4>
                              <b>비밀번호 확인</b>
                           </h4></label> <input type="password" id="password2" name="password2"
                           style="width: 250px; height: 45px;">
                     </div>
                     <input type="submit" onclick="equalPw()" id="modify"
                        name="modify" class="site-btn" style="width: 380px;" value="다음">
                  </div>

            </form>
            <!--  폼태그 종료 -->
               </div>
         </div>
      </div>
   </section>

   <!-- 현재 비밀번호 입력 끝-->

</body>
<script>
   // 폼태그가 작동 되기 전에 비밀번호 입력과 확인을 비교해서 일치해야 컨트롤러로 이동
   function equalPw() {
      var pass1 = document.getElementById('password1').value;
      var pass2 = document.getElementById('password2').value;
      if (pass1.length < 1) {
         alert('1글자 이상 입력해주세요.');
         return false;
      }
      if (pass1 != pass2) {
         alert("비밀번호가 일치하지 않습니다");
         return false;
      } else {
         alert("비밀번호가 변경되었습니다!");
         return true;
      }
   }
</script>
<script>
   if (name == "modify") {
      location.href = "main/main";
   }
   
</script>

</html>