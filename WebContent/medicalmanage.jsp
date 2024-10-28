<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="dbcon.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

<style>

table {
	border: 1px solid #ccc;
	border-collapse: collapse;
	margin: 0;
	padding: 0;
	width: 100%;
	table-layout: fixed;
}

table caption {
	font-size: 1.5em;
	margin: .5em 0 .75em;
}
table tr {
	background-color: #fff;
	border: 1px solid #e1e5e9;
	padding: .35em;
	border-radius: 3px;
}
table thead tr:first-child {
    border: 1px solid #0f82e6;
}
table th,
table td {
	padding: 1.625em;
	text-align: center;
	color: #9da9b9;
	font-size: 14px;
	font-family: sans-serif;
}

table td:nth-child(4) {
	font-size: 18px;
}

table th {
	font-size: .85em;
	letter-spacing: .1em;
	text-transform: uppercase;
	background: #0f82e6;
	color: #FFF;
}

table tbody tr td .btn-invoice {
	background: #0f82e6;
	color: #FFF;
	font-size: 13px;
	padding: 10px 20px;
	border: 0;
	font-family: sans-serif;
}

table tbody tr td .btn-outvoice {
	background: #e60f0f;
	color: #FFF;
	font-size: 13px;
	padding: 10px 20px;
	border: 0;
	font-family: sans-serif;
}
tbody tr:nth-child(even) {
	background-color: #eee;
}

tbody tr:nth-child(odd) {
	background-color: #fff;
}

@media screen and (max-width: 600px) {
	table {
		border: 0;
	}
	table caption {
		font-size: 1.3em;
	}
	table thead {
		border: none;
		clip: rect(0 0 0 0);
		height: 1px;
		margin: -1px;
		overflow: hidden;
		position: absolute;
		width: 1px;
		padding: 0;
	}
	table tr {
		border-bottom: 3px solid #e1e5e9;
		display: block;
		margin-bottom: .625em;
	}
	table th,
	table td {
		padding: 0.625em;
	}
	table td {
		border-bottom: 1px solid #e1e5e9;
		display: block;
		font-size: .8em;
		text-align: right;
		color: #9da9b9;
	}
	table td::before {
		content: attr(data-label);
		float: left;
		font-weight: bold;
		text-transform: uppercase;
		color: #656971;
	}
	table td:last-child {
		border-bottom: 0;
	}
	table td:nth-child(4) {
		font-size: 0.8em;
	}

</style>
</head>
 <button onclick="goBack()" class="btn btn-outline-primary" style="float:right;">Go Back</button><br><br>
<body>
  <table>
     <thead>
        <tr>
          <th><label>MEDICAL ID</label></th>
          <th><label>LOCATION</label></th>
          <th><label>NO OF SEATS</label></th>
          <th><label>STATUS</label></th>
          <th><label>APPROVAL</label></th>
          <th><label>REJECT</label></th>
        </tr>
      </thead>
      
      <tbody>
      
      
       <%
       
   
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM disastermanagement.medicalreg m");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	  
    	   
       %>
       
        <tr>
      <td data-label="Invoice"><%= rs.getString(2) %></td>
          <td data-label="Details"><%= rs.getString(3) %></td>
          <td data-label="Due Date"><%=rs.getString(4) %></td>
          <td data-label="Amount"><%= rs.getString(6) %></td>
          <td data-label="Payment"><a href="medicalapprove.jsp?medicalid=<%=rs.getString(2)%>"><button class="btn-invoice">Activate </button></a></td>
          <td data-label="Payment"><a href="medicalreject.jsp?medicalid=<%=rs.getString(2)%>"><button class="btn-outvoice">Reject</button></a></td>
        </tr>
        
        <%} %>
      </tbody>
    </table>
               
</html>