<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
    <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<title>Quan li Cau hoi</title>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<div class="topnav">
 
      <a href="${pageContext.request.contextPath}/DScauhoi">Danh sach cau hoi</a>
      <a href="${pageContext.request.contextPath}/add_qs">Them cau hoi</a>
	   <a href="${pageContext.request.contextPath}/edit_qs">Sua cau hoi</a>
	   <a href="${pageContext.request.contextPath}/del_qs">Xoa cau hoi</a>
	      <a href="${pageContext.request.contextPath}/Import cau hoi">Import cau hoi</a>

   
</div>
</head>
<body>
   <br>
	<br>
	<br>
	<center><h1>Danh sách câu hỏi</h1></center>
	<table border="1">
	<tr>
	<th >Question</th>
	<th >A</th>
	<th >B</th>
	<th >C</th>
	<th >D</th>
	<th >Result</th>
	<th >Type</th>
	
	</tr>
		<c:forEach items = "${l_cauhoi}" var="cauhoi">
				<tr>
				
				<td>${cauhoi.questName }</td>
				<td>${cauhoi.a}</td>
				<td>${cauhoi.b}</td>
				<td>${cauhoi.c}</td>
				<td>${cauhoi.d}</td>
				<td>${cauhoi.result}</td>
				<td>${cauhoi.type}</td>
				

		
				</tr>
		</c:forEach>
		
	</table>

   <br>
<h2></h2>
</body>
</html>