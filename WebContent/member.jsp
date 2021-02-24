<%@page import="Payment_zone.Withdrawal_page"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lemtraco International Limited</title>

<link    rel="stylesheet" type="text/css"   href="${pageContext.request.contextPath}/zss/style.css"/>
 	

<link rel="icon" href="Resources/logos.png" sizes="40x40" type="image/png"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
     
<style>
*{
margin: 0px;
padding: 0px;
}

.base_control{
width: 100%;
height: 1300px;
background: #fff;
margin-top: 50px;
}
	
h3{
font-size: 2em;
font-family: sans-serif;
color: #001075;
padding-top: 170px;
			
}
		
h4{
font-size: 2em;
font-family: sans-serif;
color: #001075;
padding-top: 90px;
			
}

		
.btn_sty{				
width: 150px;
height: 30px;
font-family: sans-serif;
color: #fff;
padding:5px;
background: #1AFF48;
border:none;
border-radius: 3px;
cursor: pointer;
float: right;
				
}



.inss{
	
padding: 10px;
width: 100%;
border: 1px  solid #707070;
border-radius: 3px;
					
}


table{
width: 50%;


}


.tbs{			
width: 100%;						
}
.tbs1{
display: none;			

}

.his_tabs{
padding:5px;
margin: 75px; 				
background: #fff;
font-family: sans-serif;
color:  blue;
}




.note{
background: #fff;
font-family: sans-serif;
color:  blue;
padding-left: 20px;
}

.force-overflow{
min-height: 700px;
}
            
            
.scrollbar{ 
 overflow: scroll;
 float:right;
 height:150px;
 width:100%;
 overflow-y:scroll;
 overflow-x:hidden;
 background: #fff;
}
            
         
#style-1::-webkit-scrollbar{
width: 7px;
margin-right: 15px;

}
        
#style-1::-webkit-scrollbar-thumb{
background-color: blue;
border-radius: 5px;
margin-right: 15px;
}
	

.balance{
font-size: 1em;
font-family: sans-serif;
background: #fff;	
color: #001075;
		
}


.sense{
color: #fff;
margin: 10px;
									
}


.inner_child{
background: #fff;

}
.down{
margin-top: 5px;
}
	

._ul_li{
float: left;
text-align: left;
}

h3{
margin-top: -45px;
}
.form_div{
margin-top: -30px;
}

@media(max-width:980px){

.base_control{
overflow-x: hidden;
}


table{
width: 90%;
float: left;
margin-left: 0px;
}

.tbs{			
display: none;						
}
.tbs1{
display: block;
width: 100%;
margin-top: 20px;
						

}

h4{
font-size: 2em;
font-family: sans-serif;
color: #001075;
			
}

.his_tabs{
padding:5px;
margin:5px;	
background: #fff;
font-family: sans-serif;	
color:  blue;
}

.down{
margin-top: 80px;
}
	
.balance{
margin-top: -50px;
}

}


	
</style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

<div   class="base_control">
<h3 align="center"  >Withdrawal </h3>
			 
			 			
<div class="form_div"  align="center">

<form>
<table>
<tr>
<td style="background: #fff">
<b>
<span class="balance">
	  <%if(new Withdrawal_page().bal(request)!=null){String c=new Withdrawal_page().bal(request);%>
Bal:    <%=c%><%}; %>
</span>
</b> 
<br/><br/><br/>
</td>
</tr>

<tr>
<td style="background: #fff">
<input name="reason"  class="inss"placeholder="Amount"/>

<br/>
</td>
</tr>
			 				
			 				
<tr>
<td  style="background: #fff">
<br/>
<input name="reason"  class="inss"placeholder="Name on account"/>
</td>
</tr>

<tr>
<td  style="background: #fff">
<br/>
<input name="reason"  class="inss" placeholder="Reason for Withdrawal (Optional)"/>
</td>
</tr>



<tr>
<td   style="background: #fff">
<br/>
<button     class="btn_sty">Request Withdrawal</button>
</td>
</tr>



<tr>
<td   style="background: #fff">
<br/>
<ul>
<li class="_ul_li">
<h5 class="note">
* Pls Note all  withdrawals can take several hours to Complete. Progress would be  sent too your Email  Periodically  on till transaction is Completed.
</h5>

</li>
<li class="_ul_li">
<br/>

<h5  class="note">
* Pls Note  the name Entered Must be same on account as of time of Registration so as not too delay transaction.
</h5>

</li>
</ul >
	</td>
</tr>
</table>
</form>	

			 			

			 			
<h4 align="left"  style="margin-left: 10px;  margin-top: 50px" >Transaction  history</h4>
		
					 			
<table>
										 					
										 
										 				
<tr>
<th> Date:</th> 
<th colspan="3">Trans id:</th>  
<th >Payment:</th>
<th>Amount:</th>
<th>Status</th>
 <th>Payer</th>
 
 
 <td>
 </td>
</tr>
      
	 			

							 			
</table>
					 				
					 				               
					 			
					 			                 
					 			                 
					 				
					 		
</div>     		
</div>
			
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>