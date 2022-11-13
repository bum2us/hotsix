<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header>
	<div class="logo">
		<img src="/resources/images/mark_white.png" class="logoImage" alt="">
		<span class="logoName">AL<span class="logoName2">BUM</span>'S</span>
	</div>
	<nav>
		<ul class="nav_links">
			<li><a href="/administrator/main">메인</a></li>
			<li><a href="/member/memberList">멤버</a></li>
			<li><a href="/postList">게시물</a></li>
			<li><a href="/codegroup/codeGroupList">코드그룹</a></li>
			<li><a href="/code/CodeList">코드</a></li>
		</ul>
	</nav>
	<div class="profile">
		<div class="imgBox">
			<img src="/resources/images/temp08.jpg" alt="">
		</div>
	</div>
	<span class="administrator">${sessName}</span>
	<button class="logoutBtn" type="button" onclick="location.href='/administrator/logout'"><i class="fa-solid fa-right-from-bracket"></i></button>
</header>  