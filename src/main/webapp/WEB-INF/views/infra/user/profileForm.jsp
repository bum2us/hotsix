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
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
    <style>
        div	{
            /* border: solid 1px orange; */
        }
        
    </style>
</head>
<body>
	<%@include file="../common/user/header.jsp" %>
	
   	<form method="POST" id="mainForm">
	<%@include file="./postForm.jsp" %>
	    <div class="container" style="min-height: 700px;"> 
	    	<input type="hidden" id="chatUser" name="cuMemberSeq" value="">
    		<input type="hidden" id="shOption" name="shOption" value="
    		<c:if test="${item.mmSeq eq null}">${sessSeq}</c:if>
    		<c:if test="${item.mmSeq ne null}">${item.mmSeq}</c:if>
    		"/>
	        <div class="row my-5" style="justify-content: center;">
	            <div class="col-4 offset-2 porfileImgbox">
	                <img class="profileImg" src="
	                <c:choose>
	                	<c:when test ="${item.upSeq ne null}">${item.upPath}${item.upUuidName}</c:when>
	                	<c:otherwise>/resources/images/profile/empty.png</c:otherwise>
	               	</c:choose>
	                " alt="">
	            </div>
	            <div class="col-6 offset-1 pt-4">  
	                <div class="row my-3"> 
	                    <div class="col" style="display: flex; align-items: center;">
	                        <span class="profileUserName"><c:out value="${ item.mmNickname }"/></span>
	                        <c:choose>
	                        	<c:when test="${item.mmSeq eq sessSeq}"> 
	                        		<button type="button" class="basebutton" style="font-weight:700;" onclick="runForm(0)">프로필 편집</button>	     
	                        		<button type="button" class="basebutton" style="font-weight:700;" onclick="showPasswordForm()">비밀번호 변경</button>                    	
	                        	</c:when>
	                        	<c:otherwise>
	                        		<c:choose>	                        		
			                        	<c:when test="${IsFollow ne null }"> 
			  								<button type="button" class="basebutton" style="font-weight:700;" onclick="follow(this)">팔로우 취소</button>                      	
			                        	</c:when>
			                        	<c:otherwise>
			                        		<button type="button" class="basebutton" style="font-weight:700;" onclick="follow(this)">팔로우</button>	                        	
			                        	</c:otherwise>
	                        		</c:choose> 
		                        	<button type="button" class="basebutton" style="font-weight:700;" onclick="dm(${item.mmSeq})">메시지 보내기</button> 
	                        	</c:otherwise>
	                        </c:choose>
	                    </div> 
	                </div>
	                <div class="row mb-2">
	                    <p class="profileUserInfo">게시물<span class="profileInfoDetail"><c:out value="${fn:length(list) }"/></span></p>
	                    <p class="profileUserInfo" onclick="showFollower()">팔로워<span class="profileInfoDetail" id="countFollower" ><c:out value="${follower}"/></span></p>
	                    <p class="profileUserInfo" onclick="showFollow()">팔로우<span class="profileInfoDetail" id="countFollow" ><c:out value="${following }"/></span></p>
	                </div>
	                <div class="row mt-5">
	                    <p class="profileUserComment"><c:out value="${ item.mmComment }" escapeXml="false"/></p>
	                </div>
	            </div>
	        </div>
	        <hr>
	        <div class="grid-wrapper">
	        	<c:forEach items="${list}" var="list" varStatus="status">
		            <div>
		                <a href="javascript:openPost(${list.postSeq })"><img src="${list.upPath}${list.upUuidName}" alt=""></a>
		            </div>        		
	        	</c:forEach>
	        </div>
 
			<!-- 팔로우 모달 창 -->
			<div class="modal"  id="modal-notice">
				<div class="modal-content">
					<a href="javascript:closeModal('modal-notice')" class="modal-close">x</a>
					<span id="followTitle" style="font-weight:bold; font-size: 13pt; margin-bottom:5px;">팔로워</span>
					<div id="modaldata" class="modal-body">
					
					<!-- 팔로워 팔로우 정보 들어가는 곳  -->
					            
					</div>
				</div>	
			</div>
			
			<!-- 팔로우 모달 창 -->
			<div class="modal"  id="modal-password">
				<div class="modal-content" style="width: 500px; height: 350px; padding: 15px;">  
					<a href="javascript:closeModal('modal-password')" class="modal-close">x</a>
					<span id="followTitle" style="font-weight:bold; font-size: 13pt; margin-bottom:5px;">비밀번호 변경</span>
					<div class="row justify-content-center my-4 px-4">   
						<div class="col-4">
							<span style=" font-size: 10pt;">현재 비밀번호</span>	
						</div>
						<div class="col">
							<input type="password" id="oldpassword" />
						</div>
						<div class="col-3 g-0"> 
							<button type="button" class="basebutton" onclick="checkPassword()">비밀번호 확인</button>
						</div>
					</div>
					<span style="margin-top:1px" class="chk_sucess" id="pw_check_sucess">비밀번호가 일치합니다.</span>
							<span style="margin-top:1px" class="chk_fail" id="id_check_fail">일치하지 않는 비밀번호입니다.</span>						
					<div class="row justify-content-center mt-4 px-4">   
						<div class="col-4">
							<span style=" font-size: 10pt;">새 비밀번호</span>							
						</div>
						<div class="col">
							<input type="password" name="mmPassword" id="password" />
						</div>
					</div>
					<div class="row justify-content-center my-4 px-4">   
						<div class="col-4">
							<span style=" font-size: 10pt;">새 비밀번호 확인</span>							
						</div> 
						<div class="col">
							<input type="password" id="repassword" />
						</div>
					</div>
					<div class="row justify-content-center my-4 px-4">   
						<div class="col text-center">
							<button type="button" class="basebutton" onclick="changePassword()">변경하기</button>							
						</div>
					</div>
				</div>
			</div>
						        

    	</div>
    </form> 
    <%@include file="../common/user/footer.jsp" %>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>	
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>		
<script>

	changePassword = function(){

		if($("#pw_check_sucess").css("display")=="none"){
			swal("ALBUM'S", "현재 비밀번호를 확인하세요.", "error");
			return;
		}
		if( $("#password").val().length < 1){
			swal("ALBUM'S","새로운 비밀번호를 입력하세요.","error");
			return;
		}
		
		if($("#password").val() != $("#repassword").val()){
			swal("ALBUM'S","새로 입력한 비밀번호가 일치하지 않습니다.","error");
			return;
		}
		
		swal("ALBUM'S","비밀번호가 변경되어 로그아웃 됩니다. 다시 로그인 해주세요.","success").then((value) => {
			$("#mainForm").attr("action","/member/changePassword").submit();		  
		});
		
				
	};
	
	checkPassword = function(){
		
		
		$.ajax({
			url:'/member/chkPw'
			,type:'POST'
			,datatype:'json'
			,data: {
				shPassword: $("#oldpassword").val()
			},
			success:function(result){
				if(result.rt == "success"){
					$("#pw_check_sucess").show();
					$("#id_check_fail").hide();
				}else{
					$("#id_check_fail").show();
					$("#pw_check_sucess").hide();
				}
			},
			error:function(){
				
			}
		});
	};

	showPasswordForm = function(){
		
		$("#oldpassword").val("");
		$("#password").val("");
		$("#repassword").val("");
		
		$("#modal-password").addClass('active'); 
	};

	dm = function(seq){
		
		$("#chatUser").val(seq);
		form.attr("action","/chat").submit();
		
	};
	
	var form = $("#mainForm");

	runForm = function(key) {
		
		switch(key){
		
			case 0:
				{
					form.attr("action","/member/memberForm").submit();
					break;
				}
		
			default:
				{
					$("#shOption").val(key);
					form.attr("action","/profile").submit();
					break;
				}
		
		}
		
		
	};
	
	follow = function(my){
		
		switch(my.textContent){
			
			case '팔로우':
				{
					
					$.ajax({
						
						url: '/activeFollow'
						,type: 'POST'
						,datatype: 'json'
						,data: {
							fwFollow : $('#shOption').val()
							,fwFollower : ${sessSeq}
						},
						success:function(result){ 
							$("#countFollower").html(result.followCount); 
						},
						error:function(){
							alert("ajax error...!");
						}
						
					});
				
					my.textContent = '팔로우 취소';
					break;
				}
			case '팔로우 취소':
				{
					
					$.ajax({
						
						url: '/deleteFollow'
						,type: 'POST'
						,datatype: 'json'
						,data: {
							fwFollow : $('#shOption').val()
							,fwFollower : ${sessSeq}
						},
						success:function(result){ 
							$("#countFollower").html(result.followCount); 
						},
						error:function(){
							alert("ajax error...!");
						}
						
					});
				
					my.textContent = '팔로우';
					break;
				}
		
		}
		
	};
	
	//나를 팔로우 한사람
	showFollower = function() {
		
		$('#modaldata').html('');
		
		$.ajax({
			url: '/selectFollower',
			type: 'POST',
			data: {
				fwFollow : $("#shOption").val()
			},
			dataType: 'json',
			success:function(result){
				if(result.rt =="success"){
					
					var txt = "";
					
					for(var i = 0; i<result.list.length; i++){
						
						var imgSrc = "/resources/images/profile/empty.png";
						if(result.list[i].upPath != null)
							imgSrc = result.list[i].upPath + result.list[i].upUuidName;
						
						txt += '<div class="row modal-block">'
						txt += '<div class="col-2">'
						txt += '<img src="'+imgSrc+'" alt="" width="100%" height="100%" style="border-radius:50%;">'
						txt += '</div>'
						txt += '<div class="col-6 text-start" style="cursor:pointer; font-size:10pt;" onclick="runForm(' + result.list[i].mmSeq +')">'+result.list[i].mmNickname+'</div>'
						txt += '<div class="col-3 text-end"></div>'
						txt += '</div>'
						
					}
					
					$('#modaldata').html(txt); 
				}
			},
			error:function(){
				alert('ajax error...!');
			}
		});
		
		
		$("#followTitle").html('팔로워');
		$("#modal-notice").addClass('active');
		
	};
	
	//내가 팔로우 한사람
	showFollow = function() {
		
		$('#modaldata').html('');
		
		$.ajax({
			url: '/selectFollow',
			type: 'POST',
			data: {
				fwFollower : $("#shOption").val()
			},
			dataType: 'json',
			success:function(result){
				if(result.rt =="success"){
					
					var txt = "";
					
					for(var i = 0; i<result.list.length; i++){
						
						var imgSrc = "/resources/images/profile/empty.png";
						if(result.list[i].upPath != null)
							imgSrc = result.list[i].upPath + result.list[i].upUuidName;
						
						txt += '<div class="row modal-block">'
						txt += '<div class="col-2">'
						txt += '<img src="'+imgSrc+'" alt=""  style="border-radius:50%;">'
						txt += '</div>'
						txt += '<div class="col-6 text-start" style="cursor:pointer; font-size:10pt;" onclick="runForm(' + result.list[i].mmSeq +')">'+result.list[i].mmNickname+'</div>'
						txt += '<div class="col-3 text-end" style="cursor:pointer;"></div>'
						txt += '</div>'
					} 
					
					$('#modaldata').html(txt);
					
				}
			},
			error:function(){
				alert('ajax error...!');
			}
		});
		
		
		$("#followTitle").html('팔로우');
		$("#modal-notice").addClass('active');
		
	};
	
	//모달 닫기
	closeModal = function(modal) {
		$("#"+modal).removeClass('active');
	};
	
</script>
</body>
</html>
