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
    		<input type="hidden" id="shOption" name="shOption" value="
    		<c:if test="${item.mmSeq eq null}">${sessSeq}</c:if>
    		<c:if test="${item.mmSeq ne null}">${item.shOption}</c:if>
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
	                        	<c:when test="${item.upSeq eq sessSeq}">
	                        		<button type="button" class="basebutton" style="font-weight:700;" onclick="runForm()">프로필 편집</button>	                        	
	                        	</c:when>
	                        	<c:otherwise>
	                        		<button type="button" class="basebutton" style="font-weight:700;" onclick="">팔로우</button>	                        	
	                        	</c:otherwise>
	                        </c:choose>
	                    </div> 
	                </div>
	                <div class="row mb-2">
	                    <p class="profileUserInfo">게시물<span class="profileInfoDetail"><c:out value="${fn:length(list) }"/></span></p>
	                    <p class="profileUserInfo" onclick="showFollower()">팔로워<span class="profileInfoDetail"><c:out value="${follower}"/></span></p>
	                    <p class="profileUserInfo" onclick="showFollow()">팔로우<span class="profileInfoDetail"><c:out value="${following }"/></span></p>
	                </div>
	                <div class="row mt-5">
	                    <p class="profileUserComment"><c:out value="${ item.mmComment }" escapeXml="false"/></p>
	                </div>
	            </div>
	        </div>
	        <hr>
	        <div class="profile-grid-wrapper">
	        	<c:forEach items="${list}" var="list" varStatus="status">
		            <div>
		                <a href=""><img src="${list.upPath}${list.upUuidName}" alt=""></a>
		            </div>        		
	        	</c:forEach>
	        </div>

		<!--  모달 창 -->
		  <div class="modal"  id="modal-notice">
		        <div class="modal-content">
		            <a href="javascript:closeModal()" class="modal-close">x</a>
		            <span id="followTitle" style="font-weight:bold; font-size: 13pt; margin-bottom:5px;">팔로워</span>
		            <div id="modaldata" class="modal-body">
		            
		                <!-- 팔로워 팔로우 정보 들어가는 곳  -->
		                
		            </div>
		        </div>
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
						txt += '<div class="col-6 text-start">'+result.list[i].mmNickname+'</div>'
						txt += '<div class="col-3 text-end">팔로우</div>'
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
						txt += '<div class="col-6 text-start" style="cursor:pointer;">'+result.list[i].mmNickname+'</div>'
						txt += '<div class="col-3 text-end" style="cursor:pointer;">팔로우</div>'
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
	closeModal = function() {
		$("#modal-notice").removeClass('active');
	};
	
	//모달 열기
	
</script>
</body>
</html>
