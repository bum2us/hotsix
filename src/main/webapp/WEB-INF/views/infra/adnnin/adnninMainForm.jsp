<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="bs" tagdir="/WEB-INF/tags/utils" %>

<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

<style type="text/css">
	div {
		/* border: solid orange 1px; */ 
	}
	
	.graphBox{
		posiotion:relative;
		width:100%;
		display:grid;
		grid-template-columns: 1fr 2fr;
		grid-gap:30px;
		min-height: 200px;
	}
	
	.graphBox .box{ 
		position:relative;
		background: #fff;
		padding:20px;
		width:100%;
		box-shadow: 0 7px 25px rgba(0,0,0,0.08);
		border-radius: 20px;
	}
</style>

</head>
<body>
	<%@include file="../common/adnnin/header.jsp" %>
	<div class="container" style="min-height:700px;">
	    <br><br>
	    <form id="mainForm">
	        <div class="row d-flex" style="justify-content:space-between; padding-left: 10px;padding-right: 10px;">
	            
	            <div class="row" style="width:250px; height:150px; border:none; border-radius:10px; box-shadow: 0 7px 25px rgba(0,0,0,0.08);">
	                <div class="col-8" style="padding-top:36px;">
	                    <div class="row"> 
	                        <span style="font-size:26pt; font-weight:bold;">72</span>
	                    </div>
	                    <div class="row">
	                        <span style="color:gray; font-size:10pt; font-weight:500; padding-left:15px;">회원수</span>   
	                    </div>
	                </div>
	                <div class="col text-center" style="padding-top:50px;">
	                    <i style="color:gray; font-size:36pt; margin-top:auto;" class="fa-solid fa-user"></i> 
	                </div>
	            </div>
	            
	            <div class="row" style="width:250px; height:150px; border:none; border-radius:10px; box-shadow: 0 7px 25px rgba(0,0,0,0.08);">
	                <div class="col-7" style="padding-top:36px;">
	                    <div class="row"> 
	                        <span style="font-size:26pt; font-weight:bold;">10</span>
	                    </div>
	                    <div class="row">
	                        <span style="color:gray; font-size:10pt; font-weight:500; padding-left:15px;">신규 회원 수</span>   
	                    </div>
	                </div> 
	                <div class="col text-center" style="padding-top:50px;">
	                    <i style="color:gray; font-size:36pt; margin-top:auto;" class="fa-solid fa-user-plus"></i> 
	                </div>
	            </div>
	            
	            <div class="row" style="width:250px; height:150px; border:none; border-radius:10px; box-shadow: 0 7px 25px rgba(0,0,0,0.08);">
	                <div class="col-7" style="padding-top:36px;">
	                    <div class="row"> 
	                        <span style="font-size:26pt; font-weight:bold;">204</span> 
	                    </div>
	                    <div class="row">
	                        <span style="color:gray; font-size:10pt; font-weight:500; padding-left:15px;">게시물 수</span>   
	                    </div>
	                </div>
	                <div class="col text-center" style="padding-top:50px;">
	                    <i style="color:gray; font-size:36pt; margin-top:auto;" class="fa-regular fa-pen-to-square"></i>
	                </div>
	            </div>
	            
	            <div class="row" style="width:250px; height:150px; border:none; border-radius:10px; box-shadow: 0 7px 25px rgba(0,0,0,0.08);">
	                <div class="col-7" style="padding-top:36px;">
	                    <div class="row"> 
	                        <span style="font-size:26pt; font-weight:bold;">데이터없음</span>
	                    </div>
	                    <div class="row">
	                        <span style="color:gray; font-size:10pt; font-weight:500; padding-left:15px;">-</span>   
	                    </div>
	                </div>
	                <div class="col text-center" style="padding-top:50px;">
	                    <i style="color:gray; font-size:36pt; margin-top:auto;" class="fa-solid fa-hippo"></i> 
	                </div> 
	            </div>
	             
	        </div>
	        <div class="row mt-4">
	        	<div class="graphBox" style="padding-left: 0px; padding-right: 0px;">
	        		<div class="box">
	        			<canvas id="myChart"></canvas> 
	        		</div>
	        		<div class="box">	        			
	        			<canvas id="myChart2"></canvas> 
	        		</div>
	        	</div>
	        </div>
	    </form>
	</div>
    
    <%-- footer --%>
    <%@include file="../common/adnnin/footer.jsp" %>
    
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script>
	  $( function() {
	    $( "#startDate" ).datepicker({
	    	changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
	    	changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
	    	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
	    	yearRange: "1900:2023",
	    	dateFormat: "yy-mm-dd"
	    });
	  } ); 
	  $( function() {
	    $( "#endDate" ).datepicker({
	    	changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
	    	changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
	    	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
	    	yearRange: "1900:2023",
	    	dateFormat: "yy-mm-dd"
	    });
	  } );
	  
	  
	  const ctx = document.getElementById('myChart');

	  new Chart(ctx, {
	    type: 'doughnut',
	    data: {
	      labels: ['남','여'],
	      datasets: [
	    	  {
	    	      label: 'data',
	    	      data: [45,77],
	    	      backgroundColor:[ 
	    	    	  '#9BD0F5',
	    	    	  '#FFB1C1'
	    	    	  ]
	    	    }
    	  ]
	    },
	    options: {
	      scales: {
	        y: {
	          beginAtZero: true
	        }
	      }
	    }
	  });
	  
	  const ctx2 = document.getElementById('myChart2');

	  new Chart(ctx2, {
	    type: 'line',
	    data: {
	      labels: ['1월', '2월', '3월', '4월', '5월', '6월'],
	      datasets: [
	    	  {
	    	      label: '남',
	    	      data: [12, 22, 33, 22, 21, 56],
	    	      borderColor: '#36A2EB',
	    	      backgroundColor: '#9BD0F5',
	    	    },
	    	    { 
	    	      label: '여',
	    	      data: [43, 31, 14, 23, 7, 34],
	    	      borderColor: '#FF6384',
	    	      backgroundColor: '#FFB1C1',
	    	    }
    	  ]
	    },
	    options: {
	      scales: {
	        y: {
	          beginAtZero: true
	        }
	      }
	    }
	  });
	  
	  var form = $("#mainForm");
	  
	  runForm = function(key,no) {
		  
		  switch(key)
		  {
		  	case "src":
		  	{
		  		form.attr("action", "/member/memberList" ).submit();
		  		break;	
		  	}
		  	case "form":
		  	{
		  		var seq = $("#formNumber");
		  		seq.attr("value",no);
		  		form.attr("action", "/member/memberForm" ).submit();
		  		break;
		  	}
		  	case "page":
	  		{
		  		var pageno = $("#pageNumber");
		  		pageno.attr("value",no);
		  		form.attr("action", "/member/memberList").submit();
		  		break;
	  		}
		  	case "add":
	  		{
		  		form.attr("action","/member/memberForm").submit();
		  		break;
	  		}
		  }
		  
		  
	  }
	  
	  uelitem = function() {
		  
		  var txt = "";
		  var checkbox = $("input[name=listCheckbox]:checked");
		  
		  checkbox.each(function(i) {
			  
			  var addtag ="";
			  
			  var tr = checkbox.parent().parent().eq(i);
			  var td = tr.children();
			  
			  txt += td.eq(1).text() + "  ";
			  
			  addtag = '<input type="hidden" name="seqVoList['+i+'].shSeq" value="'+ td.eq(1).text() +'">' 
			  
			  $("#searchForm").after(addtag);
			  
		  });
		  //alert(txt);
		  
		  form.attr("action", "/member/memberUelete" ).submit();
	  }
	  
	</script>		
</body>
</html>