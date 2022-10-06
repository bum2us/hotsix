
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 
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
	--%>
	<div class="modal_overlay" onclick="javascript:closePost()" style="display:none;">
		<br><br>
		<form id="mainForm">
			<input id="cmPostId" name="cmPostId" type="hidden">
			<div class="row post_frame" onclick="event.stopPropagation()">
				<div class="post_leftSide">
					<img id="postImg" src="" alt="">
				</div>
				<div class="post_rightSide">
					<div class="header">
						<div class="userImg">
							<img src="/resources/images/profile/empty.png" class="post_cover" alt="">
						</div>
						<div id="postWriter">
							
						</div>
					</div>
					<div class="comment_List" id="comment_List">
						<ul>
							<li>
								<div class="row commentBlock">
									<div class="col-3 comment_header">
										<img src="/resources/images/profile/empty.png" alt="">
									</div>
									<div class="col comment_body">
										<div class="comment_content">
											<span>
												<span class="comment_userName" id="postContentWriter"></span>
												<span id="postContent"></span>
											</span>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<ul>
							<li>
								<div class="row commentBlock">
									<div class="col-3 comment_header">
										<img src="/resources/images/profile/profile_04.png" alt="">
									</div>
									<div class="col comment_body">
										<div class="comment_content">
											<span>
												<span class="comment_userName">luv1n_a</span>
												바람이 불어온다~
											</span>
										</div>
										<div class="comment_info">
											<span>1일전</span>
											<button type="button">좋아요 5개</button>
											<button type="button">답글 달기</button>
										</div>
									</div>
									<div class="col-1 comment_like">
										<i class="fa-regular fa-heart"></i>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="post_info">
						<div class="col-8">
							<div class="row">
								<span class="post_like"><span id="post_likeCount" class="post_likeCount">45</span>명이 좋아합니다.</span>
							</div>
							<div class="row post_time">
								<span>9월 10일</span>							
							</div>
						</div>
						<div class="col-4 post_function">
							<i id="luv" style="color: black;" class="fa-regular fa-heart" onclick="johayo()"></i>
							<i class="fa-regular fa-comment-dots"></i>
							<i class="fa-regular fa-paper-plane"></i>
						</div>
					</div>
					<div class="comment_input">
						<i class="fa-regular fa-face-smile"></i>
						<textarea id="cmContent" placeholder="댓글 달기.."></textarea>
						<i class="fa-regular fa-message" onclick="datgle()"></i>
					</div>
				</div>
			</div>
		</form>
	</div>
	
	<script>

		johayo = function() {
			
			var ajaxUrl = "";
			var status = $("#luv").css('color');
			
			if(status == "rgb(255, 0, 0)") { //삭제
				ajaxUrl ="/deleteLuv";
			}
			else{  //추가
				ajaxUrl ="/insertLuv";
			}
			
			$.ajax({
				
				url : ajaxUrl,
				type : "POST",
				data : {
					luvWriter : ${sessSeq},
					luvPostId : $("#cmPostId").val()
				},
				datatype : "json",
				success:function(result){
					if(result.list != null){
						$("#post_likeCount").html(result.list.length);	
						
						if(status == "rgb(255, 0, 0)"){
							$("#luv").removeClass("fa-solid fa-heart");
							$("#luv").addClass("fa-regular fa-heart");
							$("#luv").css('color','black');							
						}else {
							$("#luv").removeClass("fa-regular fa-heart");
							$("#luv").addClass("fa-solid fa-heart");
							$("#luv").css('color','red');
						}
					}
				},
				error:function(){
					alert("error...");
				}
			});
			
		};
	
	</script>
	
	<script >
	
		datgle = function() {
			
			var content = $("#cmContent").val();
			
			if(content == null || content.length < 1)
				return false;
			
			$.ajax({
				url : "/insertComment",
				type: "POST",
				data: {
					cmWriter : ${sessSeq},
					cmPostId : $("#cmPostId").val(),
					cmContent : content
				},
				dataType : "json",
				success:function(result){
					if(result.rt = "success"){
						
						var comment = "";
						for (var i = 0; i < result.list.length; i++) {
							
							comment += '<ul><li><div class="row commentBlock"><div class="col-3 comment_header"><img src=';
							comment += '"/resources/images/profile/empty.png">';
							comment += '</div><div class="col comment_body"><div class="comment_content"><span><span class="comment_userName">';
							comment += result.list[i].mmNickname+ '   </span>';
							comment += result.list[i].cmContent + '</span></div><div class="comment_info"><span>';
							comment += result.list[i].cmCreateDate + '</span><button type="button">';
							comment += '좋아요 5개</button><button type="button">';
							comment += '답글 달기</button></div></div><div class="col-1 comment_like"><i class="fa-regular fa-heart"></i></div></div></li></ul>';	
						}
						
						$("#comment_List").html(comment);
						$("#cmContent").val('');
						
						
					}else{
						alert("실패");	
					}
					
				},
				error:function(){
					alert("error...");
				}
				
			});
		};
	
	</script>
	<%-- 
	<%@include file="../common/user/footer.jsp" %>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	<script>

	</script>	
</body>
</html>
 --%>