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
	<header>
		<div class="logo">
			<img src="/resources/images/mark_white.png" class="logoImage" alt="">
			<span class="logoName">AL<span class="logoName2">BUM</span>'S</span>
		</div>
		<form class="d-flex nav_src">
			<input class="form-control" type="search" placeholder="검색">
			<button class="btn" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
		</form>
		<nav>
			<ul class="nav_links">
				<li><a href="/main"><i class="fa-solid fa-house"></i></a></li>
				<li><a href="/chat"><i class="fa-solid fa-message"></i></a></li>
				<li><a href="/upload"><i class="fa-solid fa-square-plus"></i></a></li>
				<li><a href="/bookmark"><i class="fa-solid fa-heart"></i></a></li>
				<li><a href="/profile"><i class="fa-solid fa-user"></i></a></li>
				<li><a href="/login"><i class="fa-solid fa-right-from-bracket"></i></a></li>
			</ul>
		</nav>
	</header>
	<div class="container" style="height: 1300px;">
		<br><br>
		<br><br>		
		<div class="row favoraite_card_row">
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
			<div class="col-3">
				<div class="favoraite_card">
					<div class="imgBx">
						<img src="/resources/images/image_02.jpg" alt="">
					</div>
					<div class="content">
						<div class="detail">
							<h2>마운테인<br><span>산은 산이요</span></h2>
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
			<div class="col-3">
				<div class="favoraite_card">
					<div class="imgBx">
						<img src="/resources/images/image_03.jpg" alt="">
					</div>
					<div class="content">
						<div class="detail">
							<h2>통통배<br><span>우린 거북선 다른배들 통통</span></h2>
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
			<div class="col-3">
				<div class="favoraite_card">
					<div class="imgBx">
						<img src="/resources/images/image_04.jpg" alt="">
					</div>
					<div class="content">
						<div class="detail">
							<h2>거제도<br><span>비슷한 지형이 있지</span></h2>
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
		</div>
		<div class="row favoraite_card_row">
			<div class="col-3">
				<div class="favoraite_card">
					<div class="imgBx">
						<img src="/resources/images/image_05.jpg" alt="">
					</div>
					<div class="content">
						<div class="detail">
							<h2>플라월<br><span>흰 꽃이 꼭 팝콘 같다</span></h2>
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
			<div class="col-3">
				<div class="favoraite_card">
					<div class="imgBx">
						<img src="/resources/images/image_06.jpg" alt="">
					</div>
					<div class="content">
						<div class="detail">
							<h2>불가사리 닮은 꽃<br><span>안녕하세요 뚱이에요</span></h2>
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
			<div class="col-3">
				<div class="favoraite_card">
					<div class="imgBx">
						<img src="/resources/images/image_07.jpg" alt="">
					</div>
					<div class="content">
						<div class="detail">
							<h2>창공의 지배자 매<br><span>제가 날리던 드론을 저 조류가</span></h2>
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
			<div class="col-3">
				<div class="favoraite_card">
					<div class="imgBx">
						<img src="/resources/images/image_08.jpg" alt="">
					</div>
					<div class="content">
						<div class="detail">
							<h2>산 정상의 풍경<br><span>디스 이즈 마운테인</span></h2>
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
		</div>
		<div class="row favoraite_card_row">
			<div class="col-3">
				<div class="favoraite_card">
					<div class="imgBx">
						<img src="/resources/images/image_09.jpg" alt="">
					</div>
					<div class="content">
						<div class="detail">
							<h2>강남의 풍경<br><span>강남 맞나요?</span></h2>
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
			<div class="col-3">
				<div class="favoraite_card">
					<div class="imgBx">
						<img src="/resources/images/image_10.jpg" alt="">
					</div>
					<div class="content">
						<div class="detail">
							<h2>버스정류장<br><span>40분째 버스가 오질 않는다</span></h2>
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
			<div class="col-3">
				<div class="favoraite_card">
					<div class="imgBx">
						<img src="/resources/images/image_11.jpg" alt="">
					</div>
					<div class="content">
						<div class="detail">
							<h2>해변의 나뭇가지<br><span>가지가지한다</span></h2>
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
			<div class="col-3">
				<div class="favoraite_card">
					<div class="imgBx">
						<img src="/resources/images/image_12.jpg" alt="">
					</div>
					<div class="content">
						<div class="detail">
							<h2>물의 도시<br><span>waterrrrrrrrrrrrrrrrrrr</span></h2>
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
		</div>
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
	<script>
		
	</script>	
</body>
</html>
