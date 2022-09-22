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
		
	</style>
</head>
<body style="background: #000">
	<%@include file="./postForm.jsp" %>
	<%@include file="../common/user/header.jsp" %>
	<div class="grid-wrapper">
		<div>
			<a href="javascript:openPost()"><img src="/resources/images/image_01.jpg" alt=""></a>
		</div>
		<div>
			<a href=""><img src="/resources/images/image_02.jpg" alt=""></a>
		</div>
		<div>
			<a href=""><img src="/resources/images/image_03.jpg" alt=""></a>
		</div>
		<div class="wide">
			<a href=""><img src="/resources/images/image_04.jpg" alt=""></a>
		</div>
		<div class="big">
			<a href=""><img src="/resources/images/image_05.jpg" alt=""></a>
		</div>
		<div>
			<a href=""><img src="/resources/images/image_06.jpg" alt=""></a>
		</div>
		<div>
			<a href=""><img src="/resources/images/image_07.jpg" alt=""></a>
		</div>
		<div class="tall">
			<a href=""><img src="/resources/images/image_08.jpg" alt=""></a>
		</div>
		<div>
			<a href=""><img src="/resources/images/image_09.jpg" alt=""></a>
		</div>
		<div class="big">
			<a href=""><img src="/resources/images/image_10.jpg" alt=""></a>
		</div>
		<div>
			<a href=""><img src="/resources/images/image_11.jpg" alt=""></a>
		</div>
		<div class="wide">
			<a href=""><img src="/resources/images/image_12.jpg" alt=""></a>
		</div>
		<div>
			<a href=""><img src="/resources/images/image_13.jpg" alt=""></a>
		</div>
		<div>
			<a href=""><img src="/resources/images/image_14.jpg" alt=""></a>
		</div>
		<div class="big">
			<a href=""><img src="/resources/images/image_15.jpg" alt=""></a>
		</div>
		<div class="tall">
			<a href=""><img src="/resources/images/image_16.jpg" alt=""></a>
		</div>
		<div>
			<a href=""><img src="/resources/images/image_17.jpg" alt=""></a>
		</div>
		<div>
			<a href=""><img src="/resources/images/image_18.jpg" alt=""></a>
		</div>
		<div class="big">
			<a href=""><img src="/resources/images/image_19.jpg" alt=""></a>
		</div>
		<div  class="tall">
			<a href=""><img src="/resources/images/image_20.jpg" alt=""></a>
		</div>
		<div>
			<a href=""><img src="/resources/images/image_21.jpg" alt=""></a>
		</div>
		<div class="wide">
			<a href=""><img src="/resources/images/image_22.jpg" alt=""></a>
		</div>
		<div>
			<a href=""><img src="/resources/images/image_23.jpg" alt=""></a>
		</div>
		<div>
			<a href=""><img src="/resources/images/image_24.jpg" alt=""></a>
		</div>
	</div>
	<%@include file="../common/user/footer.jsp" %>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	<script>
	
	openPost = function() {
		
		$(".modal_overlay").show();
		
	}
	
	closePost = function() { 
		
		$(".modal_overlay").hide();
	}
	
	</script>	
</body>
</html>
