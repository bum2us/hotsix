<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>프로필</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/style.css">
    <style>
        div	{
            /* border: solid 1px orange; */
        }
        
    </style>
</head>
<body>
	<header>
		<div class="logo">
			<img src="/resources/images/mark_white.png" class="logoImage" alt="">
			<span class="logoName">AL<span class="logoName2">BUM</span>'S</span>
		</div>
		<form class="d-flex nav_src">
			<input class="form-control" type="search" placeholder="검색">
			<button class="btn" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
		</form>
		<nav>
			<ul class="nav_links">
				<li><a href="/main"><i class="fa-solid fa-house"></i></a></li>
				<li><a href="/chat"><i class="fa-solid fa-message"></i></a></li>
				<li><a href="/upload"><i class="fa-solid fa-square-plus"></i></a></li>
				<li><a href="/bookmark"><i class="fa-solid fa-heart"></i></a></li>
				<li><a href="/profile"><i class="fa-solid fa-user"></i></a></li>
				<li><a href="/"><i class="fa-solid fa-right-from-bracket"></i></a></li>
			</ul>
		</nav>
	</header>
    <div class="container">
        <div class="row" style="justify-content: center;">
            <div class="col-4 offset-2 porfileImgbox">
                <img class="profileImg" src="/resources/images/jwook/bori_04.jpg" alt="">
            </div>
            <div class="col-6 offset-1 pt-4">
                <div class="row mb-3 ">
                    <div class="col-8">
                        <span class="profileUserName"><c:out value="${ sessNickname }"/></span>
                    </div>
                    <div class="col offset-1 pt-2">
                        <button class="basebutton" style="font-weight:700;">프로필 편집</button>
                    </div>
                </div>
                <div class="row mb-2">
                    <p class="profileUserInfo">게시물<span class="profileInfoDetail">95</span></p>
                    <p class="profileUserInfo">팔로워<span class="profileInfoDetail">100</span></p>
                    <p class="profileUserInfo">팔로우<span class="profileInfoDetail">49</span></p>
                </div>
                <div class="row mb-2 ">
                    <p class="profileUserComment"><c:out value="${ sessComment }"/></p>
                </div>
            </div>
        </div>
        <hr>
        <div class="profile-grid-wrapper">
            <div>
                <a href="./postForm.html"><img src="/resources/images/jwook/bori_01.jpg" alt=""></a>
            </div>
            <div>
                <a href="./postForm.html"><img src="/resources/images/jwook/bori_02.jpg" alt=""></a>
            </div>
            <div>
                <a href="./postForm.html"><img src="/resources/images/jwook/bori_03.jpg" alt=""></a>
            </div>
            <div>
                <a href="./postForm.html"><img src="/resources/images/jwook/bori_04.jpg" alt=""></a>
            </div>
            <div>
                <a href="./postForm.html"><img src="/resources/images/jwook/bori_05.jpg" alt=""></a>
            </div>
            <div>
                <a href="./postForm.html"><img src="/resources/images/jwook/bori_06.jpg" alt=""></a>
            </div>
        </div>
    </div>
    <footer class="footer-bottom">
        <ul class="socials">
          <li><a href="#"><i class="fa-brands fa-square-facebook"></i></a></li>
          <li><a href="#"><i class="fa-brands fa-square-twitter"></i></a></li>
          <li><a href="#"><i class="fa-brands fa-square-google-plus"></i></a></li>
          <li><a href="#"><i class="fa-brands fa-square-youtube"></i></a></li>
          <li><a href="#"><i class="fa-brands fa-square-instagram"></i></a></li>
        </ul>
        <p>copyright &copy;2022 ALBUM'S. designed by <span>bum2us</span></p>
    </footer>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>		
<script>
    
</script>
</body>
</html>
