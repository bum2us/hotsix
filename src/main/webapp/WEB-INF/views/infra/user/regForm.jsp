<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>alBum's SignUp</title>
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
	<div class="container">
        <br><br>
		<div class="row justify-content-center">
			<div class="col text-center">
				<span class="page_title">회원 가입</span>
			</div>
		</div>
		<form action="http://localhost:8080/infoReg">
			<div class="row mt-4 searchForm">
				<div class="col">
					<div class="row my-4">
						<div class="col-6">
							<input type="text" placeholder="아이디" name="id">
						</div>
						<div class="col-6">
							<input type="text" name="nickname" placeholder="닉네임">
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-6">
							<input type="password" placeholder="비밀번호" name="password">
						</div>
						<div class="col-6">
							<input type="password" placeholder="비밀번호 확인">
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-4">
							<input type="text" placeholder="이름" name="name">
						</div>
						<div class="col-1 text-end">
							<span style="font-size:9pt; text-align:right; font-weight: 600;">생년월일</span>
                        </div>
                        <div class="col-4">
							<input id="dob" type="text" name="dob">
                        </div>
						<div class="col-3">
							<select name="gender" id="gender" >
								<option value="0" disabled selected>성별</option>
								<option value="1" >남</option>
								<option value="2" >여</option>
								<option value="3" >기타</option>
							</select>
						</div>
					</div>
                    <div class="row mb-4">
						<div class="col-3">
							<input type="text" name="email" placeholder="이메일"> 
						</div>
                        <div class="col-2">
							<select>
								<option value="0" disabled selected>메일선택</option>
								<option value="1" >naver.com</option>
								<option value="2" >kakao.com</option>
								<option value="3" >gmail.com</option>
                                <option value="4" >직접입력</option>
							</select>
						</div>
                        <div class="col-2">
                            <select name="telecom" >
								<option value="0" disabled selected>통신사</option>
								<option value="1" >SKT</option>
								<option value="2" >KT</option>
								<option value="3" >LG</option>
                                <option value="4" >알뜰폰</option>
							</select>
                        </div>
                        <div class="col-1">
                            <input type="text" value="010" style="text-align:center">
                        </div>
                        <div class="col-2">
                            <input type="text" name="phone1" placeholder="XXXX" style="text-align:center">
                        </div>
                        <div class="col-2">
                            <input type="text" name="phone2" placeholder="XXXX" style="text-align:center">
                        </div>
                    </div>
                   	<div class="row mb-4">
                   		<div class="col-2">
                   			<input type="text" id="zipCode" name="zipCode" placeholder="우편번호" readonly>
                   		</div>
                   		<div class="col-2 text-left">
                   			<button type="button" class="basebutton" onclick="searchAdd()">우편번호 찾기</button>
                   		</div>
                   	</div>
                   	<div class="row mb-4">
                   		<div class="col">
                   			<input type="text" id="address" name="address" placeholder="주소" readonly>
                   		</div>
                   	</div>
                   	<div class="row mb-4">
                   		<div class="col-6">
                   			<input type="text" id="address_detail" name="address_detail" placeholder="상세주소">
                   		</div>
                   		<div class="col-6">
                   			<input type="text" id="address_info" name="address_info" placeholder="참고사항">
                   		</div>
                   	</div>
					<div class="row mb-4">
						<textarea name="comment" id="comment" cols="10" rows="7" placeholder="자기소개" style="padding: 10px; font-size: 10pt;"></textarea>
					</div>
					<div class="row mb-3 justify-content-end">
						<button type="button" class="basebutton" onclick = "location.href='/login'">이전</button>
						<button type="button" class="basebutton">리셋</button>
						<button type="submit" class="basebutton">가입</button>
					</div>
				</div>
			</div>
		</form>
    </div>
	<%@include file="../common/user/footer.jsp" %>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>	
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45d424ec6ca5bb1db01d05b13aef2081"></script>
<script>

$( function() {
    $( "#dob" ).datepicker({
    	changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
    	changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
    	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
    	yearRange: "1900:2023",
    	dateFormat: "yy-mm-dd"
    });
  } );  

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
	
	            $('#zipCode').attr("value",data.zonecode);
	            $('#address').attr("value",data.roadAddress); 
	        
		    }
		}).open();
	
	}
	
</script>
</body>
</html>
