<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String str = request.getParameter("uname");
	if(str.startsWith("a") || str.startsWith("A")){
		response.sendRedirect("index.jsp");
	}else{
		response.sendRedirect("success.jsp");
	}


%>
</body>
</html>