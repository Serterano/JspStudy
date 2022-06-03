<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<jsp:useBean id="jb" type="com.erano.me.Person"
    class="com.erano.me.Person" scope="session"/>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1><%= jb.getName()%></h1>
<h1><%=jb.getAge() %></h1>
<h1><%= jb.getId() %></h1>

</body>
</html>