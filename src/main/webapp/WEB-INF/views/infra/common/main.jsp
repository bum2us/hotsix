<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>alBum's</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/style.css">
	<style>
		div	{
			/* border: solid 1px orange; */
		}
		.mylogo{
			margin-left: 32.5rem;
			
		}
		.myFrame {
			border: 4px solid black;
			border-radius: 15px;
			height: 300px;	
			text-align: center; 
			padding-top: 5%;
 		}
		.myFrame i {
			color: black;
			font-size: 80pt;
		}
		.myFrame span{
			font-weight: bold;
			font-size: 50pt;
		}
		
	</style>
</head>
<body>
	<div class="container"> 	  
		<div class="row my-4 mylogo" style="object-fit: cover; width: 250px; height: 250px;"> 
			<img alt="" src="/resources/images/logo.png"> 
		</div>
		<div class="row my-4">   	
			<div class="col-3 offset-2 myFrame" onclick="location.href='/signin'">
				<i class="fa-solid fa-user"></i>
				<br> 
				<span>USER</span>
			</div>
			<div class="col-3 offset-2 myFrame" onclick="location.href='/administrator'">
				<i class="fa-solid fa-screwdriver-wrench"></i>
				<br>
				<span>ADMIN</span> 
			</div>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
		
</body>
</html>

