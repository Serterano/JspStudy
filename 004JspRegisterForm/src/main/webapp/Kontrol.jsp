<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kontrol</title>
</head>
<body>
<%@ page import="java.util.*" %>
<jsp:useBean id="bean" class="back.User" scope="request">
	<jsp:setProperty name="bean" property="adi"/>
	<jsp:setProperty name="bean" property="soyadi"/>
	<jsp:setProperty name="bean" property="email"/>	
	<jsp:setProperty name="bean" property="kullaniciadi"/>
	<jsp:setProperty name="bean" property="cinsiyet"/>
	<jsp:setProperty name="bean" property="parola1"/>
	<jsp:setProperty name="bean" property="parola2"/>
	<jsp:setProperty name="bean" property="postakodu"/>
	<jsp:setProperty name="bean" property="tecrubeleri"/>
	<jsp:setProperty name="bean" property="adres"/>
</jsp:useBean>

<%
	if(bean.kontrolFonksiyonu()){
%>
		<jsp:forward page="successForm.jsp"></jsp:forward>
<%
	}else{
%>
		<jsp:forward page="Form.jsp"></jsp:forward>
<%
	}
%>




</body>
</html>