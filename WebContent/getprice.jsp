<%@ page language="java" import="com.soldierren.StockPrice" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 
<% 
 response.setHeader("Pragma","No-cache");
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Expires","0"); 
 %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>nothing</title>
</head>
<body>
<%="欢乐迎接"%>
<%=new Date() %>
<p>
<%
	StockPrice sp = new StockPrice();
%>

</body>
</html>