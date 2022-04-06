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

    <button type="button" onclick="location.href='share'">탈래 신청</button>

    <script></script>
  </body>
</html>
