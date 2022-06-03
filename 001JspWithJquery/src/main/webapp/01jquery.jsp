<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert itlehere</title>
  <meta charset="utf-8">
  <title>show demo</title>
  <style>
  p {
    background: yellow;
  }
  </style>
  <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
  <%//https://api.jquery.com/show/ %>
</head>
<body>
 
<button>Show it</button>
<p style="display: none">Hello  2</p>
 
<script>
$( "button" ).click(function() {
  $( "p" ).show( "slow" );
});
</script>
 
</body>
</html>