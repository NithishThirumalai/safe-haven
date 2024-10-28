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
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
h2 {
  text-transform: capitalize;
  text-align: center;
}

table {
  width: 700px;
  margin: 20px auto;
  background-color: #eeeeee;
}

table, th, td {
  border: 1px solid white;
  border-collapse: collapse;
  padding: 15px;
  text-align: center;
  text-transform: capitalize;
  font-size: 20px;
}

table th {
  background-color: #404040;
  color: white;
}

img {
  border: 1px solid #b7b6b6;
}

button {
  font-size: 18px;
  padding: 8px;
  text-transform: capitalize;
  border-radius: 5px;
  border: none;
  cursor: pointer;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
}

.button_one {
  background: #03a9f4;
  color: white;
}

.button_two {
  background: #e91e63;
  color: white;
}

.bottom {
  border-bottom: 2px solid #009688;
}




</style>
<body>

<table>
  <thead>
    <tr>
      <th>Image</th>
      <th>Name</th>
      <th>Email</th>
      <th>Number</th>
      <th>Skills</th>
      <th>Date Of Application</th>
       <th>Address</th>
    </tr>
  </thead>
<%
       
Connection con;
       
       
       con=dbconn.create();
      
       PreparedStatement ps=con.prepareStatement("SELECT * FROM disastermanagement.voluntreg v where status='Approved' ");
     /*   
     /* PreparedStatement ps=con.prepareStatement("SELECT * FROM studentmanage.lecturereg l where status='Not_Activate' ");  */
         
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	   String pic=rs.getString(13);
    	  
    	   
       %>
  <tbody>
    <tr>
      <td><img class="card-img-top"  src="Local/<%=pic%>"  width="100" height="100" alt="Card image cap"></td>
      <td><%= rs.getString(2) %></td>
      <td><%= rs.getString(3) %></td>
      <td><%= rs.getString(4) %></td>
      <td><%= rs.getString(7) %></td>
      <td><%= rs.getString(8) %></td>
      <td><%= rs.getString(10) %></td>
 
      
    </tr>
<% } %>

</table>
</body>
</html>