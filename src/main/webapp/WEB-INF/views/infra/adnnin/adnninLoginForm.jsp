<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>ALBUM'S Administrator</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stlyesheet" href="./css/style.css">

<style>
    div {
        /* border: solid 1px orange; */
    }
</style> 

</head>
<body>
    <form id="mainForm" method="POST">

        <div class="container">
            <div class="row mt-5 justify-content-center">
                <div class="col-2" style="overflow: hidden; height: 400px; width: 400px;">
                    <img src="/resources/images/logo.png" alt="" style="object-fit: cover; width: 100%; height: 100%;">
                </div>
            </div>
            <div class="row justify-content-center">
                <div style="width: 300px;">
                    <div class="row mb-1">
                        <input type="text" name="mmId" id="mmId" placeholder="관리자 아이디">
                    </div>
                    <div class="row">
                        <input type="password" name="mmPassword" id="mmPassword" placeholder="비밀번호">
                    </div>
                </div>
                <div class="text-center mt-1">
                    <button class="basebutton" type="button" onclick="login()" style="height: 100%; background: #fff; border-radius: 5px; width: 300px;">로그인</button>
                </div>
            </div>

        </div>
        
    </form>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script type="text/javascript">

	login = function() {
		
		var form = $("#mainForm");
		var id = $("#mmId");
		var pw = $("#mmPassword");
		
		$.ajax({
			url: "/administrator/login",
			type: "POST",
			data: {
				mmId : id.val(),
				mmPassword : pw.val()
			},
			dataType: "json",
			success:function(result){
				if(result.rt == "success"){
					location.href="/administrator/main";
				}else{
					alert('없는 계정입니다.');
				}
			},
			error:function(){
				alert('error');
			}			
		});
		
	}

</script>

</body>
</html>
