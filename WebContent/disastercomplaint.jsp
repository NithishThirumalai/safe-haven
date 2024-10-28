<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.time.DayOfWeek" %>
<%@page import="java.time.LocalDate" %>   
    
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>disaster complaint!</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<style>

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
}
body{
    margin: auto;
    display: flex;
    height: 100vh;
    align-items: center;
    justify-content: center;
    background-image:url("images/complaint.jpg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
   
}
.container{
    width: 450px;
    padding: 80px;
    margin: 0 25px;
    background:transparent; 	
    overflow: hidden;
    border-radius: 10px;
     backdrop-filter: blur(100px); 
    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.4);
}
.container h2{
    font-size: 25px;
    font-weight: 500;
    text-align: left;
    color: white;
    padding-bottom: 5px;
    border-bottom: 1px solid #fff;
}
.content{
    display: flex;
    flex-wrap: wrap;
    padding: 20px 0;
    justify-content: space-between;
}
.box-content{
    display: flex;
    flex-wrap: wrap;
    width:50%;
    padding-bottom:15px;
}
.box-content:nth-child(2n){
    justify-content: end;
}
.box-content label,.gender-title{
    width: 95%;
    color: #fff;
    margin: 5px 0;
    font-weight: bold;
}
.box-about label,.gender-title{
    width: 95%;
    color: #fff;
    margin: 5px 0;
    font-weight: bold;
}
.box-dropdown select,.gender-title{
    width: 95%;
    color: #fff;
    margin: 5px 0;
    font-weight: bold;
}
.gender-title{
    font-size: 18px;
}
.box-content input{
    height: 40px;
    width: 95%;
    border-radius: 10px;
    border: 1px solid #fff;
    outline: none;
    padding: 0 10px;
}
.box-content select{
    height: 40px;
    width: 95%;
    border-radius: 10px;
    border: 1px solid #fff;
    outline: none;
    padding: 0 10px;
}
.gender label{
    padding: 0 20px 0 5px;
    font-size: 15px;
    color: #fff;
}
.gender label,input:hover{
    cursor: pointer;
}
.alert p{
 font-size: 18px;
 color: #fff;
}
.alert a{
    text-decoration: none;
    color: aqua;
    line-height: 1.5;
    text-align: justify;
    margin-bottom: 10px;
}
.alert a:hover{
    cursor: pointer;
    text-decoration: underline;
    font-style: italic;
}
.button-container button{
    width: 100%;
    padding: 15px 0;
    background-image: linear-gradient(to right,blue,skyblue);
    border: none;
    outline: none;
    border-radius: 10px;
    color: #fff;
    font-size: 18px;
    margin: 10px 0;
}
.button-container button:hover{
    cursor: pointer;
    background-image: linear-gradient(to right,skyblue,blue);
}

.box-dropdown{

display: flex;
    flex-wrap: wrap;
    width:50%;
    padding-bottom:30px;
    height: 40px;
    width: 48%;
    border-radius: 10px;
    border: 1px solid #fff;
    outline: none;
    padding: 0 10px;

}

/* .box-about{

width: 100%;
  height: 150px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  background-color: #f8f8f8;
  font-size: 16px;
  resize: none;
}
 */

</style>

<%
                	
                	LocalDate today = LocalDate.now();
                    DayOfWeek dayOfWeek = today.getDayOfWeek();
                    
                    System.out.println("Today's day of the week: " + dayOfWeek);	
                    		
                    		%>
<body>

<div class="container">
        <form action="publiccompl" method="post" >
            <h2>DISASTER COMPLAINT</h2>
            <div class="content">

                <div class="box-content">
                    <label for="fullname">FullName</label>
                    <input type="text" name="name" id="fullName" placeholder="Enter your FullName" required>
                </div>

                <div class="box-content">
                    <label for="fullname">Email</label>
                    <input type="email" name="compemail" id="email" placeholder="Enter Email" required>
                </div>

                <div class="box-content">
                    <label for="fullname">Phone Number</label>
                    <input type="number" name="number"  pattern="[0-9]{10}" id="contactNumber" placeholder="Enter your Phone Number" required>
                </div>

                <div class="box-content">
                    <label for="fullname">Date</label>
                    <input type="date" name="disdate" id="dob" required>
                </div>
                
                	
            <div class="box-content" >
            <label for="fullname">Type</label>
                <select class="box-dropdown" id="disasterType" name="disastertype" required>
                  
                 
                    <option value="Natural Disaster" label>Natural Disaster</option>
                    <option value="Man-Made Disaster">Man-Made Disaster</option>
                </select>
             </div>

                <div class="box-content">
                    <label for="fullname">Affected People</label>
                    <input type="number" id="numPeople" name="noofpeople" placeholder="Enter the Affected members" required>
                </div>


                <div class="box-content">
                    <label for="fullname">Victms</label>
                    <input type="number" id="numPeople" name="victpeople" placeholder="Enter the Victm members" required>
                </div> 
                
                
                 <div class="box-content">
                    <label for="fullname">About Disaster</label>
                    <input type="text" name="aboutdis" id="aboutDisaster" placeholder="Tell me about Disaster" required>
                </div>
                
                <div class="box-content" >
            <label for="fullname">Zone</label>
                <select class="box-dropdown" id="disasterType" name="zone" required>
                  
                 
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
             
               <div class="box-content">
                    <label for="fullname">Address</label>
                    <input type="text" name="compaddress" id="address" placeholder="Enter your Address" required>
                </div>
                
                <div class="box-content">
                    <label for="fullname">Map Link</label>
                    <input type="text" name="maplink" id="mapLink" placeholder="Enter your Link" required>
                </div>
                
                  <div class="box-content">
                    <label for="fullname">Disaster Time</label>
                    <input type="time" name="disastime"  id="disasterTime" required>
                </div>
                	
                	
                	
                	 <input type="hidden" name="disday"  value=<%=dayOfWeek%>>
             <!--   <!--  <div class="box-about">
                    <label for="fullname">About Disaster</label>
                    <textarea  name="Fullname" placeholder="Enter your new-password" required></textarea>
                </div>

                <div class="box-about" >
                    <label for="fullname">Address</label>
                    <textarea  name="Fullname" placeholder="Enter your new-password" required></textarea>
                </div> -->
                
           <!--    <br>
                <span class="gender-title">Gender</span>
                <div class="gender">
                    <input type="radio" name="gen" value="Male"><label>Male</label>
                    <input type="radio" name="gen" value="Female"><label>FeMale</label>
                    <input type="radio" name="gen" value="Others"><label>Others</label>
                </div> 
                 -->
                
            </div>

         
            <div class="button-container">
                <button onsubmit="return validateForm()">Register</button>
            </div>
        </form>
    </div>
<script>

function validateForm() {
    // Get form elements
    var fullName = document.forms["disasterForm"]["fullName"].value;
    var email = document.forms["disasterForm"]["email"].value;
    var contactNumber = document.forms["disasterForm"]["contactNumber"].value;
    var dob = document.forms["disasterForm"]["dob"].value;
    var disasterType = document.forms["disasterForm"]["disasterType"].value;
    var numPeople = document.forms["disasterForm"]["numPeople"].value;
    var aboutDisaster = document.forms["disasterForm"]["aboutDisaster"].value;
    var address = document.forms["disasterForm"]["address"].value;
    var mapLink = document.forms["disasterForm"]["mapLink"].value;
    var disasterTime = document.forms["disasterForm"]["disasterTime"].value;

    // Simple validation example (you can customize this)
    if (fullName === "" || email === "" || contactNumber === "" || dob === "" || disasterType === "" || numPeople === "" || aboutDisaster === "" || address === "" || mapLink === "" || disasterTime === "") {
        alert("All fields must be filled out");
        return false;
    }

    // You can add more specific validation rules for each field (e.g., email format, date format, etc.)

    // Validation passed
    alert("Form submitted successfully!");
    return true;
}



</script>
</body>
</html>