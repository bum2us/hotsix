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
	<div class="post_content">
		<br><br>
		<div class="row post_frame">
			<div class="post_leftSide">
				<img src="/resources/images/image_01.jpg" alt="">
			</div>
			<div class="post_rightSide">
				<div class="header">
					<div class="userImg">
						<img src="/resources/images/temp02.jpg" class="post_cover" alt="">
					</div>
					<div>
						youja_o
					</div>
				</div>
				<div class="comment_List">
					<ul>
						<li>
							<div class="row commentBlock">
								<div class="col-3 comment_header">
									<img src="/resources/images/temp02.jpg" alt="">
								</div>
								<div class="col comment_body">
									<div class="comment_content">
										<span>
											<span class="comment_userName">youja_o</span>
											바람이 불어온다~
											<br>다들 좋은 사람들과 좋은 시간 보내시기 바랍니다.
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
					<ul>
						<li>
							<div class="row commentBlock">
								<div class="col-3 comment_header">
									<img src="/resources/images/profile/profile_05.png" alt="">
								</div>
								<div class="col comment_body">
									<div class="comment_content">
										<span>
											<span class="comment_userName">min5oo</span>
											한폭의 그림과 같은 사진 마음이 뻥 뚫리는 기분입니다람쥐
										</span>
									</div>
									<div class="comment_info">
										<span>1일전</span>
										<button type="button">좋아요 1개</button>
										<button type="button">답글 달기</button>
									</div>
								</div>
								<div class="col-1 comment_like">
									<i class="fa-regular fa-heart"></i>
								</div>
							</div>
						</li>
					</ul>
					<ul>
						<li>
							<div class="row commentBlock">
								<div class="col-3 comment_header">
									<img src="/resources/images/profile/profile_06.png" alt="">
								</div>
								<div class="col comment_body">
									<div class="comment_content">
										<span>
											<span class="comment_userName">poo_eel</span>
											진짜 풍경 대박!!
											<br>어디에요??
										</span>
									</div>
									<div class="comment_info">
										<span>1일전</span>
										<button type="button">좋아요 3개</button>
										<button type="button">답글 달기</button>
									</div>
								</div>
								<div class="col-1 comment_like">
									<i class="fa-regular fa-heart"></i>
								</div>
							</div>
						</li>
					</ul>
					<ul>
						<li>
							<div class="row commentBlock">
								<div class="col-3 comment_header">
									<img src="/resources/images/profile/profile_07.png" alt="">
								</div>
								<div class="col comment_body">
									<div class="comment_content">
										<span>
											<span class="comment_userName">shine_msk</span>
											구름이 모락모락 너무 좋은 사진이네요 ^^
										</span>
									</div>
									<div class="comment_info">
										<span>2일전</span>
										<button type="button">좋아요 54개</button>
										<button type="button">답글 달기</button>
									</div>
								</div>
								<div class="col-1 comment_like">
									<i class="fa-regular fa-heart"></i>
								</div>
							</div>
						</li>
					</ul>
					<ul>
						<li>
							<div class="row commentBlock">
								<div class="col-3 comment_header">
									<img src="/resources/images/profile/profile_08.png" alt="">
								</div>
								<div class="col comment_body">
									<div class="comment_content">
										<span>
											<span class="comment_userName">.jh.luv</span>
											이거 뭔데 어디서 찍은건데????
										</span>
									</div>
									<div class="comment_info">
										<span>3일전</span>
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
							<span class="post_like"><span class="post_likeCount">45명</span>이 좋아합니다.</span>
						</div>
						<div class="row post_time">
							<span>9월 10일</span>							
						</div>
					</div>
					<div class="col-4 post_function">
						<i class="fa-regular fa-heart"></i>
						<i class="fa-regular fa-comment-dots"></i>
						<i class="fa-regular fa-paper-plane"></i>
					</div>
				</div>
				<div class="comment_input">
					<form action="">
						<i class="fa-regular fa-face-smile"></i>
						<textarea name="" placeholder="댓글 달기.."></textarea>
						<i class="fa-regular fa-message"></i>
					</form>
				</div>
			</div>
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
