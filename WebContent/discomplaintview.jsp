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

th{
color:#fed9b7;
}





a{
text-decoration: none;
color:red;
}

a:hover{
color:blue;
text-decoration: none;
}


button{

color:black;
border-radius: 7px;
padding: 5px 10px;
background-color:#8ac926;

}

button a {
text-decoration: none;
color:white;
}

</style>


<body>


<table>
  <thead>
    <tr>
     
      <th>Complainer Name</th>
      <th>Phone No</th>
      <th>Disaster Date</th>
       <th>Day</th>
      <th>Type Of Disaster</th>
      <th>Name Of Disaster</th>
       <th>No Of Affected</th>
         <th>No Of Victms</th>
         <th>Zone</th>
       <th>Time</th>
       <th>Location</th>
       <th>Forward</th>
    </tr>
  </thead>
  
  
<%
       
Connection con;
       
       
       con=dbconn.create();
      
       PreparedStatement ps=con.prepareStatement("SELECT * FROM disastermanagement.publiccomplaint p where status='Complaint'  ");
     /*   
     /* PreparedStatement ps=con.prepareStatement("SELECT * FROM studentmanage.lecturereg l where status='Not_Activate' ");  */
         
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	  
    	   
       %>
       
  <tbody>
    <tr>
     
      <td><%= rs.getString(2) %></td>
      <td><%= rs.getString(4) %></td>
      <td><%= rs.getString(5) %></td>
      <td><%= rs.getString(6) %></td>
      <td><%= rs.getString(7) %></td>
      <td><%= rs.getString(9) %></td>
      <td><%= rs.getString(8) %></td>
      <td><%= rs.getString(14) %></td>
      <td><%= rs.getString(15) %></td>
     
       <td><%= rs.getString(12) %></td>
  <td><a href="<%= rs.getString(11) %>">Link</a></td>
     <td><button><a href="compforward.jsp?compemail=<%=rs.getString(3)%>" >Forward</a></button></td>  
    </tr>
<% } %>

</table>
</body>
</html>