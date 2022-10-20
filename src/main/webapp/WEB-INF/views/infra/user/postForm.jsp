
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- <form id="postForm" method="POST"> -->
	<div class="modal_overlay" onclick="javascript:closePost()" style="display:none;">
	<br><br>
		<input id="cmPostId" name="cmPostId" type="hidden">
		<input id="fwFollow" name="fwFollow" type="hidden">
		<div class="row post_frame" onclick="event.stopPropagation()">
			<div class="post_leftSide">
				<img id="postImg" src="" alt="">
				<!-- <video id="postImg" src="" autoplay="autoplay" muted="muted" loop="loop" width="100%"></video> -->
			</div>
			<div class="post_rightSide"> 
				<div class="header">
					<div class="userImg">
						<img id="postWriterImg" src="/resources/images/profile/empty.png" class="post_cover" alt="">
					</div>
					<div class="postWriter" id="postWriter">
						
					</div>
					<div class="follower" id="followerBtn" style="cursor:pointer;" onclick="following()"> 
						팔로우
					</div>
				</div>
				<div class="comment_List baseComment" id="contentArea"></div>
				
				<div class="comment_List" id="comment_List">
				
					<!-- <ul>
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
					</ul> -->
					
				</div>
				<div class="post_info">
					<div class="col-8">
						<div class="row">
							<span class="post_like"><span id="post_likeCount" class="post_likeCount">45</span>명이 좋아합니다.</span>
						</div>
						<div class="row post_time">
							<span id="postCreateTime">9월 10일</span>							
						</div>
					</div>
					<div class="col-4 post_function">
						<i id="luv" style="color: black;" class="fa-regular fa-heart" onclick="johayo()"></i>
						<i class="fa-regular fa-comment-dots" onclick="datglefocus()"></i>
						<i class="fa-regular fa-paper-plane"></i>
					</div>
				</div>
				<div class="comment_input">
					<i class="fa-regular fa-face-smile"></i>
					<!-- 
					<div data-emojiarea data-type="image" data-global-picker="false">
					  <i class="emoji emoji-smile emoji-button">&#x1f604;</i>
					  <textarea>&#x1f604;</textarea>
					</div>
					 -->		
					<textarea class="comment_area" id="cmContent" placeholder="댓글 달기.."></textarea>
					<i class="fa-regular fa-message" onclick="datgle()"></i>
				</div>
			</div>
		</div>
	</div>
<!-- </form> -->
<script src="jquery.emojiarea.js"></script>

<script type="text/javascript">
	
	

	goProfile = function(key) { 
		
		$("#shOption").val(key); 
		$("#mainForm").attr("action","/profile").submit();
		
	};
	
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


	following = function(){
		
		$.ajax({
		
			url: '/activeFollow'
			,type: 'POST'
			,data: {
				fwFollow : $("#fwFollow").val()
				,fwFollower : ${sessSeq}
			}
			,dataType: 'json'
			,success:function(){
				$("#followerBtn").css('display','none');
			},
			error:function(){
				alert("follow error...!");
			}
		});
		
		
	};

	datglefocus = function() {
		
		$("#cmContent").focus();
	};
	

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
						
						var imgSrc="/resources/images/profile/empty.png";
						
						if(result.list[i].upmPath != null)
							imgSrc = result.list[i].upmPath + result.list[i].upmUuidName;
						
						comment += '<ul><li><div class="row commentBlock"><div class="col-3 comment_header"><img src=';
						comment += imgSrc+'>';
						comment += '</div><div class="col comment_body"><div class="comment_content"><span><span class="comment_userName" onclick="goProfile('+ result.list[i].cmWriter +')">';
						comment += result.list[i].mmNickname+ '   </span>';
						comment += result.list[i].cmContent + '</span></div><div class="comment_info"><span>';
						comment += result.list[i].cmCreateDate + '</span><button type="button" id="commentLuv'+result.list[i].cmSeq+'">';
						//comment += '좋아요 5개</button><button type="button">';
						//comment += '답글 달기</button></div></div><div class="col-1 comment_like"><i class="fa-regular fa-heart"></i></div></div></li></ul>'; 
						comment += '좋아요 ' +result.list[i].luvCount+'개</button></div></div><div class="col-1 comment_like">';
						comment += '<i id="datgleLuv'+result.list[i].cmSeq+'" onclick="datgleJohayo('+ result.list[i].cmSeq +')"';
						comment += ' class="';
						if(result.list[i].loginUserLuvNy == 1){
							comment += 'fa-solid fa-heart" style="color:red';
						}else{
							comment += 'fa-regular fa-heart" style="color:black';
						}
						comment += '"></i></div></div></li></ul>';
					
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
	
	datgleJohayo = function(key) {
			
		var ajaxUrl = "";
		var status = $("#datgleLuv"+key).css('color');
		
		if(status == "rgb(255, 0, 0)") { //삭제
			ajaxUrl ="/deleteCommentLuv";
		}
		else{  //추가
			ajaxUrl ="/insertCommentLuv";
		}
		
		$.ajax({
			
			url : ajaxUrl,
			type : "POST",
			data : {
				luvWriter : ${sessSeq},
				luvPostId : key
			},
			datatype : "json",
			success:function(result){
				if(result.list != null){
					$("#commentLuv"+key).html("좋아요 " +result.list.length+"개" );
					
					if(status == "rgb(255, 0, 0)"){
						$("#datgleLuv"+key).removeClass("fa-solid fa-heart");
						$("#datgleLuv"+key).addClass("fa-regular fa-heart");
						$("#datgleLuv"+key).css('color','black');							
					}else {
						$("#datgleLuv"+key).removeClass("fa-regular fa-heart");
						$("#datgleLuv"+key).addClass("fa-solid fa-heart");
						$("#datgleLuv"+key).css('color','red');
					}
				}
			},
			error:function(){
				alert("error...");
			}
		});
			
	};
	
	openPost = function(postSeq) {
		
		
		var luv = $("#luv");
		var follower = $("#followerBtn");
		
		$.ajax({
			url: "/getPost",
			type: "POST",
			dataType: "json",
			data: {
				postSeq : postSeq
			},
			success:function(result){
				if(result.rt == "success"){
					$("#postImg").attr("src",result.imgSrc);
					$("#postWriter").html(result.nickname);
					$("#postWriter").attr("onclick","goProfile("+result.writer+")");
					$("#cmPostId").attr("value",postSeq);
					$("#cmContent").val('');
					$("#contentArea").html(result.content);
					/*
					var content = "";
					
					content += '<ul>';
					content += '<li>';
					content += '<div class="row commentBlock">';
					content += '<div class="col-3 comment_header">';
					content += '<img id="postWriterCommentImg" src="/resources/images/profile/empty.png" alt="">';
					content += '</div>';
					content += '<div class="col comment_body">';
					content += '<div class="comment_content">';
					content += '<span>';
					content += '<span class="comment_userName" id="postContentWriter" onclick="goProfile('+result.writer+')">'+result.nickname+'</span>';
					content += '<span id="postContent">'+result.content+'</span>';
					content += '</span>';
					content += '</div>';
					content += '</div>';
					content += '</div>';
					content += '</li>';
					content += '</ul>';
					*/
					
					
					var comment = "";
					
					for (var i = 0; i < result.list.length; i++) {
						
						var imgsrcTxt = "";
						 
						if(result.list[i].upmPath != null)
							imgsrcTxt = result.list[i].upmPath + result.list[i].upmUuidName;
						else
							imgsrcTxt = "/resources/images/profile/empty.png";
						
						comment += '<ul><li><div class="row commentBlock"><div class="col-3 comment_header"><img src=';
						comment += '"'+imgsrcTxt+'">';
						comment += '</div><div class="col comment_body"><div class="comment_content"><span><span class="comment_userName" onclick="goProfile('+ result.list[i].cmWriter +')">';
						comment += result.list[i].mmNickname+ '   </span>';
						comment += result.list[i].cmContent + '</span></div><div class="comment_info"><span>';
						comment += result.list[i].cmCreateDate + '</span><button type="button" id="commentLuv'+result.list[i].cmSeq+'">';
						//comment += '좋아요 5개</button><button type="button">';
						//comment += '답글 달기</button></div></div><div class="col-1 comment_like"><i class="fa-regular fa-heart"></i></div></div></li></ul>'; 
						comment += '좋아요 ' +result.list[i].luvCount+'개</button></div></div><div class="col-1 comment_like">';
						comment += '<i id="datgleLuv'+result.list[i].cmSeq+'" onclick="datgleJohayo('+ result.list[i].cmSeq +')"';
						comment += ' class="';
						if(result.list[i].loginUserLuvNy == 1){
							comment += 'fa-solid fa-heart" style="color:red';
						}else{
							comment += 'fa-regular fa-heart" style="color:black';
						}
						comment += '"></i></div></div></li></ul>';
						
					}
					
					if(result.followed ==="true"){
						follower.css('display','none');
					}
					else{
						follower.css('display','');
					}
					
					if(result.luved === "true"){
						luv.removeClass("fa-regular fa-heart");
						luv.addClass("fa-solid fa-heart");
						luv.css('color','red');
					}else {
						luv.removeClass("fa-solid fa-heart");
						luv.addClass("fa-regular fa-heart");
						luv.css('color','black');
					}
					
					$("#fwFollow").val(result.writer);
					$("#post_likeCount").html(result.luvCount);
					$("#comment_List").html(comment);
					$(".modal_overlay").show();
					$("#postCreateTime").html(result.date.substring(2,4)+'년'+result.date.substring(5,7)+'월'+result.date.substring(8,10)+'일')
					document.body.style.overflow = "hidden";
					
					if(result.img != null){
						$("#postWriterImg").attr("src",result.img);
						$("#postWriterCommentImg").attr("src",result.img);
					}else{
						$("#postWriterImg").attr("src","/resources/images/profile/empty.png");
					}
				}
				else{
					alert("게시글이 존재하지 않습니다.")
					return false;
				}
			},
			error:function(){
				alert("error...!!");
				return false;
			}
		});
		
	};
	
	
	closePost = function() { 
		
		$(".modal_overlay").hide();
		document.body.style.overflow = "unset";
	};

</script>