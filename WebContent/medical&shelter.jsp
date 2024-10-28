<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="dbcon.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="dbcon.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.servlet.ServletException" %>
<%@page import="javax.servlet.annotation.WebServlet" %>

<%@page import="javax.servlet.http.HttpServlet" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
  margin: 0;
  padding: 20px;
  font-family: sans-serif;
}

* {
  box-sizing: border-box;
}

.table {
  width: 100%;
  border-collapse: collapse;
}

.table td,
.table th {
  padding: 12px 15px;
  border: 1px solid #ddd;
  text-align: center;
  font-size: 16px;
}

.table th {
  background-color: #92c9e6;
  color: #ffffff;
}

.table tbody tr:nth-child(even) {
  background-color: #d1e8f5;
}

/*responsive*/

@media (max-width: 500px) {
  .table thead {
    display: none;
  }

  .table,
  .table tbody,
  .table tr,
  .table td {
    display: block;
    width: 100%;
  }
  .table tr {
    margin-bottom: 15px;
  }
  .table td {
    padding-left: 50%;
    text-align: left;
    position: relative;
  }
  .table td::before {
    content: attr(data-label);
    position: absolute;
    left: 0;
    width: 50%;
    padding-left: 15px;
    font-size: 15px;
    font-weight: bold;
    text-align: left;
  }
}




</style>
<body>


<table class="table">
  <thead>
    <th>Date</th>
    <th>Disaster-Type</th>
    <th>Disaster</th>
     <th>Zone</th>
    <th>Medical</th>
    <th>Shelter</th>
  </thead>



   
       <%
      

Connection con;
       
       
       con=dbconn.create();
      
       PreparedStatement ps=con.prepareStatement("SELECT * FROM disastermanagement.publiccomplaint p  where status='Forward'");
    
         
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	   
    	   
         /*  String email=rs.getString(3); */
    	
          
       %>
       
       
   <tbody>
    <tr>
      <td data-label="S.No"><%=rs.getString(5)%></td>
      <td data-label="Name"><%=rs.getString(7)%></td>
      <td data-label="Age"><%=rs.getString(9)%></td>
      <td data-label="Marks%"><%=rs.getString(15)%></td>
      <td data-label="Staus"><%=rs.getString(16)%></td>
       <td data-label="Staus"><%=rs.getString(17)%></td>
    </tr>

  
   
</tbody>
     <%} %> 
 </table>
   
      
        

</body>

</html>