<%@page import="java.sql.*"%>
<%@page import="lemtraco02.*" %>
<%@page import="logic.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<div  class="invest_body">
<div   class="investor_chioce"   id="style-1">

<h4 class="font_page_notification">FUTO CASSAVA PROCESSING INDUSTRY</h4>
<h5 class="teaser">Select  available Commodity to Purchase</h5>


<div  class="invest_logic_view_">
<%
Connection cons=null;
PreparedStatement ps=null;
ResultSet rs=null;
cons=new DbCon().getConnection();
try{
ps=cons.prepareStatement("select  * from Uploaded_commondity_lemtraco  order by id desc  limit 12");
rs=ps.executeQuery();
while(rs.next()){
%>

<div class="items">
<a href="purchase.jsp?i=<%=rs.getString(1)%> <%request.setAttribute("n1", rs.getString(1));%>">

<img class="im" src="<%=new Jsp_logic().http.concat(rs.getString(4))%>">

<span class="price_tag">

<span  class="title">
	<%=rs.getString(3)%>
</span>

<span class="middle">
<span class="up">
<i class="fa fa-tag" id="in"></i>
<h4 class="in">Unit:</h4>
</span>


<span  class="down">
<i class="fa fa-calendar"></i>
<h4 class="in">Cycle</h4>
</span>
</span>



<span class="middle">
<span class="up">
<i class="fa fa-usd" ></i>
 <h4 class="ins">  <%=rs.getString(2)%></h4>
</span>


<span  class="down">
	In Stock
</span>
</span>







<span class="item_floor_purchase">
<span class="up2">
<i class="fa fa-cart-arrow-down"></i>

</span>

<span  class="down2">
<i class="fa fa-map-marker"></i>
<span class="in">Location</span>
</span>
</span>


<span class="item_floor_purchase">
<span class="up2">
		Purchase
</span>

<span  class="down2">
  Imo
</span>
</span>

</span>
</a>


</div>



<%}
}catch(Exception e){
System.out.println(e);
}
finally{
cons.close();
}
%>

</div>


</div>



</div>
<jsp:include page="Footer.jsp"></jsp:include>
</div>
</body>
</html>