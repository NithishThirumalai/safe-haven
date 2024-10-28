<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

@import url('https://fonts.googleapis.com/css2?family=Agdasima&family=Poppins&display=swap');
body {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    background-image:linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),url("images/governlog.jpg");
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-size:cover;
background-image:no-repeat;
  }
  
  .container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
  }
  
  .card {
    width: 350px;
    background-color: rgba(255, 255, 255, 0.3);
    border-radius: 15px;
    padding: 40px;
    backdrop-filter: blur(10px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
  }
  
  h2 {
    color: #fff;
    text-align: center;
    margin-bottom: 20px;
  }
  
  form {
    display: flex;
    flex-direction: column;
  }
  
  label {
    color: #fff;
    margin-bottom: 5px;
  }
  
  input {
    padding: 10px;
    margin-bottom: 10px;
    border: none;
    border-radius: 5px;
    background-color: rgba(255, 255, 255, 0.8);
  }
  
  select {
    padding: 10px;
    margin-bottom: 10px;
    border: none;
    border-radius: 5px;
    background-color: rgba(255, 255, 255, 0.8);
  }
  
  button {
    padding: 10px;
    background-color: #fff;
    color: #498ffc;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  
  button:hover {
    background-color: #70c1ff;
  }
  
  @media (max-width: 480px) {
    .card {
      width: 100%;
      max-width: 350px;
    }
  }
  


</style>


<%
Random rand = new Random();
int n = rand.nextInt(90000) + 10000;
%>

<body>
<div class="container">
  <div class="card">
  
    <h2>Government Shelter Registeration</h2>
    <form action="governselterreg" method="post" >
    	
     
      <label for="password">Shelter ID</label>
      <input type="text" id="password" name="id" value="S<%=n%>"  >
      
     <!--  <label for="password">Location</label>
      <input type="text" id="password" name="location"  placeholder="Enter your Location"> -->
      
      <label for="password">Location</label>
      <select class="box-dropdown" name="location" required>
                  
                 
                   
                            <option value="Ambattur">Ambattur</option>
                            <option value="Perambur">Perambur</option>
                            <option value="Saidapet" >Saidapet</option>
                            <option value="Avadi">Avadi</option>
                            <option value="Madipakkam">Madipakkam</option>
                            <option value="Chengalpattu">Chengalpattu</option>
                            <option value="Madhavaram">Madhavaram</option>
                            <option value="Anna Nagar" >Anna Nagar</option>
                            <option value="Nungambakkam">Nungambakkam</option>
                            <option value="Tondiarpet">Tondiarpet</option>
                            <option value="Gopalapuram">Gopalapuram</option>
                            <option value="Adyar">Adyar</option>
                            <option value="Ayanavaram" >Ayanavaram</option>
                            <option value="Nandanam">Nandanam</option>
                            <option value="Karapakkam">Karapakkam</option>
                </select>
                
           <label for="password">No Of Seats</label>
      <input type="number" id="password" name="seats"  required >     
      

      <label for="password">Password</label>
      <input type="password" id="password" name="password" placeholder="Enter your password" required>
      
    
      
<br>
	


      <button type="submit">Login</button>
      
 
      
    </form>
  </div>
</div>
</body>
</html>