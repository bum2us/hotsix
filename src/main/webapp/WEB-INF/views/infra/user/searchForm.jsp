<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html>
<head>
	<title>alBum's</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
     <%@include file="../common/user/header.jsp" %>
     <form id="mainForm" method="POST">
     <input type="hidden" id="shOption" name="shOption">
     <%@include file="./postForm.jsp" %>
	 <div class="container-sm" style="width:700px; min-height:1000px;">
        <br><br><br>
            <div class="row search-area" style=" margin-bottom: 20px; height: 50px;">
                <input type="text" name="shValue" value="${vo.shValue }" style="width:100%; height:100%; padding: 10px; border:none;">
                <i onclick="runForm()" style="cursor:pointer; color:black; font-size: 16pt; position: relative; left: 93%; bottom: 70%;" class="fa-solid fa-magnifying-glass"></i>
            </div>

            <div class="row search-area" style="padding: 20px; margin-bottom: 20px;">
                <div class="col">
                    <div class="row">
                        <span style="font-size:12pt; font-weight:bold;">게시물로 검색 결과</span>
                    </div>
                    <hr>
                    <c:choose> 
                    	<c:when test="${postList.size() ne 0}"> 
                    		<c:forEach items="${postList}" var="list" varStatus="status">
								<div class="row my-3" style="cursor:pointer;" onclick="openPost('${list.postSeq}')">
			                        <div class="col-1 offset-1">
			                            <img src="
			                            <c:if test="${list.upPath eq null }">/resources/images/profile/empty.png</c:if>
			                            <c:if test="${list.upPath ne null }">${list.upPath}${list.upUuidName}</c:if>
			                            " alt="" style="border-radius:50%; width:45px; height:45px;">
			                        </div>
			                        <div class="col-9" style="overflow: hidden;">
			                            <span style="font-size: 10pt; line-height:45px; white-space: nowrap;" ><c:out value="${list.postContent }"/></span>
			                        </div>
			                    </div>
			                             			
                    		</c:forEach>	
                    	</c:when>
                    	<c:otherwise>
                    		<span>검색 결과가 없습니다.</span>
                    	</c:otherwise>
                    </c:choose>
                    <div class="row mt-4">
                        <div class="col text-center">
                            <span style="font-size:8pt; cursor:pointer;">더보기</span>
                        </div>
                    </div>           
	            </div>
            </div>

            <div class="row search-area" style="padding: 20px; margin-bottom: 20px;">
                <div class="col">
                    <div class="row">
                        <span style="font-size:12pt; font-weight:bold;">이름으로 검색 결과</span>
                    </div>
                    <hr>
                    
                    <c:choose> 
                    	<c:when test="${memberNameList.size() ne 0}"> 
                    		<c:forEach items="${memberNameList}" var="list" varStatus="status">
								<div class="row my-3" style="cursor:pointer;" onclick="goProfile(${list.mmSeq})">
			                        <div class="col-1 offset-1">
			                            <img src="
			                            <c:if test="${list.upPath eq null }">/resources/images/profile/empty.png</c:if>
			                            <c:if test="${list.upPath ne null }">${list.upPath}${list.upUuidName}</c:if>
			                            " alt="" style="border-radius:50%; width:45px; height:45px;">
			                        </div>
			                        <div class="col">
			                            <div class="row gy-0" style="height:70%;">
			                                <span style="font-size:12pt; font-weight:bold;"><c:out value="${list.mmNickname }"/></span>
			                            </div>
			                            <div class="row gy-0" style="height:30%;">
			                                <span style="font-size:8pt; color:#999;"><c:out value="${list.mmName }"/></span>
			                            </div>
			                        </div>
			                        <div class="col-7" style="overflow: hidden;">
			                            <span style="font-size: 10pt; line-height:45px; white-space: nowrap;" ><c:out value="${list.mmComment }"/></span>
			                        </div>
			                    </div>
			                             			
                    		</c:forEach>	
                    	</c:when>
                    	<c:otherwise>
                    		<span>검색 결과가 없습니다.</span>
                    	</c:otherwise>
                    </c:choose>
                    <div class="row mt-4">
                        <div class="col text-center">
                            <span style="font-size:8pt; cursor:pointer;">더보기</span>
                        </div>
                    </div>           
	            </div>
            </div>
            
            
            <div class="row search-area" style="padding: 20px; margin-bottom: 20px;">
                <div class="col">
                    <div class="row">
                        <span style="font-size:12pt; font-weight:bold;">닉네임으로 검색 결과</span>
                    </div>
                    <hr>
                    
                    <c:choose> 
                    	<c:when test="${memberNickNameList.size() ne 0}"> 
                    		<c:forEach items="${memberNickNameList}" var="list" varStatus="status">
								<div class="row my-3" style="cursor:pointer;" onclick="goProfile(${list.mmSeq})">
			                        <div class="col-1 offset-1">
			                            <img src="
			                            <c:if test="${list.upPath eq null }">/resources/images/profile/empty.png</c:if>
			                            <c:if test="${list.upPath ne null }">${list.upPath}${list.upUuidName}</c:if>
			                            " alt="" style="border-radius:50%; width:45px; height:45px;">
			                        </div>
			                        <div class="col">
			                            <div class="row gy-0" style="height:70%;">
			                                <span style="font-size:12pt; font-weight:bold;"><c:out value="${list.mmNickname }"/></span>
			                            </div>
			                            <div class="row gy-0" style="height:30%;">
			                                <span style="font-size:8pt; color:#999;"><c:out value="${list.mmName }"/></span>
			                            </div>
			                        </div>
			                        <div class="col-7" style="overflow: hidden;">
			                            <span style="font-size: 10pt; line-height:45px; white-space: nowrap;" ><c:out value="${list.mmComment }"/></span>
			                        </div>
			                    </div>
			                             			
                    		</c:forEach>	
                    	</c:when>
                    	<c:otherwise>
                    		<span>검색 결과가 없습니다.</span>
                    	</c:otherwise>
                    </c:choose>
                    <div class="row mt-4">
                        <div class="col text-center">
                            <span style="font-size:8pt; cursor:pointer;">더보기</span>
                        </div>
                    </div>           
	            </div>
            </div>         

    </div>
    </form>
        <%-- footer --%>
    <%@include file="../common/adnnin/footer.jsp" %>

<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>	
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>		
<script type="text/javascript">

	runForm = function(){
		
		$("#mainForm").attr('action','/search').submit();
	};
	/* 
	goProfile = function(seq){
		
		$("#shOption").val(seq);
		$("#mainForm").attr('action','/profile').submit();
		
	};
 	*/
</script>
</body>
</html>