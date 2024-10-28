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

@import url('https://fonts.googleapis.com/css?family=Montserrat:400,500&display=swap');

body {
	font-family: Montserrat,Arial, Helvetica, sans-serif;
	background-color:#f7f7f7;
}
* {box-sizing: border-box}

/* Add padding to container elements */
.container {
    padding: 20px;
      width:500px;
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
      border:1px solid #ccc;
      border-radius:10px;
      background:white;
  -webkit-box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.38);
  -moz-box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.38);
  box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.38);
  }

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f7f7f7;
	font-family: Montserrat,Arial, Helvetica, sans-serif;
}
select {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f7f7f7;
	font-family: Montserrat,Arial, Helvetica, sans-serif;
}

input[type=phone] {
  width: 81%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f7f7f7;
}

input[type=text]:focus, input[type=password]:focus, input[type=phone]:focus, select:focus {
  background-color: #ddd;
  outline: none;
}



/* Set a style for all buttons */
button {
  background-color: #0eb7f4;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
	font-size:16px;
	font-family: Montserrat,Arial, Helvetica, sans-serif;
	border-radius:10px;
}

button:hover {
  opacity:1;
}


/* Change styles for signup button on extra small screens */
@media screen and (max-width: 300px) {
  .signupbtn {
     width: 100%;
  }
}

.youtubeBtn{
    position: fixed;
    right: 20px;
  transform:translatex(-50%);
    top: 20px;
    cursor: pointer;
    transition: all .3s;
    vertical-align: middle;
    text-align: center;
    display: inline-block;
  background:#000;
  padding:2px 10px;
  border-radius:5px;
}
.youtubeBtn i{
   font-size:20px;
  float:left;
}
.youtubeBtn a{
    color:#ff0000;
    animation: youtubeAnim 1000ms linear infinite;
  float:right;
}
.youtubeBtn a:hover{
  color:#c9110f;
  transition:all .3s ease-in-out;
}
.youtubeBtn i:active{
  transform:scale(.9);
  transition:all .3s ease-in-out;
}
.youtubeBtn span{
    font-family: 'Lato';
    font-weight: bold;
    color: #fff;
    display: block;
    font-size: 12px;
    float: right;
    line-height: 20px;
    padding-left: 5px;
  
}

@keyframes youtubeAnim{
  0%,100%{
    color:#c9110f;
  }
  50%{
    color:#ff0000;
  }
}

</style>


<%
Random rand = new Random();
int n = rand.nextInt(90000) + 10000;
%>
<body>

    <form action="medicalreg" method="post">
        <div class="container">
          <h1>Sign Up</h1>
         
      
              <label for="email"><b>Medical ID</b></label>
            <input type="text" name="id" placeholder="Enter Username" value="M<%=n%>" required>
            
             <div>
          <label for="email"><b>Zone</b></label>
          <br>
          <select  name="location" required>
          
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
          
          
         </div>
         
          <label for="psw"><b>No Of Patients</b></label>
          <input type="text" placeholder="Enter Number of Patients" name="noofpatient" required>
          
          
          <label for="psw"><b>Password</b></label>
          <input type="password" placeholder="Enter Password" name="password" required>
      
      
                 <!--  <label for="email"><b>Phone Number</b></label>
            <br>
           <select name="phoneCode" required>
            <option selected hidden value="">Code</option>
            <option value="66">+98</option>
            <option value="66">+99</option>
            <option value="66">+90</option>
            <option value="66">+66</option>
           </select>
           <input type="phone" name="phone" placeholder="812345678" required>
       -->
         
      
          <div class="clearfix">
      
            <button type="submit" class="btn">Sign Up</button>
          </div>
        </div>
      </form>

  
    </a>

</div>
</body>
</html>
