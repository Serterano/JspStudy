<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.lang.String" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
</head>
<script type="text/javascript"></script>
<body>
<h1>JavaBeans Ve Form İşlemi</h1>

<form name="bilgiformu" method="post"action="FormuAlan.jsp">
<table border="1" width="41%" cellspacing="1" 
cellpadding="0" id="bilgitablosu">

<%
// şifre boş bırakıldığında 500 hata kodunu fırlatıyor onun dışında çalışıyor.
String hatalar =(String)request.getAttribute("verifyErrors");
if(hatalar !=null && hatalar.trim().length()>0){
	out.println("<tr><td colspan='2'>"+
	"<h3><font face=verdana color=red>"+hatalar+"</font></h3></td></tr>");
}

%>

<tr>
<td width="33%">nickname</td>
<td width="67%">
<input type="text" name="nickname" size="30" id="nickname" 
value=
"<%= request.getParameter("nickname")!=null?request.getParameter("nickname"):""%>">
</td>
</tr>

<tr>
<td>password</td>
<td><input type="text" name="password" size="30" id="password" 
value=
"<%= request.getParameter("password")!=null?request.getParameter("password"):""%>"></td>
</tr>

</table>
<p><input type="submit" value="Gönder" name="GönderDüğmesi">
<input type="reset" value="Reset" name="ResetDüğmesi"></p>


</form>


</body>
</html>