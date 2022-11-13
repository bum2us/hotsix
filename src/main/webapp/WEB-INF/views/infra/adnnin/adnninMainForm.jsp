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
</head>
<body>
	<%@include file="../common/adnnin/header.jsp" %>
	<div class="container" style="min-height:700px;">
        <br><br>
		<div class="row justify-content-center">
			<div class="col text-center">
				<span class="page_title">메인 페이지 대시보드 공사중..  </span><br><br><br><br>
			</div>
		</div>
		<form id="mainForm">
		<div class="text-center">
			<!-- <span class="page_title">ᘏ▸◂ᘏ</span><br>
			<span class="page_title">꒰ ɞ̴̶̷ ·̮ ɞ̴̶̷ ꒱</span><br> 
			<span class="page_title">/>🥩c\ ♡ </span><br> <br> <br> <br>  -->
			
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