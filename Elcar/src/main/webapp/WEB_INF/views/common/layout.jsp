<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="HVAC Template">
<meta name="keywords" content="HVAC, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title><tiles:insertAttribute name="title" /></title>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="${path }/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${path }/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="${path }/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="${path }/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="${path }/css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="${path }/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="${path }/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="${path }/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="${path }/css/style.css" type="text/css">
</head>

<body>

	<div id="header">
		<tiles:insertAttribute name="header" />
	</div>
	<div id="content">
		<tiles:insertAttribute name="body" />
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer" />
	</div>
	
	<!-- Js Plugins -->
	<script src="${path }/js/jquery-3.3.1.min.js"></script>
	<script src="${path }/js/bootstrap.min.js"></script>
	<script src="${path }/js/jquery.nice-select.min.js"></script>
	<script src="${path }/js/jquery-ui.min.js"></script>
	<script src="${path }/js/jquery.magnific-popup.min.js"></script>
	<script src="${path }/js/mixitup.min.js"></script>
	<script src="${path }/js/jquery.slicknav.js"></script>
	<script src="${path }/js/owl.carousel.min.js"></script>
	<script src="${path }/js/main.js"></script>
</body>
</html>