<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quan li thi sinh va lop hoc </title>
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
 
 
      <a href="${pageContext.request.contextPath}/DSthisinh">Danh sách thí sinh</a>
      	   <a href="${pageContext.request.contextPath}/add_ts">Thêm thí sinh</a>
	   <a href="${pageContext.request.contextPath}/edit_ts">Sửa thí sinh</a>
	   <a href="${pageContext.request.contextPath}/del_ts">Xóa thí sinh</a>
      <a href="${pageContext.request.contextPath}/DSlop">Danh sách lớp học</a>
   
</div>
</head>
<body>
<center><h1>Trang quản lí thí sinh</h1></center>
<h2></h2>
</body>
</html>