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
    <input type="text" id="lat" name="lat" style="display: none" />
    <input type="text" id="lng" name="lng" style="display: none" />
    <c:forEach items="${sharelist}" var="sharelist">
      ${sharelist_date}
    </c:forEach>
    <!--  </form> -->
    <script>
      function getLocation() {
        // GPS를 지원하면
        navigator.geolocation.getCurrentPosition(
          function (position) {
            $('#lat').val(position.coords.latitude);
            $('#lng').val(position.coords.longitude);
            alert(position.coords.latitude + ' ' + position.coords.longitude);
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
