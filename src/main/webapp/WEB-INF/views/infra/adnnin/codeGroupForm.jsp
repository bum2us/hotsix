<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>alBum's</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <style>
        div {
            /* border: 1px solid orange; */
        }

    </style>
</head>
<body>
	<div class="container">
        <br><br>
		<div class="row justify-content-center">
			<div class="col text-center">
				<span class="page_title">
				<c:choose>
					<c:when test="${vo.upCcgSeq eq null}">코드 그룹 추가</c:when>
					<c:otherwise>코드 그룹 수정</c:otherwise>
				</c:choose>
				</span>
			</div>
		</div>
		<form method="POST" id="mainForm">
			<div class="row mt-4 searchForm">
				<div class="col">
					<div class="row my-4">
						<div class="col-6">
							<input type="text" placeholder="코드이름" name="ccgName" value="${item.ccgName }">
						</div>
						<div class="col-6">
							<select name="ccgUseNy">
								<option value="" disabled selected>사용여부</option>
								<option value="0" <c:if test="${item.ccgUseNy eq 0}">selected</c:if> >N</option>
								<option value="1" <c:if test="${item.ccgUseNy eq 1}">selected</c:if> >Y</option>
							</select>
						</div>
					</div>
					<div class="row mb-3 justify-content-end">
						<button type="button" class="basebutton" onclick = "location.href='/codegroup/codeGroupList'">이전</button>
						<button type="button" class="basebutton" onclick = "location.href='/codegroup/codeGroupForm'">리셋</button> 
						<c:choose>
							<c:when test="${vo.upCcgSeq eq null}">
								<button type="button" class="basebutton" onclick="runForm('add')">추가</button>					
							</c:when>
							<c:otherwise>
								<button type="button" class="basebutton" onclick="runForm('edit')">수정</button>	
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<input type="hidden" name="shValue" value="${vo.shValue}">
			<input type="hidden" name="shOption" value="${vo.shOption}">
			<input type="hidden" name="shDateOption" value="${vo.shDateOption}">
			<input type="hidden" name="shDateStart" value="${vo.shDateStart}">
			<input type="hidden" name="shDateEnd" value="${vo.shDateEnd}">
			<input type="hidden" name="shUseNy" value="${vo.shUseNy}">
			<input type="hidden" name="pageNumber" value="${vo.pageNumber}">
			<input type="hidden" name="pageSize" value="${vo.pageSize}">
			<input type="hidden" name="pageRange" value="${vo.pageRange}">
			<input type="hidden" name="pageTotal" value="${vo.pageTotal}">
			<input type="hidden" name="upCcgSeq" value="${vo.upCcgSeq}">
			<input type="hidden" name="ccgSeq" value="${vo.upCcgSeq}">
		</form>
    </div>
	<%@include file="../common/adnnin/footer.jsp" %>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script type="text/javascript">
	
	runForm = function(key,no){
		
		var form = $("#mainForm");
		
		switch (key) {
		case "add":
		{
			form.attr("action","/codegroup/add").submit();
			break;
		}
		case "edit":
		{
			form.attr("action","/codegroup/edit").submit();
			break;
		}
		default:
			break;
		}
		
	}
	
</script>	
</body>
</html>
