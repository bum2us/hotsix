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
	<style>
		div	{
			/* border: solid 1px orange; */
		}
		
	</style>
</head>
<body>
	<%@include file="../common/user/header.jsp" %>
	<form method = "POST" action="postUpload" enctype="multipart/form-data">
		<div class="container">
		<br><br>
			<div class="row justify-content-center">
				<div class="col text-center">
					<span class="page_title">사진 업로드</span>
				</div>
			</div>
			
			<div class="row my-4">
				<div class="col-2">
					<h6>첨부파일</h6>
				</div>
				<div class="col">
					<!-- <button type="button" class="basebutton">첨부하기</button>  -->		
					<img id="showImg"  alt="" src="" width="200" height="200">			
				</div>
			</div>
			<div class="row my-4">
				<div class="col-2">
					
				</div> 
				<div class="col">				 
				    <input class="form-control form-control-sm" id="postImage" name="postImage" type="file" multiple="multiple" onChange="upload('postImage');">
				</div>
			</div>
			<div class="row my-4">
				<div class="col-2">
					<h6>내용</h6>
				</div>
				<div class="col">				
					<textarea id="postContent" name="postContent" rows="7" col="20" style="width: 100%"></textarea>
				</div>
			</div>	
			<div class="row my-2 justify-content-end">
				<button type="button" class="buttons" >내용삭제</button>
				<button type="submit" class="buttons">게시하기</button>
			</div>
			<input type="hidden" name="postBoard" value="1">
			<input type="hidden" name="postWriter" value = "${sessSeq}">
		</div>
	</form>
	<%@include file="../common/user/footer.jsp" %>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>	
	
	<script>
		upload = function(objName) {
			
			var obj = $("#" + objName +"")[0].files;	
			
			if(obj == null) return false;
			
			var fileReader = new FileReader();
			fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
			
			fileReader.onload = function () {
				 $("#showImg").attr("src", fileReader.result);
			 }	
		}
	</script>	
</body>
</html>
