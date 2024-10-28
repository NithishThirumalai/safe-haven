<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
* {
  margin: 0;

  padding: 0;

  font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
    "Lucida Sans", Arial, sans-serif;
}

section {
 
  background-position: center;

  background-size: cover;
  
   background-image:linear-gradient(rgba(0,0,0,0.2), rgba(0,0,0,0.2)),url("images/shleterlog.jpg");
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-size:cover;
background-image:no-repeat;

}

.form-box {
  position: relative;

  width: 400px;

  height: 450px;

  background: transparent;

  border: none;

  border-radius: 20px;

  backdrop-filter: blur(15px) brightness(80%);

  display: flex;

  justify-content: center;

  align-items: center;
}

h2 {
  font-size: 2em;

  color: #fff;

  text-align: center;
}

.inputbox {
  position: relative;

  margin: 30px 0;

  width: 310px;

  border-bottom: 2px solid #fff;
}

.inputbox label {
  position: absolute;

  top: 50%;

  left: 5px;

  transform: translateY(-50%);

  color: #fff;

  font-size: 1em;

  pointer-events: none;

  transition: 0.5s;
}

/* animations: start */

input:focus ~ label,
input:valid ~ label {
  top: -5px;
}

select:focus ~ label,
select:valid ~ label {
  top: -5px;
}

/* animation:end */

.inputbox input {
  width: 100%;

  height: 50px;

  background: transparent;

  border: none;

  outline: none;

  font-size: 1em;

  padding: 0 35px 0 5px;

  color: #fff;
}

.inputbox select {
  width: 100%;

  height: 50px;

  background: transparent;

  border: none;

  outline: none;

  font-size: 1em;

  padding: 0 35px 0 5px;

  color: #fff;
}

.inputbox ion-icon {
  position: absolute;

  right: 8px;

  color: #fff;

  font-size: 1.2em;

  top: 20px;
}

.forget {
  margin: -10px 0 17px;

  font-size: 0.9em;

  color: #fff;

  display: flex;

  justify-content: space-between;
}

.forget label input {
  margin-right: 3px;
}

.forget label select {
  margin-right: 3px;
}

.forget a {
  color: #fff;

  text-decoration: none;
}

.forget a:hover {
  text-decoration: underline;
}

button {
  width: 100%;

  height: 40px;

  border-radius: 40px;

  background-color: #fff;

  border: none;

  outline: none;

  cursor: pointer;

  font-size: 1em;

  font-weight: 600;
}

.register {
  font-size: 0.9em;

  color: #fff;

  text-align: center;

  margin: 25px 0 10px;
}

.register p a {
  text-decoration: none;

  color: #fff;

  font-weight: 600;
}

.register p a:hover {
  text-decoration: underline;
}

/* Responsiveness:Start */
@media screen and (max-width: 480px) {
  .form-box {
    width: 100%;
    border-radius: 0px;
  }
}
/* Responsiveness:End */



select {
  width: 100%;
  height: 50px;
  background: transparent;
  border: none;
  outline: none;
  font-size: 1em;
  padding: 0 35px 0 5px;
  color: #000814;
  text-color:#000814;
}

/* Style the selected option */
select option {
  background-color: #219ebc;
  color: #000814; /* Set the text color as needed */
}

</style>

<body>

<body>

  <section>

    <div class="form-box">

      <div class="form-value">

        <form action="governseltlog" method="post" >

          <h2>Login</h2>

          <div class="inputbox">

            <ion-icon name="mail-outline"></ion-icon>

            <input type="text" name="id" required>

            <label>Shelter Id</label>

          </div>


          <div class="inputbox">

            <ion-icon name="mail-outline"></ion-icon>

            <select name="location" required>
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
          
          
          <div class="inputbox">

            <ion-icon name="lock-closed-outline"></ion-icon>

            <input type="password" name="password" required>

            <label>Password</label>

          </div>

          <div class="forget">

          <!--   <label><input type="checkbox">Remember Me</label> -->

            <!-- <a href="#">Forgot Password</a> -->

          </div>

          <button>Log In</button>

          <div class="register">

            <p>Don't have an account? <a href="shelterreg.jsp">Sign Up</a></p>

          </div>

        </form>

      </div>

    </div>

  </section>

  <!-- ion-icon installation: Start -->

  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>

  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

  <!--ion-icon installation: End-->

</body>
</body>
</html>