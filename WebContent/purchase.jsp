<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="lemtraco02.*" %>
<%@page import="logic.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lemtraco International Limited</title>



<link    rel="stylesheet" type="text/css"   href="${pageContext.request.contextPath}/zss/style.css"/>
 	


<!-- Css is for purchase and invest -->
<!-- Css is for purchase and invest -->
<!-- Css is for purchase and invest -->
<!-- Css is for purchase and invest -->
<!-- Css is for purchase and invest -->
<!-- Css is for purchase and invest -->






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
 	
 	
 	
 	
<script>
 	
var nresult = 0;

 	function add() {
 		
 		document.getElementById('inc').value = ++nresult;
 			
 		return false;
	}
 	
 	
 	
	function minus() {
		if(nresult > 0){
		document.getElementById('inc').value = --nresult;
		}
		
		return false;
 		}	
 	
</script>
</head>

<body>
<div  class="home_component_page">
<jsp:include page="header.jsp"></jsp:include>



<div  class="purchase_zone">



<%
String d=(String)request.getParameter("i");
Connection cons=null;
PreparedStatement ps=null;
ResultSet rs=null;
cons=new DbCon().getConnection();
try{
ps=cons.prepareStatement("select  * from Uploaded_commondity_lemtraco  where id ="+d);
rs=ps.executeQuery();
while(rs.next()){
%>



<span  class="item_selected_title">
<br/>
<b><%=rs.getString(3)%></b>
</span>


<span  class="item_teaser">
<br/>
<br/>
 Select Quantity to Purchase
</span>
</div>






<div  class="output_item_purchase">



<form  method="post"  action="purchase_unit">


<div  class="item_pic_selected">
<img src="<%=new Jsp_logic().http.concat(rs.getString(4))%>" class="img_selected">
<button  type="submit"  class="item_selected_button">Add to cart</button>

<input  type="hidden"   name="eid"  value="<%=d%>">
<input  type="hidden"   name="img_id"  value="<%=rs.getString(4)%>">
<input type="hidden"  name="inan"   value="<%=rs.getString(3)%>"> 
</div>




<div  class="item_purchase_section">

<div  class="top_member_item_selected">

<div  class="iuytrertyui">
<i class="fa fa-tag">
<span  class="item_selected_icon_writeup">Unit Price </span> </i>
<i class="fa fa-cart-arrow-down" >
<span  class="item_selected_icon_writeup">In Stock</span></i>
<i class="fa">
<span  class="item_selected_icon_writeup"> </span></i>
<i class="fa fa-map-marker">
<span  class="item_selected_icon_writeup">Location</span></i>
</div>

</div>



<div  class="quantity_item_order">

<div  class="quantity_logic_section">

<span class="sponsoring_teaser">You are Purchasing:</span>

<div  class="maths">
<button type="button"   class="btn-buy1"  onclick="return minus()">-</button>
<input name="operation" id="inc"  type="tel" class="figure_space"  value="0">
<button    class="btn-buy2" onclick="return add()">+</button>

</div>

</div>


<div  class="quantity_logic_section_price">
<span class="sponsoring_teaser">Value at:</span>
<br/>


<span  class="price_show"> 
<i class="fa fa-usd"  id="dollar"></i>
 <input name="price"  value="<%=rs.getString(2)%> .00"  class="in_price" readonly="readonly">
</span>

</div>
</div>



<div  class="browser_button">
<a href="Ship.jsp" class="order_check_out">
Check out
</a>
<a href="sale.jsp" class="order_check_out">
Browser more
</a>
</div>

</div>

</form>

</div>


<%}
}catch(Exception e){
System.out.println(e);
}
finally{
cons.close();
}
%>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<jsp:include page="Footer.jsp"></jsp:include>
</div>
</body>
</html>