
<%@ page import="logic.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>

<link    rel="stylesheet" type="text/css"   href="zss/style.css"/>
 	

<!-- Font -->
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	
	
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
           crossorigin="anonymous"/>
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
     
    <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script src="js/bootstrap. min.js"></script>
      <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"/>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
 
 
 
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script> 
function drop_down() {
document.getElementById("drops").style.display = "block";
			
}

function cls() {
	document.getElementById("drops").style.display = "none";
				
	}
		
</script>

 
<style>

#jk_1{
display: none;
}

#jk_2{
display: none;
}

</style>




</head>


 

 
<body>

<%new Nav().auth_user(request);%>

<div  class="head_component">





<div  id="drops">

<table>


<i class="fa fa-times"  id="jk_2"  onclick="cls()"></i>
<br/>
<br/>




<tr>
<td>
<br/>
<form  method="post"  action="button_query">
 <button class="sign_up_reg_nav">${status1}</button>
 <input type="hidden" name="state" value="${status1}">
</form>

<br/>
<br/>
</td>
</tr>



<tr>
<td>
<br/>
<a  class="nav_links"   href="index.jsp">Home</a>
<br/>
<br/>
</td>
</tr>








<tr>
<td>
<br/>
<a  class="nav_links" href="sale.jsp">Shop</a>
<br/>
<br/>
</td>
</tr>


<tr>
<td>
<br/>
<a  class="nav_links" href="fAQ.jsp">FAQ's</a>
<br/>
<br/>
</td>
</tr>


<tr>
<td>
<br/>
<a   class="nav_links"  href="about.jsp">About Us</a>
<br/>
<br/>
</td>
</tr>


<tr>
<td>
<br/>
<a  class="nav_links" href="member.jsp">My Account</a>
<br/>
<br/>
</td>
</tr>





<tr>
<td>
<br/>
<a  class="nav_links" href="Register.xhtml">Create account</a>
<br/>
</td>
</tr>





</table>

</div>



<div class="logo">
<a href="index.jsp">
<img src="Resources/logo.png"/>
</a>
<h6  class="rfc">RC: 1704644</h6>
</div>



<div  class="navigation">
<ul>
<li><a   href="sale.jsp">Shop</a></li>
<li><a href="about.jsp">About Us</a></li>
<li><a href="fAQ.jsp">FAQ's</a></li>
<li><a href="member.jsp">My Account</a></li>
</ul>
</div>




<i class="fa fa-bars"   onclick="drop_down()" id="jk_1"></i>




<div  class="registration">
<div>
<ul>
<li>

<form  method="post"  action="button_query">
 <button class="sign_up_reg">${status1}</button>
 <input type="hidden" name="state" value="${status1}">
</form>

</li>
</ul>
</div>


<a href="Register.xhtml" class="register">
Create an Account
</a>

</div>



</div>
</body>
</html>