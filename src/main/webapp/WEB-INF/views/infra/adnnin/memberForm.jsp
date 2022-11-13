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
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <style>
        div {
            /* border: 1px solid orange; */
        }

    </style>
</head>
<body>
	<div class="container-md" style="width: 500px; min-height:700px;">
        <br><br>
		<div class="row justify-content-center">
			<div class="col text-center">
				<span class="page_title">
				<c:choose>
					<c:when test = "${item.mmSeq eq null}">
						회원 추가
					</c:when>
					<c:otherwise>
						회원 정보 수정						
					</c:otherwise>
				</c:choose>
				</span>
			</div>
		</div>
		<form id="mainForm"  enctype="multipart/form-data" method = "POST" > 
			<div class="row mt-4 searchForm">
				<div class="col"> 
					<div class="row mt-3 justify-content-center"> 
						<img id="profileImg" style="width:300px; height:300px; border-radius: 50%;" alt="" src="
						<c:if test="${item.upPath eq null}">/resources/images/profile/empty.png</c:if>
						<c:if test="${item.upPath ne null}">${item.upPath}${item.upUuidName}</c:if>
						">
					</div> 
					<div class="row my-3 justify-content-center">
						<button type="button" class="upload-Btn">파일 첨부 
							<input type="file" id="postImageid" name="postImage"  multiple="multiple" onChange="upload('postImageid');" > 
						</button>
					</div>
					<div class="row my-4">
						<div class="col">
							<input type="text" onfocusout="chkId()" placeholder="아이디" id = "idbox" name="mmId" value="${item.mmId}">
						</div>
					<span style="margin-top:5px" class="chk_sucess" id="id_check_sucess">사용가능한 아이디 입니다.</span>
					<span style="margin-top:5px" class="chk_fail" id="id_check_fail">이미 존재하는 아이디입니다.</span>   
					</div> 
					<div class="row my-4">
						<div class="col">
							<input type="text" name="mmNickname" placeholder="닉네임" value="${item.mmNickname}">
						</div>
					</div>
					<div class="row mb-4">
						<div class="col">
							<input type="password" id="passwordBox" placeholder="비밀번호" name="mmPassword">
						</div>
					</div>
					<div class="row my-4">
						<div class="col">
							<input type="password" id="passwordBoxRe" onfocusout="chkPw()" placeholder="비밀번호 확인">  
						</div>
						<span  style="margin-top:5px" class="chk_sucess" id="pw_check_sucess">비밀번호가 일치합니다.</span>
						<span  style="margin-top:5px" class="chk_fail" id="pw_check_fail">비밀번호가 일치하지 않습니다 다시 확인하세요.</span> 				
					</div>
					<div class="row mb-4">
						<div class="col-8">
							<input type="text" placeholder="이름" name="mmName" value="${item.mmName}">
						</div>
						<div class="col-4">
							<select name="mmGender" id="gender" >
								<option value="0" disabled selected>성별</option>
								<option value="1" <c:if test="${item.mmGender eq 1}">selected</c:if>>남</option>
								<option value="2" <c:if test="${item.mmGender eq 2}">selected</c:if>>여</option>
								<option value="3" <c:if test="${item.mmGender eq 3}">selected</c:if>>기타</option>
							</select>
						</div>
					</div>
					<div class="row my-4">
                        <div class="col">
							<input id="mmDob" type="text" name="mmDob" value="${item.mmDob}" placeholder="생년월일">
                        </div>
					</div>
					<div class="row my-4">
						<div class="col">
							<input type="text" id="mmEmail" name="mmEmail" placeholder="이메일" value="${item.mmEmail}"> 
						</div>
					</div>
                    <div class="row mb-4">
                        <div class="col-4">
                            <select name="mmTelecom" >
								<option value="0" disabled selected>통신사</option>
								<option value="1" <c:if test="${item.mmTelecom eq 1}">selected</c:if>>SKT</option>
								<option value="2" <c:if test="${item.mmTelecom eq 2}">selected</c:if>>KT</option>
								<option value="3" <c:if test="${item.mmTelecom eq 3}">selected</c:if>>LG</option>
                                <option value="4" <c:if test="${item.mmTelecom eq 4}">selected</c:if>>알뜰폰</option>
							</select>
                        </div>
                        <div class="col-2">
                            <input type="text" value="010" style="text-align:center">
                        </div>
                        <div class="col-3">
                            <input type="text" name="mmPhone1" placeholder="XXXX" value="${item.mmPhone.substring(3,7)}" style="text-align:center">
                        </div>
                        <div class="col-3">
                            <input type="text" name="mmPhone2" placeholder="XXXX" value="${item.mmPhone.substring(7,11)}" style="text-align:center">
                        </div>
                    </div> 
                    <div class="row mb-4">
                   		<div class="col-8">
                   			<input type="text" id="mmZipCode" name="mmZipCode" placeholder="우편번호" value="${item.mmZipCode}" readonly>
                   		</div>
                   		<div class="col-4"> 
                   			<button type="button" class="basebutton" onclick="searchAdd()">우편번호 찾기</button>
                   		</div>
                   	</div>
                   	<div class="row mb-4">
                   		<div class="col"> 
                   			<input type="text" id="mmAddress" name="mmAddress" placeholder="주소" value="${item.mmAddress}" readonly>
                   		</div>
                   	</div>
                   	<div class="row my-4">
                   		<div class="col">
                   			<input type="text" id="mmAddressDetail" name="mmAddressDetail" placeholder="상세주소" value="${item.mmAddressDetail}">
                   		</div>
                   	</div>
                   	<!-- 
                   	<div class="row mb-4">
                   		<div class="col-2">
                   			<input type="text" id="Lat" name="Lat" placeholder="위도" readonly>
                   		</div>
                   		<div class="col-2">
                   			<input type="text" id="Lng" name="Lng" placeholder="경도" readonly>
                   		</div>
                   		<div class="col-2 text-left">
                   			<button type="button" class="basebutton" onclick="getGeoFromAddress()">좌표 추출</button>
                   		</div>
                   	</div>
                   	 -->
                   	<div class="row mb-4" id="mapDiv"></div>
					<div class="row mb-4">
						<textarea name="mmComment" id="mmComment" cols="10" rows="7" placeholder="자기소개" style="padding: 10px; font-size: 10pt;">${item.mmComment}</textarea>
					</div>
					<div class="row mb-3 justify-content-end">
						<button type="button" class="basebutton" onclick ="runForm('return');">이전</button>
						<button type="button" class="basebutton" <c:if test="${item.mmSeq ne null}">hidden</c:if> onclick="location.href='/member/memberForm'">리셋</button>
						<c:choose>
							<c:when test="${item.mmSeq eq null}">
								<button type="button" class="basebutton" onclick ="runForm('add');">가입</button>
							</c:when>
							<c:otherwise>
								<button type="button" class="basebutton" onclick ="runForm('edit');">수정</button>
							</c:otherwise>
						</c:choose>
						
					</div>
				</div>
			</div>
			<input type="hidden" name="shValue" value="${vo.shValue}">
			<input type="hidden" name="shOption" value="${vo.shOption}">
			<input type="hidden" name="shDateOption" value="${vo.shDateOption}">
			<input type="hidden" name="shDateStart" value="${vo.shDateStart}">
			<input type="hidden" name="shDateEnd" value="${vo.shDateEnd}">
			<input type="hidden" name="shGender" value="${vo.shGender}"> 
			<input type="hidden" name="pageNumber" value="${vo.pageNumber}">
			<input type="hidden" name="pageSize" value="${vo.pageSize}">
			<input type="hidden" name="pageTotal" value="${vo.pageTotal}">
   			<input type ="hidden" name="mmSeq" value ="${item.mmSeq}">
		</form>
    </div> 
    
    
	<%@include file="../common/user/footer.jsp" %>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>	
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45d424ec6ca5bb1db01d05b13aef2081&libraries=services,clusterer,drawing"></script> 
<script>
	$( function() {
	    $( "#mmDob" ).datepicker({
	    	changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
	    	changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
	    	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
	    	yearRange: "1900:2023",
	    	dateFormat: "yy-mm-dd"
	    });
	} );
  	
 	var form = $("#mainForm");
  
 	runForm = function(key) {
		  
	  switch(key)
	  {
	  	case "return":
 		{
	  	  	form.attr("action", "/" ).submit();
	  	    //form.attr("action", "/member/memberList" ).submit();
	  		break;
  		}
	  	case "add":
  		{
			form.attr("action","/member/memberIns").submit(); 
			break;
  		}
	  	case "edit":
  		{
	  		form.attr("action","/member/formAction").submit();
	  		break;
  		}
	  
	  }
	
  };
 	
 	function emailChange(){
 		
 		var email = $("#mmEmail");
 		var emaildomain = $("#mmEmaildomain"); //emaildomain[0].selectedIndex
 		var txt =  emaildomain[0].options[1].text;
 		
 		if(email.val().includes('@')){
 			
 		}
 		else{
 			email.attr('value',email.val()+'@'+ txt);
 		}
 		
 	};
 	
  searchAdd = function() {
		
		new daum.Postcode({
		    oncomplete: function(data) {
		    	
		    	var roadAddr = data.roadAddress; // 도로명 주소 변수
	            var extraRoadAddr = ''; // 참고 항목 변수
	
	            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            // 건물명이 있고, 공동주택일 경우 추가한다.
	            if(data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	            if(extraRoadAddr !== ''){
	                extraRoadAddr = ' (' + extraRoadAddr + ')';
	            }
	
	            $('#mmZipCode').attr("value",data.zonecode);
	            $('#mmAddress').attr("value",data.roadAddress); 
	      		
	      		/*
	      		var geocoder = new kakao.maps.services.Geocoder(); 

	      		geocoder.addressSearch(data.roadAddress, function(result, status) {
	      		    if (status === kakao.maps.services.Status.OK) {
	      		    	console.log(result[0]); 
	      		     	$('#Lat').attr("value",result[0].x);
	      		  	 	$('#Lng').attr("value",result[0].y);
	      		    }
	    		   
	      		}); 
	      		*/
		    }
		}).open();
	
	};
  
  	getGeoFromAddress = function(){
  
  		var address = $('#mmAddress').val();
  		
  		var geocoder = new kakao.maps.services.Geocoder(); 

  		geocoder.addressSearch(address, function(result, status) {
  		    if (status === kakao.maps.services.Status.OK) {
  		    	console.log(result[0]); 
  		     	$('#Lat').attr("value",result[0].x);
  		  	 	$('#Lng').attr("value",result[0].y);
  		    }
		   
  		});
  	} ;
 
  	chkId = function() {
  		
  		var chkId = $('#idbox').val();
  		
  		if(chkId == null || chkId.length < 1) return false;
  		
  		$.ajax({	
  			url:"/member/chkId",
  			type:"POST", 
  			data: {
  				mmId: chkId
  				},
  			async: true,
  			dataType: 'json',  
  			success:function(result){
  				if(result.chkCount == 0)
				{
  			  		$('#id_check_fail').hide();
  					$('#id_check_sucess').show();
				}
  				else
  				{ 
  			  		$('#id_check_sucess').hide();
  					$('#id_check_fail').show();
  				}  				 
  			},
  			error:function(){
  				alert("err");
  			}
  			
  			//성공시 = success → complete → done → always
  			//실패시 = error → complete → fail → always
  			
  		});
  		
  	};
  	
	chkPw = function() {
  		
  		var chkPw = $('#passwordBox').val();
  		var chkPwR = $('#passwordBoxRe').val();
  		
  		if(chkPw == null || chkPw.length < 1) return false;
  		if(chkPwR == null || chkPwR.length < 1) return false;
  		
  		if(chkPw == chkPwR)
		{
		  		$('#pw_check_fail').hide();
				$('#pw_check_sucess').show();
		}
		else
		{ 
	  		$('#pw_check_sucess').hide();
			$('#pw_check_fail').show();
		}  				 
  		
  	};
	
	upload = function(objName) {
		
		var obj = $("#" + objName +"")[0].files;	
		
		if(obj == null) return false;
		
		var fileReader = new FileReader();
		fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
		
		fileReader.onload = function () {
			 $("#profileImg").attr("src", fileReader.result);
		 }	
	};
  
</script>
</body>
</html>
