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
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","ritisha");
PreparedStatement ps=con.prepareStatement("select * from empdata where id=?");
int id1=Integer.parseInt(request.getParameter("id"));
ps.setInt(1, id1);

ResultSet rs=ps.executeQuery();

 %>
  <% if(rs.next()){%>
 <table  align="center"    cellpadding="20px" cellspaccing="0px" border="bolder">
  <th>id</th>
  <th>age</th>
  <th>dept</th>
  <th>name</th>
  
  
  
  <tr>
  <td><%=rs.getInt(1)%></td>
  <td><%=rs.getInt(2)%></td>
  <td><%=rs.getString(3)%></td>
  <td><%=rs.getString(4)%></td>
 
  </tr>
  <%}
  else
  {
	  out.print("not found");
  }%>
  <br><br>
   <a href="index.html">index page</a>
</body>
</html>