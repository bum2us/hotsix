
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- <form id="postForm" method="POST"> -->
	<div class="modal_overlay" onclick="javascript:closePost()" style="display:none;">
	<br><br>
		<input id="cmPostId" name="cmPostId" type="hidden">
		<input id="fwFollow" name="fwFollow" type="hidden">
		<div class="row post_frame" onclick="event.stopPropagation()">
			<div class="post_leftSide" id="post_leftSide">
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
						<i class="fa-solid fa-share-nodes" onclick="sharePost()"></i>
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
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js"integrity="sha384-PFHeU/4gvSH8kpvhrigAPfZGBDPs372JceJq3jAXce11bVA6rMvGWzvP4fMQuBGL" crossorigin="anonymous"></script>
<script>
  Kakao.init('c089c8172def97eb00c07217cae17495'); // 사용하려는 앱의 JavaScript 키 입력
</script>

<script type="text/javascript">
	
	sharePost = function(){
		Kakao.Share.sendDefault({
		      objectType: 'feed',
		      content: {
		        title: $("#postWriter").html(),
		        description: $("#contentArea").html(),
		        imageUrl:
		        	"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhIVFRUXGBgWFxUVFxUVFRcXFRcXFhUVFxcYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFRAPFysdFR0rLS0tLS0rLS0tLS0tLS0tKystLSstKy0tKy0tLTctNystLS0rLS0tKysrLTctNysrK//AABEIAPkAywMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAAAQIHAwUGBP/EAEAQAAEDAQQIAggEBAUFAAAAAAEAAhEDBAUhMQYSIkFRYXGBE5EyQlJiobHB8AeSouEjctHxFCSCstIXNLPCw//EABgBAQEBAQEAAAAAAAAAAAAAAAABAgQD/8QAHREBAQEBAQEBAAMAAAAAAAAAAAERAiExAxJBkf/aAAwDAQACEQMRAD8A3spJlJaZJBQUigEISlAyUJSvHelvbQpPqvwDQT+w5nJB4NKNJKdjZJ2qjvQYDBPMncOarC9L3tFrfNRxjcwSGjoF4bxt769V1Wo7Fx8huaOQGC9FIFvo7OGJAM/fVQZ6dM08dYH4E9l5vEIl0xKhUBnE5817a13HUa4A4jdklq41hrGfThbK7Q7ftt+POARPkta6mWnFsjnIW7ugMOMR/Kfpn95pEea3XYHbTI6ZHtmvBY7ZWsz9ek9zHDyPUZELZ3nGdNzo3gnaHbeOa0z7QcnY89/nvVqxbGiWlLLW3VOzWaJLdzh7TeXxC6JUPd9vdRqtq0zD2mQcweII4EK4dHr9Za6QqNGqcnsJktdw6cDwUStwSkkEKhpIQgJTCSEApKKJQZ5RKEigEihIoCUJFCoCVW/4m3vrObZmnBsPf1I2GnoCT3CsV7t5Kom9bZ41apV9t7nDoTsjygLNI87BJC3TaZdqjVjgN/8Ac/fA+G53AVMeED4LekazoGBynPr8I80/pWpqM2zjPPd2XR3ZRJpmMSSAB3hTsej5qVGta0mczyXcs0aFNgAw3ExlOcdM159dPXnhVt5U3B0PB6HJa40QTIEcxgrivW4GVaZJaNYjyLYBx3/suBddDtdwjdMdIDj3Dmu7lJ0l4c9Wa4ekZIxB3+e9eG0EHH7K7WvdwezVIh0QDx78P2XFW2zupuLXAghb1i8487gtpo3fLrLWDxOocKjR6zf6jMfuVqpSRF/2aoHNDgZBxBGRByIWVcZ+G97+JR8Bx2qeXNpy8suw4rspWkBKAUSkgYQkiUDCcdVFOEGdJNIoEUSkUIBRQhBp9LrZ4VkrOBg6haOr9gf7vgqWhWl+JlaLI1vtVWjsA530CqyVKseu7nQ8Hfu6rortZOJ34DuZPwHxXL0XQQV3+iVlFSpSbuGJHb7Cx1fG+JtWJojd2pTBIxI/uulqUARivNY2asALYHJeT3eb/DggiN8+eJ+JK5e13cwPEjeN3tBzD/uaurszsSOIB81qLy9MdRHarScfg0qory/LIaZIAgtxHzEcf7cVo75uwWml4rBtAYgbiBJ7EY9MTmrM0mufXbrAbTd28jeFXVGoaFTiM4y1mzJHUHEdxkrKlivnCElvtKLuDHmpTxpvOEbpGsB5H9JWgXpK8bMbrRa8jQrscMiQD0Jg/Az2V0KgKef2NyvmymWN/lHyWozWdIoRKqBNKUBAIlCWt94oPSkUSkUAlKCUkBKSClKDjPxRb/lqZ4VR8WPVZBWv+IdEvszKbc3VmDHL0XqrrVZzTeWmDBzGR4ELNWMYzVm6A2mlTDqlRwBENA34Z4dx5Ks6Qkq1dF7DZ6dna6sBiNYl2+ZMQsd16fnPXZ09LLNhDls7JftKp6J81xlC+rq1i3w8Q3XJbSeYYPXJa2A3EbUxit5QpUCwVKBBaRILTIK83tMre2WptnoPkT9Quc0htupVbGOLsuOuyPOVuLsJO194gf8AFc3eO3aWNzAIJ6SXf+jfzIJ2rSas+W07O52OYnlnwXFX/YrRJeaRGOtETB3kY4bpC7G+dK2WItpinrFzgzWJDabThOu/dAIJgGFr7Ppea9LxnWaKWuaZc06+q4QdqACBBEEA57lZv1Lm5qu6dtaZpVBDHESHeqZILhyhzvzLSXhZTSqOYdxjqNxVs3vo1StTfEpASRuyKrW+rIWv1TMgRjngt89a8u+bGus1nLi3AwXBsxhJOU8Ve9EYBV1oZ4rmeCWg0Q4l2GId/DexxPXLr5WOFvm7rHUyQ0JIWmQUFJNAykSgJQqPSkmUioBJCSASKaRQc/pkz+CwnIVmcvSlk/qVZXhRa3ZmY39SSFb1+WM1qFSmPSLSW8nt2mH8wCp62nWDTx7dfLJZqy+Y2OitzmvUaN0ieQB+v0Ksq8dES7Ux1mNiWYgEDdgtH+GYa0HjP7q2LPDgvHq+uniZFc3zoNTtVYVS805AD2tAcdkQC0yNUwAMQRhkuysl0hhcWbLC1rQyDALBqh0neWgA9At/Tsrc4RWbATbZ6uSfI8l22aBHDHvj/VeSx3Lq1HPcZcXEg8AeC2lhdJhZahhyiOdvjRSnWp+E+nrt1tcY6rg8ky4ObBkyQVCw6NU6dIUWU9WmCTq5yTm5xOLjzXY03ApVgIWrPEl9+NCLE1jYaIVQfiHd3+ZaWZv4clc1uqQFVGkzTWtYaCBqiZOQ2s+fRZnjXU2JXdZRZLIxz3EmtXaXEzgGwR22AScgF04K5+8LS1zrJRjIuqPacmjGlHOS58/y8ls7NTdT2RtM9X2mj2TxA3dF7/n8c/6fXuSKQKa2wSaSJQNKSiUkHqSQgqASKaigEpQhAKpr9sWpbKtMZaxc0cnnWPxnyVsFcBpfZnNtIqtGOq3EZyHPn5tUsWMWi9fwqxGQMH+v0VuXRbA4DFVVaqlMilWZqg7wIBx3EdQu00etUgLx7mV78XYsCjUWK8HarC7gJXmstXBei0NFRjmHJwIPHFZaeC67dTDi1zxOa9FpttNzy1rxIxicVzLtB2Oq+L4rxUjVLwY1gMg5uR8ltbJojZ2PFWCakQ6pJ1nD2Sdw5Dgi+Ogs78AUVqqCQF5a71bUaq9q8AqtKt4+C+tWLNaZYDORDZ4Z7QXa6Q2iGnouENm8YsbuE1Hcy4gtA7fNXjnaz31kayz2x7LY19bHXEHgIGIbwAPyViMP39VzV63CKga4RrDEHmMIPwW4ui0a9MHeMCN4c3BzSDvBXRJjne9EpSiUAiUFJA5TlJKUwelCaSgSRTKRCAKSChAFaPSSw67dfe2fy4T8QDPurdqNRkiEHHXXZGuY5jidWeeBMYRuggLYaP2jVcWk4tMeShXuttMkmS0z6xAA4HpuWrtVcUajSPWMQAYAjCZ4rHc2N8dZVq2GvLVC9b+pWZutVeG8BvPIBaO4LzDgBK3VoosqNLXgEHiB2IXg6I422/iXt/wxgO/nwR/1LqAgimSDwBhZ7QG0Hw9st3YSstntDapDKVIzxIICztdefnn2f46LR/SllrBDWua4ekHA4d8itpaauC81gs4p0w3uTzWsvq8AxpkrTkub58c9pPaw4imD6Rj+qjd1ANAMczPOB9FoBUNep4g9p2r/AKJk+crpbDkJ4ds5jrmuj85kc/fW17mtXldZIdrsOqT6QGTowEjjzXpanK2wixx3g/NTQkgYSKUoQNOUkQg9KSaSgUpJlCBFJNBQJIpoQQcwHNczplRikIHrNiOsn6Lf3hbWUWOqVHBrWjE/IDiTwVbVL3q26u5xkU2AlrAcBOAJ4uzx8lOr4vM9bq7rcaZB3KwbnvJlRoIIVduspiUrNaHUzLDBXM6Vz0KVMjEAr0ajAPRA7BVXZtLq7BjBTtOnNYiAAFTXd3rb2U2klwACre8Le+1vMSKY/V+yws8e2O/iOOrOW5dLSunw6ZgblNwaHRulstPvE/mn6yuhoU4EbhPzMLk9FL2Zrus7tlwe7VnJwBMx7w4cl2TD99F1c/HLTQEIVAhCQQIhNCEAmkhMHrCIQAhBEhJSUYUCSUljqPDQS4gDeTgB1JQSXhvW9KVnpmpVdAGEb3H2WjefvJam9dNLLSBDH+K+MGsktJ5v9GOkqt72vSraX+JVdJ9Vowa0cGj7JQenSK/6lsfjs02nYpzl7zuLufkttoG1rvGYY1tlw4kZHyMfmC5Snmstltb6NQVKbtVzTIP0I3jks9TY1zcq3P8AByIWkt93kHBYrp09pERXY5jt7mDWZ5TrDpj1W/ZftgqiRaaQ5POof1wuf+Njo/lK5tlicdy99juMk4hdHY/8McRVpHpUYfkVtGWqyszrUW83VGD5lPTwXJc7aYGC99os4Ihay2aa3dRbjaqbjwpTVP6AQO642/PxYwLbJQjhUrQe4ptPzd2VnNqXqRyWl9hNnttQAxJFRsYESfgZE+S63RbSdtcClUIbWGA3CpG8e9xb5cq6rW6pWqOqVXF73Yuccyfp0WOcV0c+Rz36vBC4bRrTMACnajybVxM8nxjPvefE9lZLbSqiadRjx7rg6OsZLSM8JJoVCQmUoUAUd0QmIQepC1t5X9Z6EirVaHD1RtP/ACtkhcneP4gEyKFKODqhn9Df+XZB3srTXlpNZaODqoLh6rNt3QxgO5CrO8r7tFfCrVcR7I2WflbAPda5QdpeWn7zhQphvvVNp3ZowHmVyl4XnWrGatRz+pwHRowHYLzQkQqIwoOCzFQKCLE61IiCRg7EHjjBQ1emi8YscYaTIPsuiA7pkDy4kBQeAhOVnq0oJBwIMQoFiKxwlHJT1UwERCCgU1lheuhQaG+JU9GYa3I1CM+jBvd2GMkB522fVDXEiXTDd5aJl3ISIHGDwxi5OpULnycz23ZAbhuhDkEQpMc5pDmuLXDJzSQR3CAFNBvbt00tNLCpFZvvbL+zwPmCuqu3TWy1IDy6keFQbP5hh5wq1ISIQXZRrteA5jg4HItILT0IWSVSVltFSkdak9zDxa4tnrGfdb+w6b2qnhUDKo5jUd5tw+CuizU5+8Fy12ab2apAfrUXe/i2eTx8yAukpWljgHNc1wORBBB5ghXRS6aTUyFAJwlCaAhRCkUFBFRIU1FyURATeMU2BOqEGZg8RobG20bPvtHqfzDGOIw3NC8oKYPBemrFTaAh+JcBk/i9vPiO43gQeXWKUqUL0toBoD3jA4tZk5w9ox6LOeZ3cRRClQgB9QbPqjIvIzA4NG93YYqFes55l3AAAYAAZNaNwHBFao55lxndyAGQA3AcAohQINxHdSKYGI6IIVCCkAkFIKBOCgsqhCoiiFKEQgxlij4SzwiEBvUiFB24rIoIJlRa7aIUnBANCCkCd6cqiJSAU4RCACi9SUXZIIJgx1UUKDb1LPFnZaSxsveaYOEbIB19Te4kOExq4ZEzGrc8kkkyTiScyeJUzWdq6hcdUGQ2TE44xlOJ8zxWEuQDisjGwo0xvWQKhNzPZScFFuZ7KQUEIUwkUkEkimkXIEhAB6IeYCoQKag0pas4oJvyUqZSCjRKghVMOBXoCxWhuCdB0hBkUS1SSlAgglEpKgKIwSKk1BiQgpIAptagLI0IJAIQgqCLRn1+iYUWfVSCoaUJpqCGJ5fNMNhSUVQ1itBw7rKsFcqCAcs4WFgxUiVRNiGZlRBTna7KCb8lhoGCQs68z8DKD1IQ0oQJBQhAigFIptQRKiFkKjCobQpoAQoEUyEIQQbl3PzUlFo+vzUlQShJCBymooUDK8zzKy1TgsBKCbDgpSFAtwUUGcpPzCClUOXVUZAViqZrI0qDkEqBwjgshWHI9cFmShIQhAFIJphAkIcMUIJISRKgaEkFAm5KQSbkEygCFGFNIoFCEBDiqMFY4rESpKJKisrslGFMDBQRGUKLxgmEOyKBNKDmkxSQDhgpMdISG9Kh9VRkQhMqAQEBMIMlno672smJnE5ANBcT5ArZ3ndNOnSpup1C+oQ99Rg1T4bGv1GuMGROBgjJwMxMaul6X+ir/wCJ6s3TL/t/9Ft/+SlvqxVqEIKqBBKai7JBNqZSbkmgAhCSAKxVzhCzLz2jMdEGIqKab81FjM0qBCkEiqj/2Q==",
		        link: {
		          mobileWebUrl: 'https://developers.kakao.com',
		          webUrl: 'https://developers.kakao.com',
		        },
		      },
		      social: {
		        likeCount: 286,
		        commentCount: 45,
		        sharedCount: 845,
		      },
		      buttons: [
		        {
		          title: '웹으로 보기',
		          link: {
		            mobileWebUrl: 'https://developers.kakao.com',
		            webUrl: 'https://developers.kakao.com',
		          },
		        },
		        {
		          title: '앱으로 보기',
		          link: {
		            mobileWebUrl: 'https://developers.kakao.com',
		            webUrl: 'https://developers.kakao.com',
		          },
		        },
		      ],
		    });
	};

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
					
					var sourceText = "";
					if(result.sourceType == "1") //영상
						sourceText += '<video id="postImg" src="'+result.imgSrc+'" autoplay="autoplay" muted="muted" loop="loop" width="100%"></video>'
					else if(result.sourceType == "2") //사진
						sourceText += '<img id="postImg" src="'+ result.imgSrc +'" alt="">'
						
					$("#post_leftSide").html(sourceText);					
					//$("#postImg").attr("src",result.imgSrc);					
					$("#postWriter").html(result.nickname);
					$("#postWriter").attr("onclick","goProfile("+result.writer+")");
					$("#cmPostId").attr("value",postSeq);
					$("#cmContent").val('');
					$("#contentArea").html(result.content);
					
					
					
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