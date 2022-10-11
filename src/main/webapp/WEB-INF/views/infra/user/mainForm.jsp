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
<body style="background: #000">
	<%@include file="./postForm.jsp" %>
	<%@include file="../common/user/header.jsp" %>
	<div class="grid-wrapper">
		
		<%-- 
		<c:forEach items="${list}" var="list" varStatus="status">
			<div>
				<a href="">
					<img alt="" src="${list.upPath}${list.upUuidName}">
				</a>
			</div>
		</c:forEach>
		 --%>
		 
		<div>
			<a href="javascript:openPost(${list[0].postSeq})"><img src="${list[0].upPath}${list[0].upUuidName}" alt=""></a>
		</div>
		<div>
			<a href="javascript:openPost('${list[1].postSeq}')"><img src="${list[1].upPath}${list[1].upUuidName}" alt=""></a>
		</div>
		<div>
			<a href="javascript:openPost('${list[2].postSeq}')"><img src="${list[2].upPath}${list[2].upUuidName}" alt=""></a>
		</div>
		<div class="wide">
			<a href="javascript:openPost('${list[3].postSeq}')"><img src="${list[3].upPath}${list[3].upUuidName}" alt=""></a>
		</div>
		<div class="big">
			<a href="javascript:openPost('${list[4].postSeq}')"><img src="${list[4].upPath}${list[4].upUuidName}" alt=""></a>
		</div>
		<div>
			<a href="javascript:openPost('${list[5].postSeq}')"><img src="${list[5].upPath}${list[5].upUuidName}" alt=""></a>
		</div>
		<div>
			<a href="javascript:openPost('${list[6].postSeq}')"><img src="${list[6].upPath}${list[6].upUuidName}" alt=""></a>
		</div>
		<div class="tall">
			<a href="javascript:openPost('${list[7].postSeq}')"><img src="${list[7].upPath}${list[7].upUuidName}" alt=""></a>
		</div>
		<div>
			<a href="javascript:openPost('${list[8].postSeq}')"><img src="${list[8].upPath}${list[8].upUuidName}" alt=""></a>
		</div>
		<div class="big">
			<a href="javascript:openPost('${list[9].postSeq}')"><img src="${list[9].upPath}${list[9].upUuidName}" alt=""></a>
		</div>
		<div>
			<a href="javascript:openPost('${list[10].postSeq}')"><img src="${list[10].upPath}${list[10].upUuidName}" alt=""></a>
		</div>
		<div class="wide">
			<a href="javascript:openPost('${list[11].postSeq}')"><img src="${list[11].upPath}${list[11].upUuidName}" alt=""></a>
		</div>
		<div>
			<a href="javascript:openPost('${list[12].postSeq}')"><img src="${list[12].upPath}${list[12].upUuidName}" alt=""></a>
		</div>
		<div>
			<a href="javascript:openPost('${list[13].postSeq}')"><img src="${list[13].upPath}${list[13].upUuidName}" alt=""></a>
		</div>
		<div class="big">
			<a href="javascript:openPost('${list[14].postSeq}')"><img src="${list[14].upPath}${list[14].upUuidName}" alt=""></a>
		</div>
		<div class="tall">
			<a href="javascript:openPost('${list[15].postSeq}')"><img src="${list[15].upPath}${list[15].upUuidName}" alt=""></a>
		</div>
		<div>
			<a href="javascript:openPost('${list[16].postSeq}')"><img src="${list[16].upPath}${list[16].upUuidName}" alt=""></a>
		</div>
		<div>
			<a href="javascript:openPost('${list[17].postSeq}')"><img src="${list[17].upPath}${list[17].upUuidName}" alt=""></a>
		</div>
		<div class="big">
			<a href="javascript:openPost('${list[18].postSeq}')"><img src="${list[18].upPath}${list[18].upUuidName}" alt=""></a>
		</div>
		<div  class="tall">
			<a href="javascript:openPost('${list[19].postSeq}')"><img src="${list[19].upPath}${list[19].upUuidName}" alt=""></a>
		</div>
		<div>
			<a href="javascript:openPost('${list[20].postSeq}')"><img src="${list[20].upPath}${list[20].upUuidName}" alt=""></a>
		</div>
		<div class="wide">
			<a href="javascript:openPost('${list[21].postSeq}')"><img src="${list[21].upPath}${list[21].upUuidName}" alt=""></a>
		</div>
		<div>
			<a href="javascript:openPost('${list[22].postSeq}')"><img src="${list[22].upPath}${list[22].upUuidName}" alt=""></a>
		</div>
		<div>
			<a href="javascript:openPost('${list[23].postSeq}')"><img src="${list[23].upPath}${list[23].upUuidName}" alt=""></a>
		</div>
 	</div>
	<%@include file="../common/user/footer.jsp" %>

	<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>	
	<script type="text/javascript">
	
	sizeAlgorithm = function() {
		
		var img_width = $("#postImg")[0].width;
		var img_height = $("#postImg")[0].height;
		
		var gap_width = 0;
		var gap_height = 0;
		
		var frame_width = 910;
		var frame_height = 700;
		var sizePercent = 0;
		
		if(img_width > frame_width){
			gap_width = img_width - frame_width;
		}
		if(img_height > frame_height){
			gap_height = img_height - frame_height
		}
		
		if(gap_width == 0 && gap_height == 0){
			return false;
		}		
		else if(gap_width > gap_height){
			sizePercent = -(frame_width - img_width) / img_width;
			img_width = frame_width;
			img_height = img_height * sizePercent;
		}
		else{
			sizePercent = -(frame_height - img_height) / img_height;
			img_height = frame_height;
			img_width = img_width * sizePercent;	
		}
		
		$("#postImg").attr("width",img_width);
		$("#postImg").attr("heigth",img_height);
		
	};
	
	openPost = function(postSeq) {
		

		var luv = $("#luv");
		
		$.ajax({
			url: "/getPost",
			type: "POST",
			dataType: "json",
			data: {
				postSeq : postSeq
			},
			success:function(result){
				if(result.rt == "success"){
					$("#postImg").attr("src",result.imgSrc);
					$("#postWriter").html(result.nickname);
					$("#postContentWriter").html(result.nickname);
					$("#postContent").html(result.content);
					$("#cmPostId").attr("value",postSeq);
					$("#cmContent").val('');
					
					
					if(result.img != null){
						$("#postWriterImg").attr("src",result.img);
					}
					
					var comment = "";
					for (var i = 0; i < result.list.length; i++) {
						
						var imgsrcTxt = "";
						 
						if(result.list[i].upmPath != null)
							imgsrcTxt = result.list[i].upmPath + result.list[i].upmUuidName;
						else
							imgsrcTxt = "/resources/images/profile/empty.png";
						
						comment += '<ul><li><div class="row commentBlock"><div class="col-3 comment_header"><img src=';
						comment += '"'+imgsrcTxt+'">';
						comment += '</div><div class="col comment_body"><div class="comment_content"><span><span class="comment_userName">';
						comment += result.list[i].mmNickname+ '   </span>';
						comment += result.list[i].cmContent + '</span></div><div class="comment_info"><span>';
						comment += result.list[i].cmCreateDate + '</span><button type="button">';
						comment += '좋아요 5개</button><button type="button">';
						comment += '답글 달기</button></div></div><div class="col-1 comment_like"><i class="fa-regular fa-heart"></i></div></div></li></ul>';
						
					}
					
					if(result.luved === "true"){
						luv.removeClass("fa-regular fa-heart");
						luv.addClass("fa-solid fa-heart");
						luv.css('color','red');
					}else {
						luv.removeClass("fa-solid fa-heart");
						luv.addClass("fa-regular fa-heart");
						luv.css('color','black');
					}

					$("#post_likeCount").html(result.luvCount);
					$("#comment_List").html(comment);
					$(".modal_overlay").show();
				}
				else{
					alert("게시글이 존재하지 않습니다.")
					return false;
				}
			},
			error:function(){
				alert("error...!!");
				return false;
			}
		});
		
		
		
		
	};
	
	closePost = function() { 
		
		$(".modal_overlay").hide();
	};
		
	</script>	
</body>
</html>
