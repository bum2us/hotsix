<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<header>
	<div class="logo" onclick="location.href='/main'" style="cursor:pointer;"> 
		<img src="/resources/images/mark_white.png" class="logoImage" alt="">
		<span class="logoName">AL<span class="logoName2">BUM</span>'S</span>
	</div>
	<form class="d-flex nav_src" method="POST" action="/search">
		<input class="form-control" name="shValue" value="${vo.shValue }" type="search" placeholder="검색">
		<button class="btn" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
	</form>
	<nav>
		<ul class="nav_links">
			<li><a href="/main"><i class="fa-solid fa-house"></i></a></li>
			<li><a href="/chat"><i class="fa-solid fa-message"></i></a></li>
			<li><a href="/upload"><i class="fa-solid fa-square-plus"></i></a></li>
			<li><a href="/bookmark"><i class="fa-solid fa-heart"></i></a></li>
			<li><a href="/profile"><i class="fa-solid fa-user"></i></a></li>
			<li><c:out value="${sessNickName}"/></li>
			<li><a href="/signin"><i class="fa-solid fa-right-from-bracket"></i></a></li>
		</ul>
	</nav>
</header>