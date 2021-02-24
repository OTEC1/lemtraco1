<%@page import="Payment_zone.payment_processing"%>
<%@page import="Serve.UserServer_Request"%>
<%@page import="lemtraco02.Creden"%>
<%@page import="logic.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@ page import="lemtraco02.DbCon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


	
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    
<title>Lemtraco International Limited</title>
<link rel="icon" href="Resources/logos.png" sizes="40x40" type="image/png"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
      
      
      
	


<style type="text/css">


*{
padding: 0px;
margin: 0px;
}	
				
	
						
	
					
button{
background:#1AFF48;
padding: 10px;
border:none;
color:#fff;
border-radius: 5px;
cursor: pointer;
float: right;
}
				
				
.packag{
width: 100%; 
background: #eaeaea;
height: 450px; 
padding-bottom: 130px;
margin-top: 30px;
}
				
			
					
.cus{
margin-top:5px;
color:#001075;
font-family:sans-serif;
background: #fff;
font-family: sans-serif;
font-size: 20px;
}
						
					
.e3{
font-size: 1.5em;
font-family: 'Roboto', sans-serif;
border:none;
}
					
.inner_sec{
border-radius:4px;
box-shadow: 0px 20px 30px rgba(0,0,0,0.2);	 		    	
width: 50%;
height: 350px;
background: #fff;
}

tr td{
background: #fff;
}
							

.e3a{
font-size: 1.5em;
font-family: 'Roboto', sans-serif;
border:none;
}
	
				
@media(max-width:1220px){
					
.packag{
width: 100%; 
background: #eaeaea;
height: 500px; 

}
		
			
.inner_sec{
border-radius:4px;
background: #fff; 
width: 70%;
height: 350px;
}
		

				
button{
float:right;
margin-right: 10px;
margin-bottom: 10px;
}

	
  
}
				

		


@media(max-width: 980px){

.e3a{
background: #fff;
width: 80%;
justify-content: center;
align-items: center;
}
.packag{
width: 100%; 
background: #eaeaea;
height: 500px; 
}
			
.inner_sec{
border-radius:4px;
width: 90%;
height: 350px;
font-family: 'Roboto', sans-serif;
	
}

				
.btn{
margin-left: auto;
margin-right: auto;
width: 90%;
}
</style>
	
	
	


	
</head>
<body>
<div  class="home_component_page">
<jsp:include page="header.jsp"></jsp:include>
<%

String c= 
new   purchase().
sessions(request).getId();



String cn=(String)
request.getParameter("s");


if(cn.contains(" "))
	cn=new Nav().find(cn);

String ci =new DES()
.decrypt(Creden.java_key, cn);


new Nav().n_plus(ci,c,request);

Connection connection = null;
PreparedStatement statement = null;
ResultSet resultSet = null;



%>

<form action="authorize_payment"   method="post">

<%
try{ 
connection = new DbCon().getConnection();
statement=connection.prepareStatement(new payment_processing().sql1(c,2));
resultSet = statement.executeQuery();
while(resultSet.next()){
%>
<center>
<div    class="packag">  
<br/>
<div   class="inner_sec">
<center  style="background: #fff">
<table  style="background: #fff">
<tr>
<td  align="center">
		
		
<b><input     
type="text" class="e3a"  name="product"  
   value="Order's payment Review"   readonly="readonly" /></b>
</td>
</tr>
<tr>
<td>

<label   class="cus">Sub total:</label>
 &nbsp;  &nbsp;  
<input   style=" background: #fff; "  
type="text"  class="e3" name="subtotal" 
value="<%=resultSet.getString("subtotal")%>"  
readonly="readonly" />

</td>
</tr>
		
		
<tr>
<td>
<label  class="cus">Shipping Cost:</label>
<input   style=" background: #fff; "   
type="text" class="e3"  name="shipping" 
value=" <%=resultSet.getString("ships")%>"   
readonly="readonly"/>

</td>
</tr>
		
		
<tr>
<td>
<label class="cus">Tax  Payment:</label>
<input   style=" background: #fff;" 
type="text" class="e3"  name="tax"   
value="<%=resultSet.getString("tax") %>" 
readonly="readonly" />
</td>
</tr>


<tr>
<td>
<label  class="cus">Calculated Total:  </label>  
<input    style=" background: #fff; "  type="text"  class="e3" name="total" 
value="<%=resultSet.getString(6) %>"   readonly="readonly" />
</td>
</tr>
<tr>
<td>
</td>
</tr>
<tr>
<td>
<div class="btn">
<button    type="submit"   >Check Out</button>
</div>
</td>
</tr>
</table>
</center>
<br/>
</div>
</div>
</center>
<% 
}} catch (Exception e) {e.printStackTrace();}

finally{ try{ connection.close(); }catch(Exception  e){e.printStackTrace();}} 
%>		
</form>

<jsp:include page="Footer.jsp"></jsp:include>
</div>
</body>
</html>