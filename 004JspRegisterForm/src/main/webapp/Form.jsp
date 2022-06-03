<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Form</title>
</head>
<body>
	<form action="Kontrol.jsp" method="post">
		<table>
		<th bgcolor="CCCCFF" colspan="2">
			<font size=5>Register Form</font>
			<font size=2 color="red"><sup>*</sup>Yıldızlı olanlar boş geçilemez.</font>
		</th>
		<tr bgcolor="CCFF66">
			<td valign=top>
				<b>Adı<font size=2 color="red"><sup>*</sup></font></b></br>
				<input type="text" name="adi" value="" size=30 maxlength=30>
			</td>
			<td valign=top>
				<b>Soyadı<font size=2 color="red"><sup>*</sup></font></b></br>
				<input type="text" name="soyadi" value="" size=30 maxlength=30>
			</td>
		</tr>
		<tr bgcolor="CCFF66">
			<td valign=top>
				<b>E-Mail<font size=2 color="red"><sup>*</sup></font></b></br>
				<input type="text" name="email" value="" size=30 maxlength=100>
			</td>
			<td valign=top>
				<b>Posta Kodu<font size=2 color="red"><sup>*</sup></font></b></br>
				<input type="text" name="postakodu" value="" size=30 maxlength=10>
			</td>
		</tr>
		<tr bgcolor="CCFF66">
			<td valign=top>
				<b>Kullanıcı Adı<font size=2 color="red"><sup>*</sup></font></b></br>
				<input type="text" name="kullaniciadi" value="" size=30 maxlength=30>
			</td>
			<td valign=top>
				<b>Cinsiyetiniz</b></br>
				<input type="radio" name="cinsiyet" value="Erkek">Erkek
				<input type="radio" name="cinsiyet" value="Kadın">Kadın
				<input type="radio" name="cinsiyet" value="Belirtilmedi" checked>Belirtilmedi
			</td>
		</tr>
		<tr bgcolor="CCFF66">
			<td valign=top>
				<b>Parola<font size=2 color="red"><sup>*</sup></font></b></br>
				<input type="password" name="parola1" value="" size=30 maxlength=30>
			</td>
			<td valign=top>
				<b>Parola Doğrulama<font size=2 color="red"><sup>*</sup></font></b></br>
				<input type="password" name="parola2" value="" size=30 maxlength=30>
			</td>
		</tr>
		<tr bgcolor="CCFF66">
			<td valign=top colspan=2>
				<b>Adres<font size=2 color="red"><sup>*</sup></font></b></br>
				<input type="text" name="adres" value="" size=65 maxlength=65>
			</td>
		</tr>
		<tr bgcolor="CCFF66">
			<td valign=top colspan=2>
				<b>Tecrube<font size=2 color="red"><sup>*</sup></font></b></br>
				<input type="checkbox" name="tecrubeleri" value="Java">
				<font size=2 color="red"><strong>Java SE</strong></font>
				<input type="checkbox" name="tecrubeleri" value="JSP">
				<font size=2 color="red"><strong>JSP - Servlets</strong></font>
				<input type="checkbox" name="tecrubeleri" value="JSF">
				<font size=2 color="red"><strong>JSF</strong></font>
			
			</td>
		</tr>
		<tr bgcolor="CCCCFF">
			<td align=right colspan=2>
				<input type="reset" value="Reset">
				<input type="submit" value="Submit">
			</td>
		</tr>
		</table>
	</form>

</body>
</html>