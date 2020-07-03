<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"  %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quản lí câu hỏi</title>
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
<body>
<div class="topnav">
 
      <a href="${pageContext.request.contextPath}/DScauhoi">Danh sach cau hoi</a>
      <a href="${pageContext.request.contextPath}/add_qs">Them cau hoi</a>
	   <a href="${pageContext.request.contextPath}/edit_qs">Sua cau hoi</a>
	   <a href="${pageContext.request.contextPath}/del_qs">Xoa cau hoi</a>
	      <a href="${pageContext.request.contextPath}/Import cau hoi">Import cau hoi</a>
	  
</div>
<br>
<br>
<br>
<center>
<h1>Trang quản lí câu hỏi</h1>
</center>
</body>
</html>