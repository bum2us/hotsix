<%@ tag language="java" pageEncoding="UTF-8" body-content="tagdependent"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="myKey" type="java.lang.Integer" %>


<%
	String text = null;
	
	if(myKey == null){
		text = "<option value='0' disabled selected>사용여부</option>";
		text+= "<option value='1'>N</option>";
		text+= "<option value='2'>Y</option>";
	}
	else if(myKey == 1) {
		text = "<option value='0' disabled >사용여부</option>";
		text+= "<option value='1' selected>N</option>";
		text+= "<option value='2'>Y</option>";
	}
	else if(myKey == 2){
		text = "<option value='0' disabled >사용여부</option>";
		text+= "<option value='1'>N</option>";
		text+= "<option value='2' selected>Y</option>";
	}
%>

<%= text %>