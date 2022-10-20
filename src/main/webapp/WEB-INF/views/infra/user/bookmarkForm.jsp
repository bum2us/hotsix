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
		
	</style>
</head>
<body>
	<%@include file="../common/user/header.jsp" %>
	<div class="container text-center" style="min-height: 700px;">
		<br><br>
		<br><br>		
		<div class="row favoraite_card_row">
			
			<c:forEach items="${list}" var="list" varStatus="status"> 
				<div class="col-3 text-center">
					<div class="row justify-content-center" style="width: 250px; height: 250px;">
						<img src="${list.upPath}${list.upUuidName}" alt="" style="border:none; border-radius:10px; width:100%; height:100%;">	 					
					</div>
					<div class="row justify-content-center">
						<h4><c:out value="${list.countLuv }"/><br><span>좋아요수</span></h4>
						<h4><c:out value="${list.countComment }"/><br><span>댓글수</span></h4>
					</div>
				</div>
			</c:forEach>
			
			<!--  카드  -->
			<!-- 		
			<div class="col-3">
				<div class="favoraite_card">
					<div class="imgBx">
						<img src="/resources/images/image_01.jpg" alt="">
					</div>
					<div class="content">
						<div class="detail">
							<h2>풍력발전소<br><span>작가이름</span></h2>
							<div class="data">
								<h3>123<br><span>조회수</span></h3>
								<h3>123<br><span>즐겨찾기</span></h3>
								<h3>123<br><span>댓글수</span></h3>
							</div>
							<div class="actionBtn">
								<button>보기</button>
								<button>삭제</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			-->
			
			
		</div>
	</div>
	<%@include file="../common/user/footer.jsp" %>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	<script>
		
	</script>	
</body>
</html>
