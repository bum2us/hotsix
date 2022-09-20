<%@ tag language="java" pageEncoding="UTF-8" body-content="tagdependent"%>
<%@ tag import="java.util.ArrayList"%>
<%@ tag import="java.util.List"%>

<%@ attribute name="functionType" type="java.lang.String" %>
<%@ attribute name="op" type="java.lang.Integer" %>

<%
	List<String> options = new ArrayList<String>();
	String txt ="";	
	
	if(op == null)
		op = 0;
 
	switch(functionType)
	{
		case "shUseNy":
		{	
			txt = "사용여부";
			options.add("N");
			options.add("Y");
			break;
		}
		case "shDateOption":
		{
			txt="검색구분";
			options.add("수정일");
			options.add("등록일");
			break;
		}
		case "shOption":
		{
			txt = "검색위치";
			options.add("코드그룹");
			options.add("코드");
			options.add("코드이름");
			options.add("순서");
			break;
		}
	};
	%>
	<select name="<%=functionType%>">
	<option value="0" disabled selected><%=txt%></option>
	<%
	for(int i = 0; i < options.size(); i++)
	{
			%><option value="<%=i+1%>" <%if(i+1 == op){%>selected<%}%> ><%=options.get(i)%></option><%		
	}
%>
</select>