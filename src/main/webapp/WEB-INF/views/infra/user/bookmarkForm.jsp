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
	<style>
		div	{
			/* border: solid 1px orange; */
		}
		
		.card-main {
			font-size: 10pt;
			font-weight: bold;		 
		}
		
		.card-sub {
			font-size: 8pt; 
		}
		
	</style>
</head>
<body>
	<%@include file="../common/user/header.jsp" %>
	<div class="container" style="min-height: 700px;"> 
	<form id="mainForm" method="POST">
		<input type="hidden" name="shOption"  id="shOption">
		<%@include file="./postForm.jsp" %>
			<br><br>
			<br><br>		
			<div class="row favoraite_card_row">
				
				<c:forEach items="${list}" var="list" varStatus="status"> 
					<div class="card" style="width: 18rem; margin: auto; margin-bottom: 30px; height: 400px; padding:0px;">       
						<img src="${list.upPath}${list.upUuidName}" class="card-img-top" alt="..." style="height: 250px; cursor:pointer;" onclick="openPost(${list.postSeq})"> 
						<div class="card-body">
							<div style="height: 50px; overflow: hidden; text-overflow: ellipsis; justify-content: center;">    
								<p class="card-text" style="font-size: 10pt;"><c:out value="${list.postContent }"/></p>
							</div>
							<div class="row justify-content-center mt-2" style="height: 50px;">  
								<div class="col text-center">
									<span class="card-main"><c:out value="${list.countLuv }"/></span><br>
									<span class="card-sub">좋아요</span>  
								</div>
								<div class="col text-center">
									<span class="card-main"><c:out value="${list.countComment }"/></span><br>
									<span class="card-sub">댓글수</span>
								</div>
							</div>
						</div>
					</div>
				</c:forEach> 
				
				<!--  카드  -->
				<!--
				<div class="card" style="width: 18rem;">
					<img src="..." class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
				-->
				
				
			</div>
		</form>
	</div>
	<%@include file="../common/user/footer.jsp" %>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	<script>
		
	</script>	
</body>
</html>
