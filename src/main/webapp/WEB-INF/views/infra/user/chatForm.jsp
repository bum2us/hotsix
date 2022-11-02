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
        
    <input type="hidden" id="seq" name="seq" value="${sessSeq}">
    <input type="hidden" id="roomNo"> 
    <div class="container chatContainer">
        <div class="leftSide">
            <div class="userHeader">
                <div class="userimg">
                    <img class="cover" src="
                    <c:if test="${sessImg ne null}">${sessImg}</c:if>
                    <c:if test="${sessImg eq null}">/resources/images/profile/empty.png</c:if>
                    ">
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
				<c:forEach items="${list }" var="list" varStatus="status"> 
					<div class="block unread room" id="${list.chatSeq}">
						<div class="imgbx" id="${list.chatSeq}">
							<img class="cover" src="
							<c:if test="${list.upPath ne null}">${list.upPath}${list.upUuidName}</c:if>
							<c:if test="${list.upPath eq null}">/resources/images/profile/empty.png</c:if>
							" id="${list.chatSeq}">
						</div>
						<div class="details" id="${list.chatSeq}">
							<div class="listhead" id="${list.chatSeq}">
								<h4 id="${list.chatSeq}"><c:out value="${list.mmNickname }"/></h4>
								<p class="time" id="${list.chatSeq}">14:23</p>
							</div>
							<div class="message_p" id="${list.chatSeq}">
								<p id="${list.chatSeq}">안녕하세요 인상이 참 좋아보이셔서 dm 남겨요</p>
								<b>1</b>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- 채팅 -->
				<!-- 
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
				 -->
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
			<div class="chatBox" id="chatBox">
				<div class="message myMessage">
					<p>안녕<br><span>10:48</span></p>
				</div>
				<div class="message frMessage">
					<p>오랜만<br><span>10:48</span></p>
				</div>
			</div>
			<!-- 채팅 입력 -->
			<div class="chatBox_input">
				<i class="fa-regular fa-face-smile" id="selectBtn"></i>
				<i class="fa-solid fa-paperclip"></i>
				<input id="chatMessage" type="text" placeholder="메세지를 입력하세요">
				<i class="fa-regular fa-paper-plane" id="insertBtn"></i>
			</div>
        </div>
    </div>
    <%@include file="../common/user/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
<script src="https://unpkg.com/react@17.0.2/umd/react.development.js"></script>
<script src="https://unpkg.com/react-dom@17.0.2/umd/react-dom.production.min.js"></script>
<script src="https://unpkg.com/prop-types@15.7.2/prop-types.js"></script>
<script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
<script type="text/babel">
	const [content, setContent] = React.useState(1);
	const [time, setTime] = React.useState(2);
	const [isWriter, setIsWriter] = React.useState(3);	

	function Message(){
		return(
			<div class="message {isWriter}">
				<p>{content}<span>{time}</span></p>
			</div>
		);
	}
	const root = document.getElementById("chatBox");
	ReactDOM.render(<Message />, root);
	
</script>
 
<script type="text/javascript">

	getnow = function() {
		
		var timestamp = new Date().getTime();
		
		var date = new Date(timestamp); //타임스탬프를 인자로 받아 Date 객체 생성
		
		var year = date.getFullYear().toString().slice(-2); //년도 뒤에 두자리
		var month = ("0" + (date.getMonth() + 1)).slice(-2); //월 2자리 (01, 02 ... 12)
		var day = ("0" + date.getDate()).slice(-2); //일 2자리 (01, 02 ... 31)
		var hour = ("0" + date.getHours()).slice(-2); //시 2자리 (00, 01 ... 23)
		var minute = ("0" + date.getMinutes()).slice(-2); //분 2자리 (00, 01 ... 59)
		var second = ("0" + date.getSeconds()).slice(-2); //초 2자리 (00, 01 ... 59)
		
		return year+month+day+hour+minute+second;
	};
	

</script>

<script type="module">
	// Import the functions you need from the SDKs you need
	import { initializeApp } from "https://www.gstatic.com/firebasejs/9.12.1/firebase-app.js";
	// TODO: Add SDKs for Firebase products that you want to use
	// https://firebase.google.com/docs/web/setup#available-libraries
	
	// Your web app's Firebase configuration
	const firebaseConfig = {
		apiKey: "AIzaSyAh4ZqSz-4YnlpJBgeQ6pR8kOQrAUNBVo8",
		authDomain: "seoul-75699.firebaseapp.com",
		databaseURL: "https://seoul-75699-default-rtdb.asia-southeast1.firebasedatabase.app",
		projectId: "seoul-75699",
		storageBucket: "seoul-75699.appspot.com",
		messagingSenderId: "384240893529",
		appId: "1:384240893529:web:5c9c1112e99d717ded7b48"
	};
	
	// Initialize Firebase
	const app = initializeApp(firebaseConfig);

	import { getDatabase, ref, get, set, child, query, update, remove, onValue, limitToLast }
	from "https://www.gstatic.com/firebasejs/9.12.1/firebase-database.js";
	
	const db = getDatabase();

	var seq = $("#seq").val();

	function InsertData(){

	var message = $("#chatMessage").val();

		var room = $("#roomNo").val();		

		set(ref(db,'chat/'+room+'/'+getnow()+'/'+seq ),{
			Masseage: message
		})

		.then(()=> {
			//alert("data stored success..!");
			
		})
		.catch((error)=> {
			alert("unsuccess..! " + error); 
		})
	}

	$(".room").click(function(){
		//event.target.id
		SelectData(event.target.id);
	}); 

	function SelectData(room){ 
		const dbRef = ref(db, 'chat/'+room);
		const txt = "";
		//https://firebase.google.com/docs/database/web/lists-of-data?hl=ko&authuser=0
		onValue(dbRef,(snapshot) => {
 			snapshot.forEach((childSnapshot) => {
   			const timetable = childSnapshot.key;
			console.log(timetable);

				onValue(ref(db,'chat/'+room+'/'+timetable),(snapshot2) => {
					snapshot2.forEach((childSnapshot2) => {
						const writer = childSnapshot2.key
						console.log(writer);
						
						onValue(ref(db,'chat/'+room+'/'+timetable+'/'+writer),(snapshot3) => {
							snapshot3.forEach((childSnapshot3) => {
							const message = childSnapshot3.val()
							console.log(message);
								
							});
						}, { 
 							onlyOnce: true
						});
							
					});
				});
 			});
		});
				
		
		$("#chatBox").html(txt);
		$("#roomNo").val(room);
	}

	var insBtn = document.getElementById("insertBtn");

	insBtn.addEventListener('click',InsertData);

</script>

<script type="text/javascript">
 	
	
</script>

		
</body>
</html>
