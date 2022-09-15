<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>멤버 관리</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
</head>
<body>
	<header>
		<div class="logo">
			<img src="../../images/mark_white.png" class="logoImage" alt="">
			<span class="logoName">AL<span class="logoName2">BUM</span>'S</span>
		</div>
		<nav>
			<ul class="nav_links">
				<li><a href="/codegroup/codeGroupList">코드그룹</a></li>
				<li><a href="/code/CodeList">코드</a></li>
				<li><a href="/member/memberList">멤버</a></li>
			</ul>
		</nav>
		<div class="profile">
			<div class="imgBox">
				<img src="/resources/images/temp08.jpg" alt="">
			</div>
		</div>
		<span class="administrator">${item.nickname}</span>
		<button class="logoutBtn" type="button" onclick="location.href='../user/member/loginForm.html'"><i class="fa-solid fa-right-from-bracket"></i></button>
	</header>
	<div class="container">
        <br><br>
		<div class="row justify-content-center">
			<div class="col text-center">
				<span class="page_title">멤버 관리</span>
			</div>
		</div>
		<form action="/member/src">
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
							<select name = "shDateOption" >
								<option value="0" disabled selected>검색구분</option>
								<option value="1">수정일</option>
								<option value="2">등록일</option>
								<option value="3">생년월일</option>
							</select>
						</div>
						<div class="col-3">
							<input id="startDate" type="text" name="shDateStart" placeholder="시작일" value="" style="backcolor: black;">
						</div>
						<div class="col-3">
							<input id="endDate" type="text" name="shDateEnd" placeholder="종료일" value="" style="backcolor: black;">
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-2">
							<select name="shOption" id="shOption" >
								<option value="0"  disabled selected>검색 위치</option>
								<option value="1">이름</option>
								<option value="2">ID</option>
								<option value="3">닉네임</option>
								<option value="4">email</option>
								<option value="5">휴대전화</option>
							</select>
						</div>
						<div class="col">
							<input type="text" name="shValue" placeholder="검색어" value=""> 
						</div>
					</div>
					<div class="row mb-3">
						<button type="submit" class="basebutton">검색</button>
						<button type="button" class="basebutton">리셋</button>
					</div>
				</div>
			</div>
		</form>
		<div class="row my-4 justify-content-center">
			<table>
				<thead>
					<tr>
						<th><input class="form-check-input" type="checkbox"></th>
						<th>#</th>
						<th>이름</th>
						<th>ID</th>
						<th>닉네임</th>
						<th>생년월일</th>
						<th>email</th>
						<th>휴대전화</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var ="list" varStatus="status">
						<tr>
							<td>
								<input class="form-check-input" type="checkbox">
							</td>
							<td><c:out value="${list.seq}"/></td>
							<td><c:out value="${list.name}"/></td>
							<td><c:out value="${list.id}"/></td>
							<td><c:out value="${list.nickname}"/></td>
							<td><c:out value="${list.dob}"/></td>
							<td><c:out value="${list.email}"/></td>
							<td><c:out value="${list.phone}"/></td>
							<td><c:out value="${list.createDate}"/></td>
						</tr>	
					</c:forEach>
				</tbody>
			</table> 
		</div>
		<div class="row justify-content-center"> 
			<ul class="pagination">
				<li class="pageList"><a class="prev" href="#">Previous</a></li>
				<%@ taglib prefix="bs" tagdir="/WEB-INF/tags/utils" %>
				<bs:pagingList pageNo ="${vo.pageNumber}" pageTotal="7"></bs:pagingList> 
				<%-- 
				<c:choose>
					<c:when test="${vo.pageNumber < 4}">
						<c:set var="startIdx" value="1"/>
						<c:set var="endIdx" value="5"/>  
					</c:when>
					<c:when test="${vo.pageNumber > 3 }">
						<c:set var="startIdx" value="${vo.pageNumber-2}"/>
						<c:set var="endIdx" value="${vo.pageNumber+2}"/>
					</c:when> 
				</c:choose>
				<c:set var ="countIdx" value="${startIdx}"/>
				<c:forEach begin="${startIdx}" end="${endIdx}" varStatus="status">
					<c:choose>
						<c:when test="${vo.pageNumber eq countIdx}"> 
							<li class="pageList pageNumber active"><a href="/member/memberList/?pageNumber=${countIdx}"><c:out value="${countIdx}"/></a></li>
						</c:when>
						<c:otherwise>
							<li class="pageList pageNumber"><a href="/member/memberList/?pageNumber=${countIdx}"><c:out value="${countIdx}"/></a></li>
						</c:otherwise>
					</c:choose>
					<c:set var="countIdx" value="${countIdx + 1}"/> 
				</c:forEach>
				--%>
				<li class="pageList"><a class="next" href="#">Next</a></li>
			</ul>
		</div>
		<div class="row">
			<div class="col-2">
				<button type="button" class="buttons"><i class="fa-solid fa-xmark"></i></button>
				<button type="button" class="buttons"><i class="fa-solid fa-trash-can"></i></button> 
			</div>
			<div class="col-1 offset-9 text-end">
				<button type="button" class="buttons" onclick="location.href='/signup'"><i class="fa-solid fa-plus"></i></button>
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
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script>
	  $( function() {
	    $( "#startDate" ).datepicker({
	    	changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
	    	changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
	    	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
	    	yearRange: "1900:2023",
	    	dateFormat: "yy-mm-dd"
	    });
	  } );
	  $( function() {
	    $( "#endDate" ).datepicker({
	    	changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
	    	changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
	    	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
	    	yearRange: "1900:2023",
	    	dateFormat: "yy-mm-dd"
	    });
	  } );
	</script>		
</body>
</html>