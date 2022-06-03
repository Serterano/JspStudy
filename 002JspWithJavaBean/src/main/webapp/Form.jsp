<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.lang.String" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
</head>
<body>
<h1>JavaBeans Ve Form İşlemi</h1>

<form name="bilgiformu" method="post"action="FormuAlan.jsp">
<table border="1" width="41%" cellspacing="1" 
cellpadding="0" id="bilgitablosu">

<%
String hatalar =(String)request.getAttribute("hatalar");
if(hatalar !=null && hatalar.trim().length()>0){
	out.println("<tr><td colspan='2'>"+
	"<h3><font face=verdana color=red>"+hatalar+"</font></h3></td></tr>");
}

%>

<tr>
<td width="33%">Adı</td>
<td width="67%">
<input type="text" name="name" size="30" id="name" 
value=
"<%= request.getParameter("name")!=null?request.getParameter("name"):""%>">
</td>
</tr>

<tr>
<td>Yaş</td>
<td><input type="text" name="age" size="30" id="age"></td>
</tr>

<tr>
<td>Id</td>
<td><input type="text" name="id" size="30" id="id"></td>
</tr>

</table>
<p><input type="submit" value="Gönder" name="GönderDüğmesi">
<input type="reset" value="Reset" name="ResetDüğmesi"></p>


</form>


</body>
</html>