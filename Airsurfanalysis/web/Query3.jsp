<%-- 
    Document   : Query3
    Created on : 6 Jun, 2018, 10:12:50 AM
    Author     : SONY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Query3 JSP Page</title>
    </head>
    <body>
                <center>
            <table border="1">
            <%
                try
                {
                Class.forName("org.apache.hive.jdbc.HiveDriver");
                String url = "jdbc:hive2://192.168.177.129:10000/air";
                Connection con=DriverManager.getConnection(url,"","");
              //("jdbc:mysql://localhost:3306/bahubali1","root","rootroot");//
         Statement stmt = con.createStatement();
         String q = "select a.name from routes r join airlines a on(r.airline = a.airline) where r.codeshare='Y'";
          ResultSet rs=stmt.executeQuery(q);
   while(rs.next())
     {
       //out.println(rs.getString(1));
       //out.println(rs.getString(2));
       //out.println(rs.getString(3));
       //out.println(rs.getString(4));
       //out.println(rs.getString(5));
       //out.println(rs.getString(6));
       //out.println(rs.getString(7));
       //out.println(rs.getString(8));
      %>
      <tr><td><%=rs.getString(1)%></td>
           </tr>
      
    
      <%}
    
}
                catch(Exception e)
                {
                    out.println("Exception caught:" +e.getMessage());
                }
                
                %>
            </table>
            <a href="Overallresult.jsp">go to Overallresult</a>
  </center>
</body>
</html>
