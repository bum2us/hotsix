<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>프로필</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/style.css">
    <style>
        div	{
            /* border: solid 1px orange; */
        }
        
    </style>
</head>
<body>
	<%@include file="../common/user/header.jsp" %>
    <div class="container">
    	<form method="POST" id="mainForm">
	        <div class="row" style="justify-content: center;">
	            <div class="col-4 offset-2 porfileImgbox">
	                <img class="profileImg" src="
	                <c:choose>
	                	<c:when test ="${item.upSeq ne null}">${item.upPath}${item.upUuidName}</c:when>
	                	<c:otherwise>/resources/images/profile/empty.png</c:otherwise>
	               	</c:choose>
	                " alt="">
	            </div>
	            <div class="col-6 offset-1 pt-4"> 
	                <div class="row mb-3 ">
	                    <div class="col-8">
	                        <span class="profileUserName"><c:out value="${ sessNickName }"/></span>
	                    </div>
	                    <div class="col offset-1 pt-2">
	                        <button type="button" class="basebutton" style="font-weight:700;" onclick="runForm()">프로필 편집</button>
	                    </div>
	                </div>
	                <div class="row mb-2">
	                    <p class="profileUserInfo">게시물<span class="profileInfoDetail"><c:out value="${fn:length(list) }"/></span></p>
	                    <p class="profileUserInfo">팔로워<span class="profileInfoDetail">-</span></p>
	                    <p class="profileUserInfo">팔로우<span class="profileInfoDetail">-</span></p>
	                </div>
	                <div class="row mb-2 ">
	                    <p class="profileUserComment"><c:out value="${ sessComment }"/></p>
	                </div>
	            </div>
	        </div>
	        <hr>
	        <div class="profile-grid-wrapper">
	        	<c:forEach items="${list }" var="list" varStatus="status">
		            <div>
		                <a href=""><img src="${list.upPath}${list.upUuidName}" alt=""></a>
		            </div>        		
	        	</c:forEach>
	        </div>
        </form> 
    </div>
    <%@include file="../common/user/footer.jsp" %>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>		
<script>
	
	var form = $("#mainForm");

	runForm = function(key) {
		
		switch(key){
			
			default:
				{
					form.attr("action","/member/memberForm").submit();
					break;
				}
		
		}
		
		
	}
	
</script>
</body>
</html>
