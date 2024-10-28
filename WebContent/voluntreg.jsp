<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
    background-image:url("images/voluntreg.png");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
   
}
.container{
    width: 800px;
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

<body>

<div class="container">
        <form  method="post" action="volunteerreg" enctype="multipart/form-data">
            <h2>Volunteer Registration</h2>
            <div class="content">

                <div class="box-content">
                    <label for="fullname">FullName</label>
                    <input type="text" name="volname" id="fullname" placeholder="Enter your FullName" required>
                </div>

                <div class="box-content">
                    <label for="fullname">Email</label>
                    <input type="email" name="volemail" id="email"  placeholder="Enter Username" required>
                </div>

                <div class="box-content">
                    <label for="fullname">Emergency Contact Number</label>
                    <input type="number" name="volnumber" id="phone" pattern="[0-9]{10}"  placeholder="Enter your Phone Number" required>
                </div>

                <div class="box-content">
                    <label for="fullname">Date Of Birth</label>
                    <input type="date" name="dateofbirth" id="dob" placeholder="Enter your Phone-num" required>
                </div>
                	
                	
            <div class="box-content" >
            <label for="fullname">Day For Volunteering</label>
                <select class="box-dropdown" name="volday" id="volunteeringDay" >
                  
                 
                    <option value="Monday">Monday</option>
                    <option value="Tuesday">Tuesday</option>
                    <option value="Wednesday">Wednesday</option>
                    <option value="Thursday">Thursday</option>
                    <option value="Friday ">Friday</option>
                    <option value="Saturday">Saturday</option>
                    <option value="Sunday">Sunday</option>
                    
                </select>
             </div>

                 <div class="box-content" >
            <label for="fullname">Skills For Volunteering</label>
                <select class="box-dropdown" name="volskill" id="volunteeringSkill">
                  
                 
                    <option value="early_warning" label>Early Warning</option>
                    <option value="disaster_triage"> Disaster Triage</option>
                    <option value="first_aid">First Aid</option>
                    <option value="Search_and_Rescue">Search and Rescue</option>
                    <option value="logistic_and_communication">Logistic and Communication</option>
                    <option value="team_organizations">Team Organizations</option>
                
                    
                </select>
             </div>


                 <div class="box-content">
                    <label for="fullname">Date Of Application</label>
                    <input type="date" name="dateapply" id="applicationDate" required>
                </div>
                
               <div class="box-content">
                    <label for="fullname">Occupation</label>
                    <input type="text" name="voloccupation" id="occupation" placeholder="Enter your Occupation" required>
                </div>
                
                <div class="box-content">
                    <label for="fullname">Address</label>
                    <input type="text"  id="address" name="volAddress" placeholder="Enter your Address" required>
                </div>
                
                 <div class="box-content">
                    <label for="fullname">Password</label>
                    <input type="text" name="volpass" id="password" pattern="[A-Za-z0-9]+" placeholder="Enter your Password" required>
                </div>
                
                 <div class="box-content">
                    <label for="fullname">Confirm Password</label>
                    <input type="text" name="volcpass" id="confirmPassword" pattern="[A-Za-z0-9]+" placeholder="Enter your Confirm password" required>
                </div>
                
                 <div class="box-content">
                    <label for="fullname">Volunteer Image</label>
                    <input type="file" name="filename" id="volunteerImage" required>
                </div> 
                	
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
                <button  type="submit" >Register</button>
            </div>
        </form>
    </div>
<script >
function validateForm() {
    const fullname = document.getElementById('fullname').value;
    const email = document.getElementById('email').value;
    const phone = document.getElementById('phone').value;
    const dob = document.getElementById('dob').value;
    const volunteeringDay = document.getElementById('volunteeringDay').value;
    const volunteeringSkill = document.getElementById('volunteeringSkill').value;
    const applicationDate = document.getElementById('applicationDate').value;
    const occupation = document.getElementById('occupation').value;
    const address = document.getElementById('address').value;
    const password = document.getElementById('password').value;
    const confirmPassword = document.getElementById('confirmPassword').value;
    const volunteerImage = document.getElementById('volunteerImage').value;

    
    
 // Check if any field is empty
    if (!fullname || !email || !phone || !dob || !volunteerDay || !volunteerSkill || !applicationDate || !occupation || !address || !password || !confirmPassword || !volunteerImage) {
        alert('Please fill out all fields.');
        return;
    }
 
 
    // Perform validation checks for each field
    if (fullname === '') {
        alert('Please enter your Full Name.');
        return;
    }

    // Add more validation checks for other fields...

    if (password !== confirmPassword) {
        alert('Password and Confirm Password do not match.');
        return;
    }

    // If all validation checks pass, you can submit the form
    alert('Form submitted successfully!');
    // Optionally, you can submit the form data to a server here.
}
</script>
  </script>

</body>
</html>