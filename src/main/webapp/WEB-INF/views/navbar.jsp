<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta charset="UTF-8">
<title>navbar</title>
<link rel="stylesheet" href="/resources/css/navBar.css">

</head>
<body>
	<header>
		<div class="logo">
			<img src="../../images/mark_white.png" class="logoImage" alt="">
			<span class="logoName">AL<span class="logoName2">BUM</span>'S</span>
		</div>
		<nav>
			<ul class="nav_links">
				<li><a href="./codeGroupList.html">코드그룹</a></li>
				<li><a href="./codeList.html">코드</a></li>
			</ul>
		</nav>
		<div class="profile">
			<div class="imgBox">
				<img src="../images/temp07.jpg" alt="">
			</div>
		</div>
		<span class="administrator">beomsu</span>
		<button class="logoutBtn" type="button" onclick="location.href='../user/member/loginForm.html'"><i class="fa-solid fa-right-from-bracket"></i></button>
	</header>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>		
</body>
</html>