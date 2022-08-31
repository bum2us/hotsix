<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="UTF-8">
<title>관리자 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<div id="headers"></div>
	<div class="container">
        <br><br>
		<div class="row justify-content-center">
			<div class="col text-center">
				<span class="page_title">코드 그룹 관리</span>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col" style="background: #d9d9d9; padding: 10px; border-radius: 10px;">
				<div class="row mb-1">
					<div class="col-3">
						<select id="" class="form-select">
							<option value="1">N</option>
							<option value="2">Y</option>
						</select>
					</div>
					<div class="col-3">
						<select id="" class="form-select">
							<option value="1">수정일</option>
							<option value="2">등록일</option>
						</select>
					</div>
					<div class="col-3">
						<input type="text" class="form-control" placeholder="시작일">
					</div>
					<div class="col-3">
						<input type="text" class="form-control" placeholder="종료일">
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<select id="" class="form-select">
							<option value="1">검색구분</option>
							<option value="2">...</option>
						</select>
					</div>
					<div class="col-3">
						<input type="text" class="form-control" placeholder="검색어">
					</div>
					<div class="col">
						<button type="button" class="btn btn-warning">검색</button>
						<button type="button" class="btn btn-danger">초기화</button>
					</div>
				</div>
			</div>
		</div>
		<div class="row my-4">
			<div class="col">
				<span id="listTotal">Total: 42</span>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<table class="table table-dark table-hover table-striped">
					<tr>
						<th><input class="form-check-input" type="checkbox"></th>
						<th>#</th>
						<th>코드그룹 코드</th>
						<th>코드그룹 이름(한글)</th>
						<th>코드그룹 이름(영문)</th>
						<th>코드갯수</th>
						<th>등록익</th>
						<th>수정일</th>
					</tr>
					<tr>
						<td>
							<input class="form-check-input" type="checkbox">
						</td>
						<td>1</td>
						<td>33</td>
						<td>asdasdasd</td>
						<td></td>
						<td>0</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input class="form-check-input" type="checkbox">
						</td>
						<td>1</td>
						<td>33</td>
						<td>asdasdasd</td>
						<td></td>
						<td>0</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input class="form-check-input" type="checkbox">
						</td>
						<td>1</td>
						<td>33</td>
						<td>asdasdasd</td>
						<td></td>
						<td>0</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input class="form-check-input" type="checkbox">
						</td>
						<td>1</td>
						<td>33</td>
						<td>asdasdasd</td>
						<td></td>
						<td>0</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input class="form-check-input" type="checkbox">
						</td>
						<td>1</td>
						<td>33</td>
						<td>asdasdasd</td>
						<td></td>
						<td>0</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input class="form-check-input" type="checkbox">
						</td>
						<td>1</td>
						<td>33</td>
						<td>asdasdasd</td>
						<td></td>
						<td>0</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input class="form-check-input" type="checkbox">
						</td>
						<td>1</td>
						<td>33</td>
						<td>asdasdasd</td>
						<td></td>
						<td>0</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input class="form-check-input" type="checkbox">
						</td>
						<td>1</td>
						<td>33</td>
						<td>asdasdasd</td>
						<td></td>
						<td>0</td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<nav>
					<ul class="pagination justify-content-center">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="row">
			<div class="col-2">
				<button type="button" class="btn btn-sm btn-danger"><i class="fa-solid fa-xmark"></i></button>
				<button type="button" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i></button>
			</div>
			<div class="col-1 offset-9 text-end">
				<button type="button" class="btn btn-sm btn-success" onclick="location.href='./codeGroupForm.html'"><i class="fa-solid fa-plus"></i></button>
			</div>
		</div>
    </div>
	<footer id="footers" style="margin-top:50px"></footer>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		$(document).ready( function() {
				$("#headers").load("./navbar.jsp");
			});

		$(document).ready( function() {
			$("#footers").load("./footer.jsp");
		});

	</script>		
</body>
</html>