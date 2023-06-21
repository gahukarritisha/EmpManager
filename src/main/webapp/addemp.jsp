
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String id=request.getParameter("id");
String age=request.getParameter("age");
String dept=request.getParameter("dept");
String name=request.getParameter("name");

int id1=Integer.parseInt(id);
int age1=Integer.parseInt(age);

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","ritisha");
PreparedStatement ps1=con.prepareStatement("insert into empdata(id,age,dept,name) values(?,?,?,?)");
ps1.setInt(1, id1);
ps1.setInt(2,age1);
ps1.setString(3,dept);
ps1.setString(4,name);

ps1.execute();
//out.println("data saved sucessfully");
%>
<br><br>
<h3 style="color:red" align="center">DATA SAVE SUCESSFULLY</h3>
 <a href="index.html">index page</a>
</body>
</html>
</body>
</html>