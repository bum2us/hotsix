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
	<div class="container">
        <br><br>
		<div class="row justify-content-center">
			<div class="col text-center">
				<span class="page_title">코드 추가</span>
			</div>
		</div>
		<form action="/codegroup/Add">
			<div class="row mt-4 searchForm">
				<div class="col">
					<div class="row my-4">
						<div class="col-6">
							<input type="text" placeholder="코드이름" name="groupName">
						</div>
						<div class="col-6">
							<select name="groupUseNy">
								<option value="" disabled selected>사용여부</option>
								<option value="0">N</option>
								<option value="1">Y</option>
							</select>
						</div>
					</div>
					<div class="row mb-3 justify-content-end">
						<button type="button" class="basebutton" onclick = "location.href='/code/CodeList'">이전</button>
						<button type="button" class="basebutton">리셋</button>
						<button type="submit" class="basebutton">추가</button>
					</div>
				</div>
			</div>
		</form>
    </div>
	<%@include file="../common/adnnin/footer.jsp" %>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
</body>
</html>
