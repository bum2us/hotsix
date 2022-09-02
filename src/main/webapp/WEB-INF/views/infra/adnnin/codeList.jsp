<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>코드 관리</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/style.css">
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
				<img src="/resources/images/temp08.jpg" alt="">
			</div>
		</div>
		<span class="administrator">beomsu</span>
		<button class="logoutBtn" type="button" onclick="location.href='../user/member/loginForm.html'"><i class="fa-solid fa-right-from-bracket"></i></button>
	</header>
	<div class="container">
        <br><br>
		<div class="row justify-content-center">
			<div class="col text-center">
				<span class="page_title">코드 관리</span>
			</div>
		</div>
		<div class="row mt-4 searchForm">
			<div class="col">
				<div class="row my-3">
					<h6>검색조건</h6>
				</div>
				<div class="row mb-4">
					<div class="col-3">
						<select id="">
							<option value="" disabled selected>사용여부</option>
							<option value="1">N</option>
							<option value="2">Y</option>
						</select>
					</div>
					<div class="col-3">
						<select id="" >
							<option value="" disabled selected>검색구분</option>
							<option value="1">수정일</option>
							<option value="2">등록일</option>
						</select>
					</div>
					<div class="col-3">
						<input type="text" placeholder="시작일">
					</div>
					<div class="col-3">
						<input type="text" placeholder="종료일">
					</div>
				</div>
				<div class="row mb-4">
					<div class="col">
						<input type="text" placeholder="검색어">
					</div>
				</div>
				<div class="row mb-3">
					<button type="button">검색</button>
					<button type="button">리셋</button>
				</div>
			</div>
		</div>
		<div class="row my-4 justify-content-center">
			<table>
				<thead>
					<tr>
						<th><input class="form-check-input" type="checkbox"></th>
						<th>#</th>
						<th>코드그룹 코드</th>
						<th>코드그룹 이름</th>
						<th>코드</th>
						<th>코드이름</th>
						<th>사용</th>
						<th>순서</th>
						<th>등록일</th>
						<th>수정일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="list" varStatus="status">
					<c:set var="now" value="<%=new java.util.Date()%>" />
						<tr>
							<td>
								<input class="form-check-input" type="checkbox">
							</td>
							<td><c:out value="${list.codeSeq }"/></td>
							<td><c:out value="${list.seq }"/></td>
							<td><c:out value="${list.groupName }"/></td>
							<td><c:out value="${list.codeKey }"/></td>
							<td><c:out value="${list.codeName }"/></td>
							<td></td>
							<td><c:out value="${list.codeKey}"/></td>
							<td><fmt:formatDate value="${now}" pattern="yyyy-MM-dd hh:mm:ss" /></td>
							<td><fmt:formatDate value="${now}" pattern="yyyy-MM-dd hh:mm:ss" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="row justify-content-center">
			<ul class="pagination">
				<li class="pageList"><a class="prev" href="#">Previous</a></li>
				<li class="pageList pageNumber active"><a href="#">1</a></li>
				<li class="pageList pageNumber"><a href="#">2</a></li>
				<li class="pageList pageNumber"><a href="#">3</a></li>
				<li class="pageList pageNumber"><a href="#">4</a></li>
				<li class="pageList pageNumber"><a href="#">5</a></li>
				<li class="pageList"><a class="next" href="#">Next</a></li>
			</ul>	
		</div>
		<div class="row">
			<div class="col-2">
				<button type="button" class="buttons"><i class="fa-solid fa-xmark"></i></button>
				<button type="button" class="buttons"><i class="fa-solid fa-trash-can"></i></button>
			</div>
			<div class="col-1 offset-9 text-end">
				<button type="button" class="buttons" onclick="location.href='./codeForm.html'"><i class="fa-solid fa-plus"></i></button>
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

					
				