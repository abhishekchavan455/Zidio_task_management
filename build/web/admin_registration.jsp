<%-- 
    Document   : userlogin
    Created on : 18 Oct, 2023, 6:15:22 PM
    Author     : abhis
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
         String fname=request.getParameter("n1");
         String lname=request.getParameter("n2");
         String dob=request.getParameter("n3");
         String address=request.getParameter("n4");
         String caddress=request.getParameter("n5");
         String deptno=request.getParameter("n6");
         int dno=Integer.parseInt(deptno);
         String branch=request.getParameter("n7");
         String mobile=request.getParameter("n8");
         int mob=Integer.parseInt(mobile);        
         String email=request.getParameter("n9");
         String gender=request.getParameter("n10");
         String username=request.getParameter("n11");
         String password=request.getParameter("n12");
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
         Statement stmt=con.createStatement();
         int result=stmt.executeUpdate("insert into bookstoreuser1 values(userid.nextval,'"+fname+"','"+lname+"','"+dob+"','"+address+"','"+caddress+"',"+deptno+",'"+branch+"',"+mob+",'"+email+"','"+gender+"','"+username+"','"+password+"')");
         if(result>0)
         {
         out.println("one record inserted");
         }
        %>
    </body>
</html>
