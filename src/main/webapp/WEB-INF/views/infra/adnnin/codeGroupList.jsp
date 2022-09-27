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
<title>코드 그룹 관리</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
</head>
<body>
	
	<%@include file="../common/adnnin/header.jsp" %>
	<div class="container">
		<form id="mainForm" method="POST">
        <br><br>
		<div class="row justify-content-center">
			<div class="col text-center">
				<span class="page_title">코드 그룹 관리</span>
			</div>
		</div>
		<div class="row mt-4 searchForm">
				<div class="col">
					<div class="row my-3">
						<h6>검색조건</h6>
					</div>
					<div class="row mb-4">
						<div class="col-3">
							<select name="shUseNy">
								<option value="" disabled selected>사용여부</option>
								<option value="0">N</option>
								<option value="1">Y</option>
							</select>
						</div>
						<div class="col-3">
							<select name="shDateOption" >
								<option value="" disabled selected>검색구분</option>
								<option value="1">수정일</option>
								<option value="2">등록일</option>
							</select>
						</div>
						<div class="col-3">
							<input type="text" name="shDateStart" id="startDate" placeholder="시작일">
						</div>
						<div class="col-3">
							<input type="text" name="shDateEnd" id="endDate" placeholder="종료일">
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-3">
							<select name="shOption">
								<option value="" disabled selected>검색위치</option>
								<option value="1">코드그룹코드</option>
								<option value="2">코드그룹이름</option>
							</select>
						</div>
						<div class="col">
							<input type="text" name="shValue" placeholder="검색어">
						</div>
					</div>
					<div class="row mb-3">
						<button type="button" class="basebutton" onclick="runForm('src',0)">검색</button>
						<button type="button" class="basebutton" onclick="location.href='/codegroup/codeGroupList'">리셋</button>
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
							<th>코드그룹 이름(한글)</th>
							<th>사용여부</th>
							<th>코드갯수</th>
							<th>등록일</th>
							<th>수정일</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<tr>
									<td colspan="8" style="text-align: center;">No data...!<td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="list" varStatus="status">
									<tr onclick="runForm('form',${list.ccgSeq})"> 
										<td onclick="event.stopPropagation()">
											<input class="form-check-input" type="checkbox">
										</td>
										<td><c:out value="${status.count }"/></td>
										<td><c:out value="${list.ccgSeq }"/></td>
										<td><c:out value="${list.ccgName }"/></td>
										<td>
										<c:if test="${list.ccgUseNy eq 0}">N</c:if>
										<c:if test="${list.ccgUseNy eq 1}">Y</c:if>
										</td>
										<td><c:out value="${list.codeCount}"/></td>
										<td><c:out value="${list.ccgCreateDate}" /></td>
										<td><c:out value="${list.ccgEditDate }"></c:out></td>
									</tr>	
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
			<bs:paging pageNo ="${vo.pageNumber}" pageTotal="${vo.pageTotal}" pageSize="${vo.pageSize}"></bs:paging> 
			<div class="row">
				<div class="col-2">
					<button type="button" class="buttons"><i class="fa-solid fa-xmark"></i></button>
					<button type="button" class="buttons"><i class="fa-solid fa-trash-can"></i></button>
				</div>
				<div class="col-1 offset-9 text-end">
					<button type="button" class="buttons" onclick="runForm('add',0)"><i class="fa-solid fa-plus"></i></button>
				</div>
			</div>
			<input type="hidden" id="upCcgSeq" name="upCcgSeq" value="${vo.upCcgSeq }">
			<input type="hidden" id="pageNumber" name="pageNumber" value="${vo.pageNumber}">
		</form>
    </div>
	<%@include file="../common/adnnin/footer.jsp" %>

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
	  
	  
	  runForm = function(key,no) {
		  
		  var form = $("#mainForm");
		  
		  switch(key)
		  {
		  	case "src":
		    {
		  		form.attr("action","/codegroup/codeGroupList").submit();
		  		break;
		    }
		  	case "add":
		  	{
		  		var seq = $("#upCcgSeq");
				seq.attr("value",null);
		  		form.attr("action","/codegroup/codeGroupForm").submit();
		  		break;
	  		}
		  	case "form":
			{
				var seq = $("#upCcgSeq");
				seq.attr("value",no);
				form.attr("action","/codegroup/codeGroupForm").submit();
				break;
			}
		  	case "page":
			{
				var pageno = $("#pageNumber");
				pageno.attr("value",no);
				form.attr("action","/codegroup/codeGroupList").submit();
				break;
			}		
		  
		  }
	  }
	</script>		
</body>
</html>
