<%@ page language="java" contentType="text/html; charset=utf-8" import="java.io.*"%>  
<%@ page import="com.soldierren.InitiatePrice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="pragma" content="no-cache"> 

<meta http-equiv="cache-control" content="no-cache"> 

<meta http-equiv="expires" content="0">   
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>创建所有的记录，并保存到一个文件中。</title>
</head>
<body>
<%
	InitiatePrice ip = new InitiatePrice();
	for(String jsonentry : ip.asGson){
		%>
		<p>
		<%=jsonentry %>
		<br>
		<%
		
	}
%>
</body>
</html>