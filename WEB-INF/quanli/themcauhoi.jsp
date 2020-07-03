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
 
 
      <a href="${pageContext.request.contextPath}/DScauhoi">Danh sach cau hoi</a>
      <a href="${pageContext.request.contextPath}/add_qs">Them cau hoi</a>
	   <a href="${pageContext.request.contextPath}/edit_qs">Sua cau hoi</a>
	   <a href="${pageContext.request.contextPath}/del_qs">Xoa cau hoi</a>
	      <a href="${pageContext.request.contextPath}/Import cau hoi">Import cau hoi</a>
</div>
<br>
	<br>
	<br>
	<center><h1>Danh sách câu hỏi</h1></center>
	<form method="POST" action="${pageContext.request.contextPath}/add_qs">

    <div class="container">
      <label><b>idQuestion</b></label>
      <input type="text" placeholder="Enter id Question" name="idQuestions" value= "${idQuestions}" required>
            <label><b>Question</b></label>
      <input type="text" placeholder="Enter Question" name="questName" value= "${questName}" required>
            <label><b>A</b></label>
      <input type="text" placeholder="Enter Answer A" name="a" value= "${a}" required>
            <label><b>B</b></label>
      <input type="text" placeholder="Enter Answer B" name="b" value= "${b}" required>
            <label><b>C</b></label>
      <input type="text" placeholder="Enter Answer C" name="c" value= "${c}" required>
            <label><b>D</b></label>
      <input type="text" placeholder="Enter Answer D" name="d" value= "${d}" required>
            <label><b>Result</b></label>
      <input type="text" placeholder="Enter Result" name="result" value= "${result}" required>
            <label><b>Type</b></label>
      <input type="text" placeholder="Enter Type" name="type" value= "${type}" required>
            <label><b>ID class</b></label>
      <input type="text" placeholder="Enter ID Class" name="idClass" value= "${idClass}" required>
      <button type="submit">Add</button>
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
	
 	
     </center>
      

    </div>
    </form>
</body>
</html>