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
	<style>
        div {
            /* border: 1px solid orange; */
        }

    </style>
</head>
<body>            
    <form method="post" action="/register/Result" >
        <div class="container-md" >
            <div class="row  justify-content-md-center">                
                <div class="col col-lg-4">
                    <div class="row my-3">
                        <div class="col text-center">
                            <br><br>
                            <span style="font-weight: bold; font-size: 20pt;">회원가입</span>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <input type="text" class="form-control" id="rgName" placeholder="이름" name="rgName">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <input type="text" class="form-control " id="rgId" placeholder="아이디" name="rgId">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <input type="password" class="form-control " id="rgPassword" placeholder="비밀번호" name="rgPassword">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <input type="password" class="form-control " id="reg_PwRe" placeholder="비밀번호 확인">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <input type="text" class="form-control " id="rgEmail" placeholder="이메일" name="rgEmail">
                        </div>
                    </div>
                    <div class="row mb-2 gx-1">
                        <div class="col-2">
                            <input type="text" class="form-control " id="reg_number_start" value="010">
                        </div>
                        <div class="col-4">
                            <input type="text" class="form-control " id="reg_number_middle" name="rgPhone1">
                        </div>
                        <div class="col-4">
                            <input type="text" class="form-control " id="reg_number_end" name="rgPhone2">
                        </div>
                        <div class="col-2 text-end">
                            <button type="button" class="btn btn-dark"><span style="font-size: 10pt;">인증</span></button>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-5 pr-0">
                            <div class="input-group">
                                <span class="input-group-text">성별</span>
                                <select class="form-select" id="rgGender" name="rgGender">
                                    <option value="1">남</option>
                                    <option value="2">여</option>
                                    <option value="3">기타</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-7">
                            <div class="input-group">
                                <span class="input-group-text">생년월일</span>
                                <input type="date" class="form-control " id="rgDob" placeholder="생년월일" name="rgDob">
                            </div>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <div class="input-group input-group-sm">
                                <div class="input-group-text">
                                    <input class="form-check-input" type="checkbox">
                                </div>                              
                                <input type="text" class="form-control" value="소식을 이메일로 받아봅니다.">
                            </div>                            
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <div class="input-group input-group-sm">
                                <div class="input-group-text">
                                    <input class="form-check-input" type="checkbox">
                                </div>                              
                                <input type="text" class="form-control" value="제공하는 서비스 약관에 동의합니다.">
                            </div>                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <button type="submit" class="btn btn-dark btn-lg" style="width: 100%;">가입하기</button>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col">
                            <span style="font-size:x-small;">다른 서비스 계정으로 가입</span>
                        </div>
                    </div>
                    <hr class="mt-0">
                    <div class="row text-center mb-1">
                        <div class="col">
                            <button type="button" class="btn p-0" style="width: 100%;">
                                <img src="../images/네이버.png" alt="" style="display: block; width: 100%; height: auto;">
                            </button>
                        </div>
                    </div>
                    <div class="row text-center mb-1">
                        <div class="col">
                            <button type="button" class="btn p-0" style="width: 100%;">
                                <img src="../images/구글.png" alt="" style="display: block; width: 100%; height: auto;">
                            </button>
                        </div>
                    </div>
                    <div class="row text-center mb-1">
                        <div class="col">
                            <button type="button" class="btn p-0" style="width: 100%;">
                                <img src="../images/카카오.png" alt="" style="display: block; width: 100%; height: auto;">
                            </button>
                        </div>
                    </div>
                    <hr>
                    <div class="row gx-1 text-center">
                        <div class="col">
                            <a href="./loginForm.html" style="font-size:x-small; text-decoration-line: none; text-decoration-color: black; color: black; ">이미 가입하셨다면? 로그인</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>		
</body>
</html>
