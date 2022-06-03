<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="BackEnd.Person"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formu Alan Form</title>
</head>
<body>

	<jsp:useBean id="bean" class="BackEnd.Person" />
	<jsp:setProperty name="bean" property="nickname" />
	<jsp:setProperty  name="bean" property="password" />

	<%
	Person denetlemeNesnesi = (Person) pageContext.getAttribute("bean");
	
	denetlemeNesnesi.Verify(request);

	String hatalar = (String) request.getAttribute("verifyErrors");
	if (hatalar != null && hatalar.trim().length() > 0) {
	%>
	<jsp:forward page="Form.jsp"></jsp:forward>
	<%
	}else{
	%>
	<table border="1" width="41%" cellspacing="1" cellpadding="0">
		<tr>
			<td> Success </td>
		</tr>
		<tr>
			<td width="33%">nickname</td>
			<td width="67%"><%=bean.getNickname()%></td>
		</tr>
			<td>password</td>
			<td><%=bean.getPassword()%></td>
		

	</table>
	<br>
	<a href="Form.jsp">Form Page</a>
	<%} %>
</body>
</html>