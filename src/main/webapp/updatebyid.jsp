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
int id1=Integer.parseInt(id);


Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","ritisha");

PreparedStatement ps=con.prepareStatement("select * from empdata where id=?");

ps.setInt(1, id1);

ResultSet rs=ps.executeQuery();
rs.next();
 %>
 <form action="update.jsp">
 id:<input type="number" name="id" value="<%=rs.getInt(1) %>" readonly="readonly"><br><br>
age:<input type="number" name="age" value="<%=rs.getInt(2) %>"><br><br>
dept:<input type="text" name="dept" value="<%=rs.getString(3) %>"><br><br>
name:<input type="text" name="name" value="<%=rs.getString(4) %>"><br><br>
 <input type="submit">
 
 
 </form>
</body>
</html>