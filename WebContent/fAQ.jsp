<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="logic.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lemtraco International  Limited</title>



	    <link    rel="stylesheet" type="text/css"   href="${pageContext.request.contextPath}/zss/style.css"/>
 		
 	    <link rel="icon" href="Resources/logos.png" sizes="40x40" type="image/png"/>
	    <meta name="viewport" content="width=device-width, initial-scale=1"/>
	    <meta name="robots" content="index, follow" />

     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
      crossorigin="anonymous"/>
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="js/jquery-2.1.1.min.js"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script src="js/bootstrap. min.js"></script>
     <script src="https://kit.fontawesome.com/yourcode.js"></script>  
     <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"/>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
 
 
 
 	<!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
 	
 	
 	
</head>
<body>
<div  class="home_component_page">
<jsp:include page="header.jsp"></jsp:include>


<div  class="question_page_drop">


<div  class="faq_teaser">Frequently Asked Questions</div>
<div  class="question">We're always happy to help with questions you might have</div>



<div  class="question_answer_faq_section">
<%for(int c=1; c<=new Question().question_section().size(); c++){%>

<details class="intro_question_faq">
<summary>
 <span  class="faq_view">
 <%=new Question().question_section().get(c)%> 
</span> 

<span class="view_drop">
v
</span>


</summary>
<span class="faq_view">
<br/><br/>
<%=new Question().click_respones(c)%>
</span>
</details>
<%}%>
</div>



</div>

<jsp:include page="Footer.jsp"></jsp:include>
</div>
</body>
</html>