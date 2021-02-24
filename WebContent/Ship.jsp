<%@page import="lemtraco02.Creden"%>
<%@page import="logic.DES"%>
<%@page import="logic.Nav"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lemtraco International  Limited</title>
<link rel="icon" href="Resources/logos.png" sizes="40x40" type="image/png"/>

<link    rel="stylesheet" type="text/css"   href="${pageContext.request.contextPath}/zss/style.css"/>
 	


<style>



</style>
</head>
<body>
<div  class="home_component_page">
<jsp:include page="header.jsp"></jsp:include>

					
<div   class="base">
<center>
<div   class="sec">
<div   class="inns">
<center  class="cent">  
 <h3  class="select">Select a Delivery Package</h3>
</center>
</div>
 
 
<div  class="positions">
<center   style="background: #fff">
<table>
<tr>
<td  style="background: #fff">
<br/>
<br/>
<h3  class="with">Delivery within  Nigeria
</h3>
</td>
</tr>


<tr align="center">
<td  style="background: #fff">
<h3    class="with">
$ <%=new Nav().price1%>
</h3>
</td>
</tr>
</table>
</center>

<br/>
<%String c1 =new DES()
.encrypt(Creden
.java_key, new Nav()
.price1);%>
<a class="btn_s" 
href="review_cart.jsp?s=<%=c1%>">
Select
</a>
</div>

<div  class="positions">
<center>
<table    align="center">
<tr>
<td  style="background: #fff">
<br/>
<br/>
<h3  class="with">
Delivery outside  Nigeria
</h3>
</tr>
<tr align="center" >
<td  style="background: #fff">

<h3  class="with">
$ <%=new Nav().price2%>
</h3>
</td>
</tr>
</table>
</center>
<br/>

<%String c2 =new DES()
.encrypt(Creden.java_key, new Nav().price2);%>

<a class="btn_s" href="review_cart.jsp?s=<%=c2%>">
Select
</a>
</div>
   
   
   
<div  class="positions">
<center>
<table    align="center">
<tr>
<td  style="background: #fff">
<br/>
<br/>
<h3  class="with">
Come Get It  
</h3>
</td>
</tr>
</table>
</center>
<br/>


<%String c3 =new DES()
.encrypt(Creden
.java_key, new Nav().price3);%>
<a class="btn_s" href="review_cart.jsp?s=<%=c3%>">
Select
</a>

</div>
   
</div>
</center>
						
</div>
	

<jsp:include page="Footer.jsp"></jsp:include>
</div>
</body>
</html>