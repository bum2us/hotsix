<%@ tag language="java" pageEncoding="UTF-8" body-content="tagdependent"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="pageNo" type="java.lang.Integer" %>
<%@ attribute name="pageTotal" type="java.lang.Integer" %>

<%

int startIdx = 0;
int endIdx = 0;
int countIdx = 0;

if(pageNo < 4)
{
	startIdx = 1;
	endIdx = 6;
}
else if(pageNo >= 4)
{
	startIdx = pageNo - 2;
	endIdx = pageNo + 3;
}

if(endIdx > pageTotal)
{
	endIdx = pageTotal+1;
	startIdx = endIdx - 5;
}

for(countIdx = startIdx; countIdx < endIdx; countIdx ++)
{
	if(countIdx == pageNo){
%>
		<li class="pageList pageNumber active"><a href="/member/memberList/?pageNumber=<%=countIdx%>"><%=countIdx%></a></li>
<%
	}
	else{
%>
		<li class="pageList pageNumber"><a href="/member/memberList/?pageNumber=<%=countIdx%>"><%=countIdx%></a></li>
<%
	}
}
%>

