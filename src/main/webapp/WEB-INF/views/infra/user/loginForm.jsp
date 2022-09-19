<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>alBum's Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/loginStyle.css">
	<style>
		div {
			/* border: 1px orange solid; */
		}
	</style>
</head>
<body style="background-color:#000;">
		<div class="container">
			<form action="/main" id="loginform">
				<div class="row" style="margin-top: 200px;">
					<div class="col-9">
						<div class="gallery">
							<span style="--i:1;"><img src="/resources/images/temp01.jpg" alt=""></span>
							<span style="--i:2;"><img src="/resources/images/temp02.jpg" alt=""></span>
							<span style="--i:3;"><img src="/resources/images/temp03.jpg" alt=""></span>
							<span style="--i:4;"><img src="/resources/images/temp04.jpg" alt=""></span>
							<span style="--i:5;"><img src="/resources/images/temp05.jpg" alt=""></span>
							<span style="--i:6;"><img src="/resources/images/tom.png" alt=""></span>
							<span style="--i:7;"><img src="/resources/images/temp07.jpg" alt=""></span>
							<span style="--i:8;"><img src="/resources/images/temp08.jpg" alt=""></span>
							<span style="--i:9;"><img src="/resources/images/temp09.jpg" alt=""></span>
							<span style="--i:10;"><img src="/resources/images/temp10.jpg" alt=""></span>
							<span style="--i:11;"><img src="/resources/images/temp11.jpg" alt=""></span>
							<span style="--i:12;"><img src="/resources/images/temp06.jpg" alt=""></span>
						</div>
					</div>
					
					<div class="col-3">
						<div class="row" style="object-fit: cover;">
							<img src="/resources/images/logo_white.png" alt="">
						</div>
						<div class="row mb-4">
							<div class="col gx-0">
								<div class="inputBox">
									<input type="text" required="required" name="id">
									<span>USER ID</span>
								</div>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col gx-0">
								<div class="inputBox">
									<input type="password" required="required" name="password">
									<span>PASSWORD</span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-4 p-0"> 
								<a style="--clr:#FF9F29; color:gray;" onclick="submitform()">
									<span></span><span></span><span></span><span></span>Login
								</a>
							</div>
							<div class="col-4 p-0">
								<a href="/signup" style="--clr:#FF9F29">
									<span></span><span></span><span></span><span></span>SignUp
								</a>
							</div>
							<div class="col-4 p-0">
								<a href="./findIdPwForm.html" style="--clr:#FF9F29">
									<span></span><span></span><span></span><span></span>Find ID/PW
								</a>
							</div>
						</div>
						<c:choose>
							<c:when test ="${item eq 0}"> 
								<div class="row text-center mt-3">
									<span style="font-size:8pt; color:red;">잘못된 아이디/비밀번호 입니다. 다시 시도하세요.</span>
								</div>
							</c:when>
							<c:otherwise>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</form>	
		</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
	<script type="text/javascript">
		
	function submitform(){
			
		if($('input[name=id]').val() == null || $('input[name=id]').val().length < 1)
		{
			alert("아이디를 입력하세요");
			$('input[name=id]').focus();			
			return false;
		}
		
		if($('input[name=password]').val() == null || $('input[name=password]').val().length < 1)
		{
			alert("비밀번호를 입력하세요");
			$('input[name=password]').focus();
			return false;
		}
		
		$('#loginform').submit();

	}
		
		
	</script>
</body>
</html>
