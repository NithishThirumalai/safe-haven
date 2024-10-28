<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>goverment home!</title>
</head>
<style>

@import url("https://fonts.googleapis.com/css?family=Montserrat:400,400i,700");

html, body, .container {
  width: 100%;
  height: 100%;
}

body {
  padding: 0;
  margin: 0;
}

.nav {
  background-color: #efefef;
  height: 50px;
  box-sizing: border-box;
  box-shadow: 0 5px 10px #000;
  position: relative;
  top: 0;
  left: 0;
  right: 0;
  transition: top 0.15s ease-out, border-radius 0.15s ease-out;
}

.nav.active {
  background-color: rgba(255, 255, 255, 0.8);
  position: fixed;
  top: 20px;
  left: 20px;
  right: 20px;
  border-radius: 8px 5px;
}

.nav > ul {
  width: 100%;
  padding: 0 20px;
  margin: 0;
  box-sizing: border-box;
  list-style-type: none;
}

.nav > ul > li {
  float: left;
  display: inline-block;
}

.nav > ul > li > a {
  color: #222;
  font-family: Montserrat, sans-serif;
  text-decoration: none;
  height: 50px;
  line-height: 50px;
  padding: 0 20px;
  display: block;
  text-shadow: 0 -1px #fff;
  transition: background 0.15s ease;
}

.nav > ul > li > a:hover {
  background-color: #dfdfdf;
}

.nav.active > ul > li > a:hover {
  background-color: rgba(180, 180, 180, 0.7);
}

.bg {
  width: 100%;
  height: 100vh;
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  display: flex;
  justify-content: center;
  align-items: center;
}

.bg > div {
  color: white;
  font-family: Montserrat, sans-serif;
  text-align: center;
  width: 100%;
  padding: 30px;
  text-shadow: 0 -1px #222;
}

#home {
  background-image: linear-gradient(rgba(0, 0, 0, 0.0), rgba(0, 0, 0, 0.0)), url("images/govern1.jpg");
}

#about {
  background-image: linear-gradient(rgba(0, 0, 0, 0.0), rgba(0, 0, 0, 0.0)), url("images/govern2.jpg");
}

#services {
  background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url(https://images.unsplash.com/photo-1521453159160-6b5c58c24591?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjE0NTg5fQ&s=cf68541f3f1fd0812bfc120e6c15f284);
}

#contact {
  background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url(https://images.unsplash.com/uploads/1413222992504f1b734a6/1928e537?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjE0NTg5fQ&s=6e7632177f5d243c31319268f10d73d9);
}

.newsletter {
  color: #fff;
  font-family: Montserrat, sans-serif;
  background-image: linear-gradient(#002db5, #203be8);
  height: 120px;
  box-sizing: border-box;
  padding: 0 50px;
  box-shadow: 0 0 30px 10px #000;
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  align-content: center;
}

.newsletter > p {
  width: 100%;
  margin: 0;
}

.newsletter > div {
  margin-top: 15px;
}

.newsletter > div > input {
  color: #fff;
  font-family: Montserrat, sans-serif;
  background-color: #8597ff;
  width: 200px;
  border: none;
  padding: 10px;
  transition: background-color 0.15s, color 0.15s; 
}

.newsletter > div > input:focus {
  color: #000;
  background-color: #fff;
}

.newsletter > div > button {
  color: #fff;
  font-family: Montserrat, sans-serif;
  background-color: #000599;
  border: none;
  padding: 10px 20px;
  transition: background-color 0.15s;
}

.newsletter > div > button:hover {
  background-color: #000470;
  cursor: pointer;
}
 
.newsletter > div > button:active {
  background-color: #0016a8;
}

.footer {
  font-family: Montserrat, sans-serif;
  background-color: #efefef;
  width: 100%;
  height: 300px;
  padding: 30px;
  display: flex;
  align-items: flex-end;
  align-content: flex-end;
  flex-wrap: wrap;
  box-sizing: border-box;
}

.footer > span:first-child {
  font-weight: bold;
  margin-bottom: 25px;
}

.footer > span:last-child {
  margin-top: 25px;
}

.footer > span {
  color: #222;
  width: 100%;
  display: block;
  margin-top: 10px;
}

.footer > span > a {
  color: #888;
  text-decoration: none;
}

.footer > span > a:hover {
  text-decoration: underline;
}
		


</style>

<body>
<div id="nav" class="nav">
  <ul>
  
    <li><a href="index.jsp">Home</a></li>
    <li><a href="discomplaintview.jsp">Disaster Complaint</a></li>
  <!--   <li><a href="medical&shelter.jsp">Medical&Shelter Team</a></li>
     <li><a href="sheltermanage.jsp">Shelters</a></li>
     <li><a href="medicalmanage.jsp">Medical</a></li> -->
    <li><a href="voluntermanage.jsp">Volunteer</a></li>
   <li><a href="volunteerlist.jsp">Volunteer List</a></li>
  
 
  </ul>
</div>
<div class="container">
  <div id="home" class="bg">
    <div>
      <h1>Government Home</h1>
      <span>I dream of a young India that is not constrained by any limitations whatsoever. I want the youth of this country to lead a life filled with hope and opportunity

</span>
    </div>
  </div>
  <div id="about" class="bg">
    <div>
      <h1>About the Government</h1>
      <span>A youthful nation like ours must leave an impact in the entire world.</span>
    </div>
  </div>
  
  <div class="newsletter">
    <p>Hear something from us</p>
    <div>
      Email
      <input placeholder="your.email@example.com">
      <button>Submit</button>
    </div>
  </div>
 <!--  <div class="footer">
    <span>This is the footer</span>
    <span><a href="#home">Home</a></span>
    <span><a href="#about">About</a></span>
    <span><a href="#services">Services</a></span>
    <span><a href="#contact">Contact</a></span>
    <span>Lorem ipsum dolor sit amet</span>
  </div> -->
</div>

</body>
<script>

$(document).ready(function() {
	  $('a[href^="#"]').on('click', function(evt) {
	    evt.preventDefault();
	    
	    var link = $(this).attr('href');
	    var less = (!$('#nav').hasClass('active')) ? 50 : 0;
	    
	    $('html, body').animate({
	      scrollTop: $(link).offset().top - less
	    }, 750);
	  });
	  
	  $(window).on('scroll', function() {
	    if ($(this).scrollTop() > 100) {
	      $('#nav').addClass('active');
	    }
	    else {
	      $('#nav').removeClass('active');
	    }
	  });
	});



</script>
</html>