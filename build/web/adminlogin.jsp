<%-- 
    Document   : adminlogin
    Created on : 16 Oct, 2023, 7:00:07 PM
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Page</title>
    </head>
    <body>
         <%
         String un=request.getParameter("n1");
         String ps=request.getParameter("n2");
         if((un.equals("admin"))&&(ps.equals("admin123")))
         {
         response.sendRedirect("adminpanal.html");
         }
         else
         {
         response.sendRedirect("adminlogin.html");
         }
        %>
    </body>
</html>
