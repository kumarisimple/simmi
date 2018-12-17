<%-- 
    Document   : Overallresult
    Created on : 7 Jun, 2018, 8:29:58 AM
    Author     : SONY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Overall JSP Page</title>
    </head>
    <body>
        
           <center>
             <form action="Airlines.jsp" method="post">
                 <input type="submit" value="Airlines Data">
             </form>
            <form action="Airports.jsp" method="post">
              <input type="submit" value="Airports Data">
             </form>
            <form action="Routes.jsp" method="post">
              <input type="submit" value="Routes Data">
             </form>
            <form action="Query1.jsp" method="post">
              <input type="submit" value="Query1">
             </form>
            <form action="Query2.jsp" method="post">
              <input type="submit" value="Query2">
             </form>
            <form action="Query3.jsp" method="post">
              <input type="submit" value="Query3">
             </form>
            <form action="Query4.jsp" method="post">
              <input type="submit" value="Query4">
             </form>
            <form action="Query5.jsp" method="post">
              <input type="submit" value="Query5">
             </form>
           </center>
            </body>
</html>
