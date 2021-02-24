<%@page import="Serve.UserServer_Request"%>
<%@page import="admin.Server_Request"%>
<%@page import="logic.*"%>
<%@ page import="java.sql.*"%>
<%@page import="lemtraco02.*"%>
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
	    <meta name="robots" content="index, follow" />
</head>
<body>
<div  class="home_component_page">
<jsp:include page="header.jsp"></jsp:include>

<h4  class="check_out_upper_price">Sub total: $ <%=new purchase().sum((String)new purchase().sessions(request).getId(), request)%></h4>


<a  href="Cash_deposit2.jsp?s=<%=request.getParameter("s")%>" 
class="check_out_upper_button">Check out</a>



<br/>
<br/>
<br/>

<div  class="review_page"  id="style-1">
<div class="item_cart_header">

<div  class="inner_box_item">
<span class="item_section_header">Action</span>
</div>

<div  class="inner_box_item">
<span class="item_section_header">Cost</span>
</div>

<div  class="inner_box_item">
<span class="item_section_header">Quantity</span>
</div>

<div  class="inner_box_item">
<span class="item_section_header">Item</span>
</div>
</div>


<%

Connection cons=null;
PreparedStatement ps=null;
ResultSet rs=null;
cons=new DbCon().getConnection();
try{
ps=cons.prepareStatement("select  * from "+new UserServer_Request().createTable(request)+"  order by id desc");
rs=ps.executeQuery();
while(rs.next()){
%>

<div  class="user_cart_view">

<img src="<%=new Jsp_logic().http.concat(rs.getString(5))%>"  
class="cart_img_preview"/>

<form  method="post"   action="Item_drop_cart">
	<span  class="item_column_editor">
	 <button type="submit">Delete</button>
	  <input name="del"  type="hidden"  value="<%=rs.getString(1)%>">
	  <input name="kn"  type="hidden"  value="<%=request.getParameter("s")%>">
	</span>
</form>

<span  class="item_column">
<br/>
Rate: $ <%=rs.getString(3) %>
</span>

<span  class="item_column">
<br/>
Quantity: <%=rs.getString(2) %>
</span>

<span  class="item_column_item">
<br/>
Item: <%=rs.getString(9) %>
</span>


<hr/>
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
<jsp:include page="Footer.jsp"></jsp:include>
</div>
</body>
</html>