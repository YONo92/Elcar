<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <title>Insert title here</title>
  </head>
  <body>
    <!-- <form action="sharelist" method="get"> -->
    <input type="text" id="lat" name="lat" value="" style="display: none" />
    <input type="text" id="lng" name="lng" value="" style="display: none" />

    <c:forEach var="share" items="${shareList}"> ${share.num} </c:forEach>
    <!-- <p>아니 왜 못가져오냐고 염병</p> -->

    <!-- <p>아니 왜 못가져오냐고 염병</p> -->
    <button type="button" onclick="location.href='share'">탈래 신청</button>
	
    <script>
      //   function getLocation() {
      //     // GPS를 지원하면
      //     navigator.geolocation.getCurrentPosition(
      //       function (position) {
      //         $.ajax({
      //           url:
      //             'http://localhost:8080/sharelistRest?lat=' +
      //             position.coords.latitude +
      //             '&lng=' +
      //             position.coords.longitude,
      //           method: 'GET',
      //           success: function (res) {},
      //           error: function (error) {
      //             alert('통신실패');
      //           },
      //         });
      //         $('#lat').val(position.coords.latitude);
      //         $('#lng').val(position.coords.longitude);
      //       },
      //       function (error) {
      //         console.error(error);
      //         alert('GPS를 지원하지 않습니다');
      //       },
      //       {
      //         enableHighAccuracy: false,
      //         maximumAge: 0,
      //         timeout: Infinity,
      //       }
      //     );
      //   }
    </script>
  </body>
</html>
