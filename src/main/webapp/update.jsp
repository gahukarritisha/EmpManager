<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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

PreparedStatement ps=con.prepareStatement("update empdata set  age=?, dept=?,name=? where id=?");
ps.setInt(1, age1);
ps.setString(2, dept);
ps.setString(3, name);
ps.setInt(4, id1);
ps.execute();

request.getRequestDispatcher("Displayonbrowseremp1.jsp").forward(request, response);
 %>
</body>
</html>