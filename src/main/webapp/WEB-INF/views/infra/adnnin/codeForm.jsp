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
						<c:when test="${vo.shOption eq null}">
							코드 추가
						</c:when>
						<c:otherwise>
							코드 수정
						</c:otherwise>
					</c:choose>
				</span>
			</div>
		</div>
		<form id="mainForm">
			<div class="row mt-4 searchForm">
				<div class="col">
					<div class="row my-4">
						<div class="col-6">
							<c:choose>
								<c:when test="${vo.shOption eq null}">
									<select name="groupSeq">
										<option value="" disabled selected>코드그룹이름</option>
										<c:forEach items="${list}" var ="list" varStatus="status">
											<option value="<c:out value="${status.count}"/>"><c:out value="${list.groupName}"></c:out></option>									
										</c:forEach>	
									</select>
								</c:when>
								<c:otherwise>
									<select name="upCodeGroupName">
										<option value="<c:out value="${vo.upCodeGroupName}"/>" selected><c:out value="${vo.upCodeGroupName}"/></option>									
									</select>
								</c:otherwise>
							</c:choose>								
						</div>
						<div class="col-6">
							<c:choose>
								<c:when test="${vo.shOption eq null}">
									<select name="useNy">
										<option value="" disabled selected>사용여부</option>
										<option value="0">N</option>
										<option value="1">Y</option>
									</select>
								</c:when>
								<c:otherwise>
									<select name="upUseNy">
										<c:choose>
											<c:when test="${vo.upUseNy eq 'N'}">
												<option value="0" selected>N</option>
												<option value="1">Y</option>
											</c:when>
											<c:when test="${vo.upUseNy eq 'Y'}">
												<option value="0">N</option>
												<option value="1" selected>Y</option>
											</c:when>
										</c:choose>
									</select>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-6">
							<c:choose>
								<c:when test="${vo.shOption eq null}">
									<input type="text" placeholder="코드" name="codeKey">
								</c:when>
								<c:otherwise>
									<input type="text" placeholder="코드" name="upCodeKey" value="<c:out value="${vo.upCodeKey}"/>">
								</c:otherwise>
							</c:choose>
						</div>
						<div class="col-6">
							<c:choose>
								<c:when test="${vo.shOption eq null}">
									<input type="text" placeholder="코드이름" name="codeName">	
								</c:when>
								<c:otherwise>
									<input type="text" placeholder="코드이름" name="upCodeName" value="<c:out value="${vo.upCodeName}"/>">
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<input type="hidden" id="seq" name="upCodeSeq" value="<c:out value='${vo.shOption}'/>" >
					<div class="row mb-3 justify-content-end">
						<button type="button" class="basebutton" onclick = "location.href='/code/CodeList'">이전</button>
						<button type="button" class="basebutton">리셋</button>
						<button type="button" class="basebutton" onclick="formSubmit()">
							<c:choose>
								<c:when test="${vo.shOption eq null}">추가</c:when>
								<c:otherwise>
									수정
								</c:otherwise>
							</c:choose>	
						</button>
					</div>
				</div>
			</div>
		</form>
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

<script type="text/javascript">
	
	function formSubmit(btn) {
		
		var seq = $('#seq').val();
		var form = $('#mainForm');
		
		if(seq =="0" || seq ==""){
			form.attr("action","/codeForm/add").submit();
		}
		else{
			form.attr("action","/codeForm/upd").submit();
		}
		
		
	}
	
</script>

</body>
</html>
