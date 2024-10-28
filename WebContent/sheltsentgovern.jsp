<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dbcon.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>


<%



String email=request.getParameter("email");
String status="Approved";



try{
	Connection con=(Connection) dbconn.create();
	Statement st=(Statement) con.createStatement();
	st.executeUpdate("UPDATE disastermanagement.publiccomplaint p SET status2='"+status+"' where email='"+email+"' ");
	

	
	
	
	
	
	
	response.sendRedirect("disassheltview.jsp");
	

}
catch(Exception e){
	response.sendRedirect("error.jsp?invalid");
System.out.println(e);
}
%>