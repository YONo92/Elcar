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
    <form action="sharelist" method="get">
      <input type="text" id="lat" name="lat" value="" style="display: none" />
      <input type="text" id="lng" name="lng" value="" style="display: none" />
      <c:forEach items="${sharelist}" var="sharelist">
        ${sharelist.date} ${sharelist.num}
      </c:forEach>
      <button></button>
    </form>
    <script>
      function getLocation() {
        // GPS를 지원하면
        navigator.geolocation.getCurrentPosition(
          function (position) {
            $('#lat').val(position.coords.latitude);
            $('#lng').val(position.coords.longitude);

            // $.ajax({
            //   url:
            //     'http://localhost:8080/sharelist?lat=' +
            //     position.coords.latitude +
            //     '&lng=' +
            //     position.coords.longitude,
            //   type: get,
            //   data: params,
            //   success: function (res) {
            //     alert('성공');
            //   },
            //   error: function (XMLHttpRequst, textStatus, errorThrown) {
            //     alert('통신실패');
            //   },
            // });
            // alert(position.coords.latitude + ' ' + position.coords.longitude);

            // window.location.href =
            //   'http://localhost:8080/sharelist?lat=' +
            //   position.coords.latitude +
            //   '&lng=' +
            //   position.coords.longitude;
          },
          function (error) {
            console.error(error);
            alert('GPS를 지원하지 않습니다');
          },
          {
            enableHighAccuracy: false,
            maximumAge: 0,
            timeout: Infinity,
          }
        );
      }
      getLocation();
    </script>
  </body>
</html>
