<%-- 
    Document   : Airports
    Created on : 6 Jun, 2018, 8:31:49 AM
    Author     : SONY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Airports JSP Page</title>
    </head>
    <body>
        <center>
            <table border="1">
                <tr>                  
                    <th>Airport_id</th>
                    <th>Name</th>
                    <th>City</th>
                    <th>Country</th>
                    <th>IATA/FAA</th>
                    <th>ICAO</th>
                    <th>Latitude</th>
                    <th>Longitude</th>
                    <th>Altitude</th>
                    <th>Timezone</th>
                    <th>DST</th>
                    <th>TZ</th>

                </tr>
            <%
                try
                {
                Class.forName("org.apache.hive.jdbc.HiveDriver");
                String url = "jdbc:hive2://192.168.177.129:10000/air";
                Connection con=DriverManager.getConnection(url,"","");
              //("jdbc:mysql://localhost:3306/bahubali1","root","rootroot");//
         Statement stmt = con.createStatement();
         String q = "select * from airports";
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
      <tr><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td> 
      <td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td> 
      <td><%=rs.getString(7)%></td><td><%=rs.getString(8)%></td> 
      <td><%=rs.getString(9)%></td><td><%=rs.getString(10)%></td>
      <td><%=rs.getString(11)%></td><td><%=rs.getString(12)%></td></tr> 
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
