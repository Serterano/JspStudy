<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.erano.me.Person"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formu Alan Form</title>
</head>
<body>
<%-- <jsp:useBean id="jb" type="com.erano.me.Person"
class="com.erano.me.Person" scope="session"/>
<jsp:setProperty name="jb" property="*"/> --%>

<%//aşağıda ki bean isim ve parola sorgulamalarında kullan %>
<jsp:useBean id="bean"
class="com.erano.me.Person"/>
<jsp:setProperty  name="bean" property="name"/>

<%
Person denetlemeNesnesi = (Person)pageContext.getAttribute("bean");

denetlemeNesnesi.nickVerify(request);

String hatalar = (String)request.getAttribute("hatalar");
if(hatalar!=null && hatalar.trim().length()>0){
%>
<jsp:forward page="Form.jsp"></jsp:forward>
<%} else{%>

	<h1>JavaBeans Formunu Alan Form</h1>
	<a href="FormuGöster.jsp">JavaBeans Formunu Göster...</a>
	<%} %>
</body>
</html>