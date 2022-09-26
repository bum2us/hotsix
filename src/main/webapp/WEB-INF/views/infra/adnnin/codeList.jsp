<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="bs" tagdir="/WEB-INF/tags/utils" %>
<jsp:useBean id="CodeGroupServiceImpl" class="com.bum2us.infra.modules.codegroup.CodeGroupServiceImpl"/>

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
	<%@include file="../common/adnnin/header.jsp" %>
	<div class="container">
        <br><br>
		<div class="row justify-content-center">
			<div class="col text-center">
				<span class="page_title">코드 관리</span>
			</div>
		</div>
		<form id="mainForm">
			<div class="row mt-4 searchForm">
				<div class="col">
					<div class="row my-3">
						<h6>검색조건</h6>
					</div>
					<div class="row mb-4">
						<div class="col-3">
							<bs:selectorCode functionType="shUseNy" op="${vo.shUseNy}"></bs:selectorCode>
						</div>
						<div class="col-3">
							<bs:selectorCode functionType="shDateOption" op="${vo.shDateOption}"></bs:selectorCode>
						</div>
						<div class="col-3">
							<input name="shDateStart" id="shDateStart" type="text" value="${vo.shDateStart }" placeholder="시작일">
						</div>
						<div class="col-3">
							<input name="shDateEnd" id="shDateEnd" type="text" value="${vo.shDateEnd }" placeholder="종료일">
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-3">
							<bs:selectorCode functionType="shOption" op="${vo.shOption}"></bs:selectorCode>
						</div>
						<div class="col">
							<input name="shValue" type="text" placeholder="검색어" value="${vo.shValue}">
						</div>
					</div>
					<div class="row mb-3">
						<button type="submit" class="basebutton">검색</button>
						<button type="button" class="basebutton" onclick="location.href='http://localhost:8080/code/CodeList'">리셋</button>
					</div>
				</div>
			</div>
		
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
							<tr onclick="runForm('form',${list.ccSeq})">
								<td onclick="event.stopPropagation()">
									<input class="form-check-input" type="checkbox">
								</td>
								<td style="display: none"><c:out value="${list.ccSeq}"/></td>
								<td><c:out value="${status.count }"/></td>
								<td><c:out value="${list.groupSeq }"/></td>
								<td><c:out value="${CodeGroupServiceImpl.selectOneCachedCodeGroup2Name(list.groupSeq) }" /></td>
								<%-- <td><c:out value="${list.groupName }"/></td> --%>
								<td><c:out value="${list.ccKey }"/></td>
								<td><c:out value="${list.ccName }"/></td>
								<td>
								<c:choose>
									<c:when test="${list.ccUseNy eq 0}">N</c:when>
									<c:when test="${list.ccUseNy eq 1}">Y</c:when>
								</c:choose>
								</td>
								<td><c:out value="${list.ccKey}"/></td>
								<td><c:out value="${list.ccCreateDate}"/></td>
								<td><c:out value="${list.ccEditDate}"/></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<%@ taglib prefix="bs" tagdir="/WEB-INF/tags/utils" %>
			<bs:pagingCode pageNo ="${vo.pageNumber}" pageTotal="${vo.pageTotal}" pageSize="${vo.pageSize}"></bs:pagingCode> 
			<input type="hidden" id="pageNumber" name="pageNumber" value="${vo.pageNumber}">
			<input type="hidden" id="upCcSeq" name="upCcSeq" value="">
			<div class="row">
				<div class="col-2">
					<button type="button" class="buttons"><i class="fa-solid fa-xmark"></i></button>
					<button type="button" class="buttons" onclick="delCode()"><i class="fa-solid fa-trash-can"></i></button>
				</div>
				<div class="col-1 offset-9 text-end">
					<button type="button" class="buttons" onclick="runForm('form',null)"><i class="fa-solid fa-plus"></i></button>
				</div>
			</div>
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
		 
		var form = $("#mainForm");
		
		runForm = function(key,no) {
					 
			switch(key)
			{			 
			case "src":
				{
					form.attr("action","/code/src").submit();
					break;
				}
			case "page":
				{
					var pageno = $("#pageNumber");
					pageno.attr("value",no);
					form.attr("action","/code/CodeList").submit();
					break;
				}		
			case "form":
				{
					var seq = $("#upCcSeq");
					seq.attr("value",no);
					form.attr("action","/codeForm").submit();
				}
			case "add":
				{
					form.attr("action","/codeForm").submit();
				}
			}
		}	
		 
	</script>		
</body>
</html>

					
				