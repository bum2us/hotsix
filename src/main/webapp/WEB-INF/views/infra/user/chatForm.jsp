<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>신규가입</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/css/style.css">
    <style>
        div {
            /* border: 1px solid orange; */
        }
    </style>
</head>
<body class="chatbody">
    <%@include file="../common/user/header.jsp" %>
        
    <div class="container chatContainer">
        <div class="leftSide">
            <div class="userHeader">
                <div class="userimg">
                    <img class="cover" src="/resources/images/profile/profile_01.png">
                </div>
                <ul class="nav_icons">
                    <li><i class="fa-solid fa-comment-medical"></i></li>
                </ul>
            </div>
            <div class="chatSearch">
				<div>
					<input type="text" placeholder="채팅 검색">
					<i class="fa-solid fa-magnifying-glass"></i>
				</div>
            </div>
			<!-- 채팅 리스트 -->
			<div class="chatlist">
				<!-- 채팅 -->
				<div class="block active">
					<div class="imgbx">
						<img class="cover" src="/resources/images/profile/profile_02.png">
					</div>
					<div class="details">
						<div class="listhead">
							<h4>mins0052</h4>
							<p class="time">10:50</p>
						</div>
						<div class="message_p">
							<p>이건나의 track my swag 노린 rap attack</p>
						</div>
					</div>
				</div>
				<div class="block unread">
					<div class="imgbx">
						<img class="cover" src="/resources/images/profile/profile_03.png">
					</div>
					<div class="details">
						<div class="listhead">
							<h4>nameless</h4>
							<p class="time">14:23</p>
						</div>
						<div class="message_p">
							<p>안녕하세요 인상이 참 좋아보이셔서 dm 남겨요</p>
							<b>1</b>
						</div>
					</div>
				</div>
				<div class="block unread">
					<div class="imgbx">
						<img class="cover" src="/resources/images/profile/profile_04.png">
					</div>
					<div class="details">
						<div class="listhead">
							<h4>kong_mom2</h4>
							<p class="time">07:15</p>
						</div>
						<div class="message_p">
							<p>판매하신 제품 문제가 있어서 dm 남겨요</p>
							<b>3</b>
						</div>
					</div>
				</div>
				<div class="block">
					<div class="imgbx">
						<img class="cover" src="/resources/images/profile/profile_05.png">
					</div>
					<div class="details">
						<div class="listhead">
							<h4>strongE_t</h4>
							<p class="time">07:14</p>
						</div>
						<div class="message_p">
							<p>ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</p>
						</div>
					</div>
				</div>
				<div class="block">
					<div class="imgbx">
						<img class="cover" src="/resources/images/profile/profile_06.png">
					</div>
					<div class="details">
						<div class="listhead">
							<h4>haha-_-3</h4>
							<p class="time">06:32</p>
						</div>
						<div class="message_p">
							<p>아니거든 ㅋㅋ</p>
						</div>
					</div>
				</div>
				<div class="block">
					<div class="imgbx">
						<img class="cover" src="/resources/images/profile/profile_07.png">
					</div>
					<div class="details">
						<div class="listhead">
							<h4>f1owerM1n</h4>
							<p class="time">12:41</p>
						</div>
						<div class="message_p">
							<p>그럼 일단 일정 확인 하고 알려줄게</p>
						</div>
					</div>
				</div>
				<div class="block">
					<div class="imgbx">
						<img class="cover" src="/resources/images/profile/profile_08.png">
					</div>
					<div class="details">
						<div class="listhead">
							<h4>luv_jhee</h4>
							<p class="time">01:51</p>
						</div>
						<div class="message_p">
							<p>...아닌데요..</p>
						</div>
					</div>
				</div>
				<div class="block">
					<div class="imgbx">
						<img class="cover" src="/resources/images/profile/profile_09.png">
					</div>
					<div class="details">
						<div class="listhead">
							<h4>olivia4902</h4>
							<p class="time">14:23</p>
						</div>
						<div class="message_p">
							<p>hello world 오류났어요 ㅠㅠ</p>
						</div>
					</div>
				</div>
				<div class="block">
					<div class="imgbx">
						<img class="cover" src="/resources/images/profile/profile_10.png">
					</div>
					<div class="details">
						<div class="listhead">
							<h4>mongH3_3</h4>
							<p class="time">16:23</p>
						</div>
						<div class="message_p">
							<p>응 절대 안된다</p>
						</div>
					</div>
				</div>
			</div>
        </div>
		<!-- 채팅창 -->
        <div class="rightSide">
			<!-- 현재 대화중인 유저 -->
			<div class="userHeader">
				<div class="imgText">
					<div class="userimg">
						<img class="cover" src="/resources/images/profile/profile_02.png">
					</div>
					<h4>mins0052<br><span>Online</span></h4>
				</div>
				<ul class="nav_icons">
					<li><i class="fa-solid fa-magnifying-glass"></i></li>
				</ul>
			</div>
			<!-- 메세지 -->
			<div class="chatBox">
				<div class="message myMessage">
					<p>안녕<br><span>10:48</span></p>
				</div>
				<div class="message frMessage">
					<p>오랜만<br><span>10:48</span></p>
				</div>
				<div class="message frMessage">
					<p>랩 배틀 한판 ??<br><span>10:48</span></p>
				</div>
				<div class="message myMessage">
					<p>바라던 바다 덤벼라<br><span>10:49</span></p>
				</div>
				<div class="message frMessage">
					<p>나는 정상수 백발백중하는 명사수 부산진구 유명가수<br><span>10:50</span></p>
				</div>
				<div class="message frMessage">
					<p>일취월장 하며 성장 중!<br><span>10:50</span></p>
				</div>
				<div class="message frMessage">
					<p>내가 대표해 이 거리를 누구도 막지못해 내 지껄임을<br><span>10:50</span></p>
				</div>
				<div class="message frMessage">
					<p>사양할게 너의 벌스 피쳐링은<br><span>10:51</span></p>
				</div>
				<div class="message frMessage">
					<p>이건나의 track my swag 노린 rap attack<br><span>10:51</span></p>
				</div>
			</div>
			<!-- 채팅 입력 -->
			<div class="chatBox_input">
				<i class="fa-regular fa-face-smile"></i>
				<i class="fa-solid fa-paperclip"></i>
				<input type="text" placeholder="메세지를 입력하세요">
				<i class="fa-regular fa-paper-plane" onclick="push()"></i>
			</div>
        </div>
    </div>
    <%@include file="../common/user/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
<script type="module" src="/resources/firebase/index.js"></script>     
<script type="text/javascript">
 
	push = function() {
		
		writeUserData('bum2us','신범수','bumtv@naver.com','image.png');
	};
	
</script>

		
</body>
</html>
