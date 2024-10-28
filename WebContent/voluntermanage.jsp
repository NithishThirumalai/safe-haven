<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dbcon.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>

<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: "Inter", sans-serif;
  color: #343a40;
  line-height: 1;
  display: flex;
  justify-content: center;
}

table {
  width: 800px;
  margin-top: 100px;
  font-size: 18px;
  border-collapse: collapse;
}

td,
th {
  padding: 16px 24px;
  text-align: left;
}

thead tr {
  background-color: #087f5b;
  color: #fff;
}

thead th {
  width: 25%;
}

tbody tr:nth-child(odd) {
  background-color: #f8f9fa;
}

tbody tr:nth-child(even) {
  background-color: #e9ecef;
}

button{

color:black;
border-radius: 7px;
padding: 5px 10px;
background-color:#8ac926;

}

a {
text-decoration: none;
color:white;
}

</style>
 <!-- <button onclick="goBack()" class="btn btn-outline-primary" style="float:right;">Go Back</button><br><br> -->
<body>

<table>
  <thead>
    <tr>
      <th> Name </th>
      <th> Mail </th>
      <th> Number</th>
      <th>Date Of Application</th>
      <th>Address</th>
       <th>Disaster Skill</th>
      <th>Image</th>
        <th>Status</th>
      <th>Action</th>
    </tr>
  </thead>
  
  
  <%
       
Connection con;
       
       
       con=dbconn.create();
      
       PreparedStatement ps=con.prepareStatement("SELECT * FROM disastermanagement.voluntreg v where status='Not_Approve' ");
     /*   
     /* PreparedStatement ps=con.prepareStatement("SELECT * FROM studentmanage.lecturereg l where status='Not_Activate' ");  */
         
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	   String pic=rs.getString(13);
    	  
    	   
       %>
  <tbody>
    <tr>
      <th><%= rs.getString(2) %></th>
      <td><%= rs.getString(3) %></td>
      <td><%= rs.getString(4) %></td>
      <td><%= rs.getString(8) %></td>
      <th><%= rs.getString(10) %></th>
      <td><%= rs.getString(7) %></td>
      <td><img class="card-img-top"  src="Local/<%=pic%>"  width="100" height="100" alt="Card image cap"></td>
      <td><%= rs.getString(14) %></td>
       <td><button type="button" class="btn btn-outline-success"><a  href="voluntapprov.jsp?volemail=<%=rs.getString(3)%>" >APPROVAL</a></button></td>
    </tr>
   <% } %>
  </tbody>
</table>

</body>

</html>