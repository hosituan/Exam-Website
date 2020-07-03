<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
    <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<title>Them thi sinh</title>
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
<%
    request.setCharacterEncoding("UTF-8");
 %>

<div class="topnav">
 
 
      <a href="${pageContext.request.contextPath}/DSthisinh">Danh sách thí sinh</a>
      	   <a href="${pageContext.request.contextPath}/add_ts">Thêm thí sinh</a>
	   <a href="${pageContext.request.contextPath}/edit_ts">Sửa thí sinh</a>
	   <a href="${pageContext.request.contextPath}/del_ts">Xóa thí sinh</a>
      <a href="${pageContext.request.contextPath}/DSlop">Danh sách lớp học</a>
   
</div>
<br>
<br>
   <br>
   <center><h1>Thêm thí sinh</h1></center>

	<center><table border="1">
	<tr>
	<th style="width: 150px; ">UserName</th>
	<th style="width: 296px; ">Full name</th>
		<th style="width: 296px; ">Score</th>
	</tr>
		<c:forEach items = "${l_thisinh}" var="thisinh">
				<tr>
				<td><center>${thisinh.username}</center></td>
				<td><center>${thisinh.fullname}</center></td>
								<td><center>0</center></td>	
				</tr>
		</c:forEach>
		
	</table>
	
 	<form method="POST" action="${pageContext.request.contextPath}/add_ts">

    <div class="container">
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="username" value= "${username}" required>

      	<label><b>Password</b></label>
      	<input type="password" placeholder="Enter Password" name="password" value= "${password}" required>
                 	<label><b>Full name</b></label>
      	<input type="text" placeholder="Enter Full name" name="fullname" value= "${fullname}" required>
      <button type="submit">Add</button>
     </center>
      

    </div>
    </form>
</body>
</html>