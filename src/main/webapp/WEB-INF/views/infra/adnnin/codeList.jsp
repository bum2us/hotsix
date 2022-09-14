<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="bs" tagdir="/WEB-INF/tags/utils" %>

<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>코드 관리</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
</head>
<body>
	<header>
		<div class="logo">
			<img src="/resources/images/mark_white.png" class="logoImage" alt="">
			<span class="logoName">AL<span class="logoName2">BUM</span>'S</span>
		</div>
		<nav>
			<ul class="nav_links">
				<li><a href="/codegroup/codeGroupList">코드그룹</a></li>
				<li><a href="#">코드</a></li>
				<li><a href="/member/memberList">멤버</a></li>
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
		<form action="/code/src">
			<div class="row mt-4 searchForm">
				<div class="col">
					<div class="row my-3">
						<h6>검색조건</h6>
					</div>
					<div class="row mb-4">
						<div class="col-3">
							<select name="shUseNy">
								<bs:selector myKey="${vo.shUseNy}"></bs:selector>
							</select>
						</div>
						<div class="col-3">
							<select name="shDateOption">
								<option value="" disabled selected>검색구분</option>
								<option value="1">수정일</option>
								<option value="2">등록일</option>
							</select>
						</div>
						<div class="col-3">
							<input name="shDateStart" id="startDate" type="text" placeholder="시작일">
						</div>
						<div class="col-3">
							<input name="shDateEnd" id="endDate" type="text" placeholder="종료일">
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-3">
							<select name="shOption" >
								<option value="0" disabled selected>검색위치</option>
								<option value="1">그룹코드</option>
								<option value="2">코드</option>
								<option value="3">코드이름</option>
								<option value="4">순서</option>
							</select>
						</div>
						<div class="col">
							<input name="shValue" type="text" placeholder="검색어" value="<c:out value="${vo.shValue}"/>">
						</div>
					</div>
					<div class="row mb-3">
						<button type="submit" class="basebutton">검색</button>
						<button type="button" class="basebutton" onclick="location.href='http://localhost:8080/code/CodeList'">리셋</button>
					</div>
				</div>
			</div>
		</form>
		<div class="row my-4 justify-content-center">
			<table  id="tableData">
				<thead>
					<tr>
						<th><input class="form-check-input" type="checkbox"></th>
						<th>#</th>
						<th>코드그룹 코드</th>
						<th>코드그룹 이름</th>
						<th>코드</th>
						<th>코드이름</th>
						<th>사용여부</th>
						<th>순서</th>
						<th>등록일</th>
						<th>수정일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="list" varStatus="status">
						<tr onclick="editCode(this)">
							<td onclick="event.stopPropagation()">
								<input class="form-check-input" type="checkbox">
							</td>
							<td><c:out value="${list.seq }"/></td>
							<td><c:out value="${list.groupSeq }"/></td>
							<td><c:out value="${list.groupName }"/></td>
							<td><c:out value="${list.codeKey }"/></td>
							<td><c:out value="${list.codeName }"/></td>
							<td>
							<c:choose>
								<c:when test="${list.useNy eq 0}">N</c:when>
								<c:when test="${list.useNy eq 1}">Y</c:when>
							</c:choose>
							</td>
							<td><c:out value="${list.codeKey}"/></td>
							<td><c:out value="${list.createDate}"/></td>
							<td><c:out value="${list.editDate}"/></td>
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
				<button type="button" class="buttons" onclick="delCode()"><i class="fa-solid fa-trash-can"></i></button>
			</div>
			<div class="col-1 offset-9 text-end">
				<button type="button" class="buttons" onclick="location.href='/codeForm'"><i class="fa-solid fa-plus"></i></button>
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
	  
	  function editCode(mytag){
		  
		  var tds = mytag.children;
/* 		  
		  alert(tds[1].textContent + " " +
			  tds[2].textContent + " " +
			  tds[3].textContent + " " +
			  tds[4].textContent + " " +
			  tds[5].textContent + " " +
			  tds[6].textContent + " " +
			  tds[7].textContent + " " +
			  tds[8].textContent);    
*/	  
		  location.href="/codeForm/?shOption="+ tds[1].textContent
				  +"&upCodeKey=" + tds[4].textContent
				  +"&upCodeGroupName=" + tds[3].textContent
				  +"&upCodeName=" + tds[5].textContent
				  +"&upUseNy=" + tds[6].textContent; 
	  }
	  
	  function delCode(){
		  
		  var tbody = $('#tableData');
		  
	  }
	  
	  
	</script>		
</body>
</html>

					
				