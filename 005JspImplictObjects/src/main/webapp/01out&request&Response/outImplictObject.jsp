<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Out Implict Object</title>
</head>
<body>
<% out.println("Hello World"); %><br>
<%= "this is a expression tag " %><br>
<%! public String sayHello(String str){return str;} %>
<%= sayHello("something")%>
</body>
</html>