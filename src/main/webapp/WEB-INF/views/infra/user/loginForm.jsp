<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>alBum's Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/loginStyle.css">
	<style>
		div {
			/* border: 1px orange solid; */
		} 
		
				
		
	</style>
</head> 
<body style="background-color:#000;">
		<div class="container">
			<form action="/main" id="loginform">
				<div class="row" style="margin-top: 200px;">
					<div class="col-9">
						<div class="gallery">
							<span style="--i:1;"><img src="/resources/images/temp01.jpg" alt=""></span>
							<span style="--i:2;"><img src="/resources/images/temp02.jpg" alt=""></span>
							<span style="--i:3;"><img src="/resources/images/temp03.jpg" alt=""></span>
							<span style="--i:4;"><img src="/resources/images/temp04.jpg" alt=""></span>
							<span style="--i:5;"><img src="/resources/images/temp05.jpg" alt=""></span>
							<span style="--i:6;"><img src="/resources/images/tom.png" alt=""></span>
							<span style="--i:7;"><img src="/resources/images/temp07.jpg" alt=""></span>
							<span style="--i:8;"><img src="/resources/images/temp08.jpg" alt=""></span>
							<span style="--i:9;"><img src="/resources/images/temp09.jpg" alt=""></span>
							<span style="--i:10;"><img src="/resources/images/temp10.jpg" alt=""></span>
							<span style="--i:11;"><img src="/resources/images/temp11.jpg" alt=""></span>
							<span style="--i:12;"><img src="/resources/images/temp06.jpg" alt=""></span>
						</div>
					</div>
					
					<div class="col-3">
						<div class="row" style="object-fit: cover;">
							<img src="/resources/images/logo_white.png" alt="">
						</div>
						<div class="row text-center mb-3">
							<span id="errmsg" style="font-size:8pt; color:red; display: none;">????????? ?????????/???????????? ?????????. ?????? ???????????????.</span>
						</div>
						<div class="row mb-4">
							<div class="col gx-0">
								<div class="inputBox">
									<input type="text" required="required" id="mmId" name="id" value="shinbeomsu">
									<span>USER ID</span>
								</div>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col gx-0">
								<div class="inputBox">
									<input type="password" required="required" id="mmPassword" value="1234" name="password" onkeyup="enterKey()">
									<span>PASSWORD</span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col p-0"> 
								<a style="--clr:#FF9F29; color:gray;" href="javascript:submitform()">
									<span></span><span></span><span></span><span></span>Login
								</a>
							</div>
							<div class="col p-0">
								<a href="/member/memberForm" style="--clr:#FF9F29">
									<span></span><span></span><span></span><span></span>SignUp
								</a>
							</div>
						</div>
						<div class="row">
							<div class="col p-0"> 
								<a href="" style="--clr:#FF9F29;" data-bs-toggle="modal" data-bs-target="#exampleModal"> 
									<span></span><span></span><span></span><span></span>ID / PW FIND
								</a>
							</div>						
						</div>  
						<div class="row">
							<div class="col p-0">
								<a href="javascript:loginKakao()" style="--clr:#FF9F29; color:yellow;" > 
									<span></span><span></span><span></span><span></span>Kakao Login
								</a>
							</div>						
						</div>  
						<div class="row">
							<div class="col p-0">
								<a href="javascript:loginNaver()" style="--clr:#FF9F29; color:green;"> 
									<span></span><span></span><span></span><span></span>Naver Login
								</a>
							</div>						
						</div>
					</div>
				</div>
				
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				    <div class="modal-dialog modal-dialog-centered"> 
				        <div class="modal-content">
				            <div class="modal-header">
				                <h3 class="modal-title fs-5" id="exampleModalLabel">ID / PW ??????</h3>
				                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				            </div>
				            <div class="modal-body">
				            	<div class="container-fluid">
				            		<div class="row">
				            			 <input type="radio" name="size" id="small" checked>
				            			 <label for="small">????????? ??????</label><br>
				            			 <input type="radio" name="size" id="big">
				            			 <label for="big">???????????? ??????</label>   
				            		</div>
				            		<div class="row">
				            			<div class="col m-1">
				            				<div class="row my-2 justify-content-center">
						            			<input class="form-control" type="text" placeholder="?????????">		
				            				</div>				            				
				            				<div class="row my-2 justify-content-center">
						            			<input class="form-control" type="text" placeholder="??????">		
				            				</div>
				            				<div class="row my-2 justify-content-center">
						            			<input class="form-control" type="text" placeholder="???????????? ex)1999-01-01">		
				            				</div> 
				            				<div class="row my-2 justify-content-center">
						            			<input class="form-control" type="text" placeholder="??????????????? ex)010-1234-1234">		
				            				</div>
				            			</div> 
				            			<div class="col m-1">
				            				<div class="row my-2 justify-content-center">
						            			<button type="button">??????</button>		
				            				</div>
				            			</div>
				            		</div>
				            	</div>
				            </div>
				        </div>
				    </div>
				</div>
			</form>	
		</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">

	enterKey = function() {
		
		var keycode = event.keyCode;
		
		if(keycode == 13) //Enter
			submitform();
	};
		
    submitform = function(){		 
		
		if($('#mmId').val() == null || $('#mmId').val().length < 1)
		{ 
			swal("????????? ??????", "???????????? ???????????????", "error");
			$('#mmId').focus();			
			return false;
		}
		
		if($('#mmPassword').val() == null || $('#mmPassword').val().length < 1)
		{
			swal("????????? ??????", "??????????????? ???????????????", "error");
			$('#mmPassword').focus();
			return false;
		}
		
		$.ajax({
			
			url:"/member/login",
			type:"POST",
			data: {
				mmId : $('#mmId').val(),
				mmPassword : $('#mmPassword').val()
			},
			dataType: "json",
			success:function(result){
				if(result.rt == "success" ){ 
					location.href="/main";
				}else{
					$("#errmsg").show();
				}
			},
			error:function(){
				alert("error..!!");
			}
			
		});
	}
		
		
	</script>
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
	<script>
		
		var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "oWJJlc2ehy7nlWILKoyh", 
				callbackUrl: "http://localhost:8080/signin",
				isPopup: true
			}
		);
		naverLogin.init();
	
		loginNaver = function(){
			alert('????????? ?????? ?????????');
			return false;
			naverLogin.getLoginStatus(function (status) { 
				console.log(naverLogin);
				if(!status)
					naverLogin.authorize();
				ajaxNaverLogin();
			});
		};
		
		ajaxNaverLogin = function(){
			
			$.ajax({
				url: '/member/chkId/naver'
				,type: 'POST'
				,datatype: 'json'
				,data: {
					mmName : naverLogin.user.name
					,mmEmail : naverLogin.user.email
				},
				success:function(result){
					if(result.rt=="success"){
						alert("??????????????? ??????"); 
						
						location.href="/main";
					}else{
						alert("??????????????? ?????? ??????");
						
						$("#loginform").attr("action","/member/memberForm").submit();
					}
				},
				error:function(){
					alert("ajax error..!");
				}
			});
		}
		
	</script>
	
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
		Kakao.init('45d424ec6ca5bb1db01d05b13aef2081'); // ??????????????? ?????? JavaScript ??? ??????
		
		loginKakao = function () {
		  Kakao.Auth.login({
		   	success:function(result){
		   		Kakao.API.request({ 
		   			url:'/v2/user/me',
		   			success:function(result){
		   				
		   				var token = Kakao.Auth.getAccessToken(); 
		   				console.log(token);
		   				
		   				Kakao.Auth.setAccessToken(token);
		   				var account = result.kakao_account;
		   				console.log(account);
		   				
		   				$.ajax({
		   					url:'/member/login/kakao'
		   					,type: 'POST'
		   					,datatype: 'json'
		   					,data: {
		   						mmId : account.email
		   						,mmEmail : account.email
		   						,mmName : account.profile.nickname  
		   						,mmGender : account.gender == 'male' ? 1 : 2
		   					}
		   				
		   					,success:function(result){
		   						if(result.rt == "success" ){  
		   							location.href="/main";
		   						}else{
		   							$("#errmsg").show();
		   						}		
		   					}
		   					,error:function(){
		   						alert("ajax error...!");
		   					}	    					
		   				});
		   				
		   			},
		   			fail:function(){
		   				alert("kakao request error..!");
		   			}
		   		});	    		
		   	}
		    	,fail:function(){
		   		alert("kako login error..!");
		   	}
		    });	  
		  
		 }
	</script>
</body>
</html>
