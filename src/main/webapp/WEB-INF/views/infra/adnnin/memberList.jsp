<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="bs" tagdir="/WEB-INF/tags/utils" %>
<jsp:useBean id="CodeServiceImpl" class="com.bum2us.infra.modules.code.CodeServiceImpl"/>

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
	<%@include file="../common/adnnin/header.jsp" %>
	<div class="container">
        <br><br>
		<div class="row justify-content-center">
			<div class="col text-center">
				<span class="page_title">멤버 관리</span>
			</div>
		</div>
		<c:set var = "listCodeGender" value = "${CodeServiceImpl.selectListCachedCode('2')}"/>
		<form id="mainForm">
			<div class="row mt-4 searchForm" id="searchForm">
				<div class="col">
					<div class="row my-3">
						<h6>검색조건</h6>
					</div>
					<div class="row mb-4">
						<div class="col-3">
							<bs:selectorMember functionType="shGender" op="${vo.shGender}"></bs:selectorMember>
						</div>
						<div class="col-3">
							<bs:selectorMember functionType="shDateOption" op="${vo.shDateOption}"></bs:selectorMember>
						</div>
						<div class="col-3">
							<input id="startDate" type="text" name="shDateStart" placeholder="시작일" value="${vo.shDateStart}" style="backcolor: black;">
						</div>
						<div class="col-3">
							<input id="endDate" type="text" name="shDateEnd" placeholder="종료일" value="${vo.shDateEnd}" style="backcolor: black;">
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-3">
							<bs:selectorMember functionType="shOption" op="${vo.shOption}"></bs:selectorMember>
						</div>
						<div class="col">
							<input type="text" name="shValue" placeholder="검색어" value="${vo.shValue}"> 
						</div>
					</div>
					<div class="row mb-3">
						<button type="button" class="basebutton" onclick="runForm('src',0)">검색</button>
						<button type="button" class="basebutton" onclick="location.href='/member/memberList'">리셋</button>
					</div>
				</div>
			</div>
		
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
							<th>성별</th>
							<th>등록일</th> 
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var ="list" varStatus="status">
							<tr onclick="runForm('form',${list.mmSeq})">
								<td>
									<input onclick="event.stopPropagation()" name="listCheckbox" class="form-check-input" type="checkbox">
								</td>
								<td style="display: none"><c:out value="${list.mmSeq }"/></td>
								<td><c:out value="${status.count}"/></td>
								<td><c:out value="${list.mmName}"/></td>
								<td><c:out value="${list.mmId}"/></td>
								<td><c:out value="${list.mmNickname}"/></td>
								<td><c:out value="${list.mmDob}"/></td>
								<td><c:out value="${list.mmEmail}"/></td>
								<td><c:out value="${list.mmPhone}"/></td>
								<td>
									<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
										<c:if test="${list.mmGender eq listGender.ccKey}"><c:out value="${listGender.ccName }"/></c:if>
									</c:forEach> 
								</td>
								<td><c:out value="${list.mmCreateDate}"/></td>
							</tr>	
						</c:forEach>
					</tbody>
				</table> 
			</div>
			
			<%-- 페이징 기능 --%>
			<%@ taglib prefix="bs" tagdir="/WEB-INF/tags/utils" %>
			<bs:pagingMember pageNo ="${vo.pageNumber}" pageTotal="${vo.pageTotal}" pageSize="${vo.pageSize}"></bs:pagingMember>
			
			<%-- hidden input --%>
			<input type="hidden" id="pageNumber" name="pageNumber" value="${vo.pageNumber}">
			<input type="hidden" id="formNumber" name="shSeq" value="${vo.shSeq}">
			
		</form>	 
		<div class="row">
			<div class="col-2">
				<button type="button" class="buttons" onclick="uelitem()"><i class="fa-solid fa-xmark"></i></button>
				<button type="button" class="buttons"><i class="fa-solid fa-trash-can"></i></button> 
			</div>
			<div class="col-1 offset-9 text-end">
				<button type="button" class="buttons" onclick="runForm('add',0)"><i class="fa-solid fa-plus"></i></button>
			</div>
		</div>
    </div>
    
    <%-- footer --%>
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
		  		form.attr("action", "/member/memberList" ).submit();
		  		break;	
		  	}
		  	case "form":
		  	{
		  		var seq = $("#formNumber");
		  		seq.attr("value",no);
		  		form.attr("action", "/member/memberForm" ).submit();
		  		break;
		  	}
		  	case "page":
	  		{
		  		var pageno = $("#pageNumber");
		  		pageno.attr("value",no);
		  		form.attr("action", "/member/memberList").submit();
		  		break;
	  		}
		  	case "add":
	  		{
		  		form.attr("action","/member/memberForm").submit();
		  		break;
	  		}
		  }
		  
		  
	  }
	  
	  uelitem = function() {
		  
		  var txt = "";
		  var checkbox = $("input[name=listCheckbox]:checked");
		  
		  checkbox.each(function(i) {
			  
			  var addtag ="";
			  
			  var tr = checkbox.parent().parent().eq(i);
			  var td = tr.children();
			  
			  txt += td.eq(1).text() + "  ";
			  
			  addtag = '<input type="hidden" name="seqVoList['+i+'].shSeq" value="'+ td.eq(1).text() +'">' 
			  
			  $("#searchForm").after(addtag);
			  
		  });
		  //alert(txt);
		  
		  form.attr("action", "/member/memberUelete" ).submit();
	  }
	  
	</script>		
</body>
</html>