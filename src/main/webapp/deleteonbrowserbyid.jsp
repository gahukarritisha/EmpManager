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
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","ritisha");
PreparedStatement ps=con.prepareStatement("delete  from empdata where id=?");
int id1=Integer.parseInt(request.getParameter("id"));
ps.setInt(1, id1);
ps.execute();
out.print("deleted sucessfully");
 %>
 <br><br>
 <a href="index.html">index page</a>
</body>
</html>