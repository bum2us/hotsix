<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<style type="text/css">
		div {
 			/* border: 1px solid black; */
			font-size: 10pt;					
		}
	</style>
</head>
<body>
	<form action="">
		<nav class="navbar navbar-dark bg-dark sticky-top">
	  		<div class="container-fluid ">
		    	<a class="navbar-brand" href="#">SBS</a>		
    			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    	  		<span class="navbar-toggler-icon"></span>
		    	</button>    	
		    	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		      		<ul class="navbar-nav me-auto mb-2 mb-lg-0">
		        		<li class="nav-item">
		          			<a class="nav-link active" aria-current="page" href="#">로그아웃</a>
		        		</li>
	        		</ul>
        		</div>
	  		</div>	
		</nav>
		<br>
		<div class="container">
			<div class="row">			
				<h2 class="text-center fw-bold">Member List <i class="fa-solid fa-address-book"></i></h2>			
			</div>
			<div class="row">
				<ul class="nav">
					<li class="nav-item">
				    	<a class="nav-link active" href="#" style="nav-link-hover-color: black;">Home</a>
				  	</li>
				  	<li class="nav-item">
				    	<a class="nav-link" href="#">코드그룹관리</a>
				  	</li>
				  	<li class="nav-item">
				    	<a class="nav-link" href="#">회원관리</a>
				  	</li>
				  	<li class="nav-item">
				    	<a class="nav-link" href="#">회원관리</a>
				  	</li>
				</ul>
			</div>
			<br>
			<div>
				<video width="100%" src="./image/blade14-hero-loop_700.mp4" autoplay="autoplay" muted="muted" loop="loop"></video>
			</div>
			<br>
			<div class="p-2" style="background-color: #F8F7FC; border-radius: 5px;">
				<div class="row mb-1 gx-1">			
					<div class="col col-2">
						<input type="text" class="form-control form-control-sm" placeholder="이름" id="search-name">					
					</div>					
					<div class="col col-2">
						<input type="text" class="form-control form-control-sm" placeholder="ID" id="search-id">				
					</div>
					<div class="col col-2">						
						<select class="form-select form-select-sm" id="search-gender">
							<option selected>성별</option>
							<option value="1">남자</option>
							<option value="2">여자</option>
						</select>
					</div>					
					<div class="col col-4">
						<div class="input-group input-group-sm">
							<span class="input-group-text">생년월일</span>
							<input type="date" class="form-control form-control-sm" placeholder="생년월일" id="search-birth">
						</div>	
					</div>
					<div class="col">
						<input type="text" class="form-control form-control-sm" placeholder="거주지" id="search-address">					
					</div>					
				</div>	
				<div class="row">
					<div class="col">
						<div class="input-group input-group-sm mb-1">
					  		<input type="text" class="form-control" placeholder="검색어">
					 		<button type="button" class="btn btn-dark btn-sm"><i class="fa-solid fa-magnifying-glass" style="color:white;"></i></button>
						</div>
						
					</div>	
				</div>			
			</div>			
			<hr>
			<div class="row mb-1">
				<div class="col col-6 text-start">
					<button type="button" class="btn btn-dark" style="font-size:8pt;">추가하기</button>
					<button type="button" class="btn btn-dark" style="font-size:8pt;">삭제하기</button>
				</div>				
				<div class="col col-6 text-end">
					<button type="button" class="btn btn-dark" style="font-size:8pt;">엑셀저장</button>
				</div>
			</div>
			<div class="row gx-1">
				<table class="table table-hover">					
					<tbody>
						<tr>
							<td><input class="form-check-input mt-1" type="checkbox"></td>
							<th>No.</th>
							<th>이름</th>
							<th>아이디</th>
							<th>성별</th>
							<th>생년월일</th>
							<th>거주지</th>
							<th>가입일</th>	
						</tr>
						<tr>
							<td><input class="form-check-input mt-1" type="checkbox"></td>
							<td>1</td>
							<td>신범수</td>
							<td>bum2us</td>
							<td>남</td>
							<td>19950520</td>
							<td>성남</td>
							<td>20220710</td>						
						</tr>
						<tr>
							<td><input class="form-check-input mt-1" type="checkbox"></td>
							<td>2</td>
							<td>김범수</td>
							<td>bsk_world</td>
							<td>남</td>
							<td>19790126</td>
							<td>서울</td>	
							<td>20220710</td>					
						</tr>
						<tr>
							<td><input class="form-check-input mt-1" type="checkbox"></td>
							<td>3</td>
							<td>손범수</td>
							<td>anaSonb</td>
							<td>남</td>
							<td>19640312</td>
							<td>서울</td>		
							<td>20220710</td>				
						</tr>
						<tr>
							<td><input class="form-check-input mt-1" type="checkbox"></td>
							<td>4</td>
							<td>이범수</td>
							<td>bumsoo_official</td>
							<td>남</td>
							<td>19691125</td>
							<td>서울</td>	
							<td>20220710</td>
						</tr>	
					</tbody>
				</table>
			</div>	
			<div class="row">						
				<ul class="nav justify-content-center pagination">
					<li class="page-item disabled"><a class="page-link" href="#">start</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">end</a></li>
				</ul>
			</div>				
		</div>
	</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
	
</body>
</html>