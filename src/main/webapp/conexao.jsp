<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
    try{
       Class.forName("org.mysql.Driver");	
       Connection con = DriverManager.getConnection(System.getenv("MYSQL_PUBLIC_URL"));
       if(con != null){
    	 out.print("<p>Conectado</p>");
       }
    }catch(Exception ex){
    	out.print("<p>" + ex.getMessage() + "</p>");
    }
  %>
</body>
</html>