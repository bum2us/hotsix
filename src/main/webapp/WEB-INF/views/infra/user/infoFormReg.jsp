<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>가입완료</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div class="container">
        <div class="" style="width: 300px; height: 300px; margin:auto">
            <img src="/resources/images/logo.png" alt="" style="width: 100%; height:100%; ">
        </div>
        <div class="searchForm row justify-content-center text-center" style="padding: 20px; ">
            <span style="font-size: 16pt; font-weight: bolder; margin-bottom: 10px;"><c:out value="${item.mmName}"/>님</span>
            <div class="searchForm row text-center" style="background:#e6e6e6; padding: 20px;">   
                <p style="font-size: 12pt; margin-top: 10px;">회원가입이 성공적으로 완료되었습니다.</p>
                <p style="font-size: 12pt;">고객님의 가입을 진심으로 환영합니다.</p>
            </div>
        </div>
        <br>
        <div class="row justify-content-center">
            <button class="basebutton" type="button" style="width:200px; margin:30px 0px 30px 0px;" onclick="location.href='/signin'">로그인 화면으로</button>
        </div>
        
    </div>
	<%@include file="../common/user/footer.jsp" %>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>		
</body>
</html>
