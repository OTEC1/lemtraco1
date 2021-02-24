<%@page import="java.sql.*"%>
<%@page import="lemtraco02.*" %>
<%@page import="logic.*" %>
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
 
 
 	
  
 
     <meta name="keywords" content="LEMTRACO  Investing in Agriculture, Farm investments, 
     Oil and Gas Sector,  Sand dredging, Import and Export  General Goods,
    Block Chain Business platform, agroinvestments, high interest rate, crowdfunding,
    agriculture in nigeria, online farming, online savings platform, savings account, assets management, Wealth Management, investment promotions, high interest rate,
    High yield investments, online investment, fixed savings rate, fixed savings high interest, fixed deposit, fixed deposit account, money market, bonds, treasury bills,
    High yield investments, petty save account, digital agriculture, agriculture investments in Nigeria">

	
	<!-- 
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
	 -->
	 
	 <!-- Font -->
     <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	 
	 

</head>

<body>
<div  class="home_component_page">
<jsp:include page="header.jsp"></jsp:include>



<div  class="left_write_up">


<h1 class="inner_component_header">Manage  Your Investments   Easily  and  Effectively</h1>

<h4 class="inner_component_write_up">
Earn high returns when you invest into agribusiness. Agribusiness scale up production, empower the communities, 
 preserve the future while you also grow your money.
</h4>
	
	
<div  class="rouitine_account">



<a href="invest_page.jsp" class="register">
Get Quote
</a>


<i class="fa fa-credit-card">
<span>No hidden charges</span>
</i>

<i class="fa fa-user-circle-o">
<span>Online Support</span> 
</i>

</div>


</div>








<div  class="right_pics">

<img class="top_image"  src="Resources/IMG-20210215-WA0019.jpg"/>
<img class="second_top_image"  src="Resources/cassava-346887_640.jpg"/>
<img class="last_top_image"  src="Resources/p2.webp"/>
	

</div>









<div class="brief_intro">

<h3  class="glance">LEMTRACO  at a glance</h3>


<div  class="pos">
<div class="column1">
<img src="Resources/oil_gas.png"/>
<p>Oil &amp Gas Marketing</p>
</div>




<div class="column1">
<img src="Resources/agric.png"/>
<p>Agribusiness</p>
</div>


<div class="column1">
<img src="Resources/sand.png"/>
<p>Sand Dredging</p>
</div>

</div>
</div>






<div class="how_to_join">


<h4  class="how_lemterco_works">How LEMTRACO Investment Plan Works.</h4>



<div class="step1">
	<h5 class="step1_child"> 
	<i class="fa fa-user-plus"></i>
	  Create an account or Sign in.</h5>
	<h6 class="step1_inner_child">1. Get started by  creating a LEMTRACO investor account with your name,
	   email address, phone number and account details.</h6>
</div>

<div class="step2">
<h5 class="step1_child">
<i class="fa fa-hand-o-right"></i>
 Procced to LEMETRCO Investment Page.  </h5>
	<h6 class="step1_inner_child">2. Choose your Preferred Investment Plan. </h6>
</div>

<div class="step3">
<h5 class="step1_child"> 
<i class="fa fa-credit-card"></i>
Supply Bank details.</h5>
	<h6 class="step0_inner_child">3.Procced  to Review Page, Afterwards Click Check Out and  provide bank details.</h6>
</div>


</div>


<div class="step4">
<div id="step4_child">
<i class="fa fa-bell-o"></i>
 Get Periodical updates.</div>
	<h6 class="step4_inner_child">4. We send you detailed reports of your security  too your email, these reports include  progress/status which are all data-driven.</h6>
</div>





<div  class="font_page_store">


<h4 class="font_page_notification">FUTO CASSAVA PROCESSING INDUSTRY</h4>
<h5 class="teaser">Select  available Investment Stock</h5>


<div  class="logic_view">
<%
Connection cons=null;
PreparedStatement ps=null;
ResultSet rs=null;
cons=new DbCon().getConnection();
try{
ps=cons.prepareStatement("select  * from Uploaded_commondity_lemtraco  order by id desc  limit 4");
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
	3 weeks
</span>
</span>







<span class="item_floor_purchase">
<span class="up2">
<i class="fa fa-bar-chart"></i>
<span class="in">ROI</span>
</span>

<span  class="down2">
<i class="fa fa-map-marker"></i>
<span class="in">Location</span>
</span>
</span>


<span class="item_floor_purchase">
<span class="up2">
		45 %
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

<div  class="view_shop">
<a href="invest_page.jsp"  class="view_button">
	View all Stock
</a>
</div>

</div>

<div  class="testimoney">

<div  class="test1">
	Testimonials
</div>

<div class="teaser2">
What people say about us
</div>



<div  class="post_test">
<%

cons=null;
ps=null;
rs=null;
cons=new DbCon().getConnection();
try{
ps=cons.prepareStatement("select  * from testimoney  order by id desc  limit 3");
rs=ps.executeQuery();
while(rs.next()){
%>
<div class="post_column">
<span  class="up_call">
&ldquo;
</span>



<span   class="post_write_up">
  <%=rs.getString(2)%>
</span>


<br/><br/><br/>
<br/><br/><br/>

<span class="post_owner" >
 - <%=rs.getString(3)%>
</span>

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


<div  class="lemtraco_patners">

<div  class="teaser3">
	Partners we work with
</div>



<div  class="group_partners">
<img class="partner_logos" src="Resources/aiico.jpg"/>
<img class="partner_logos" src="Resources/FUTO.jpg"/>
<img class="partner_logos" src="Resources/iita.png"/>
<img class="partner_logos" src="Resources/irstbank-logo.png"/>
<img class="partner_logos" src="Resources/NAFDAC.jpg"/>
<div class="treasure_farm">
<b> FAVOURED Treasure Farm</b>
</div>
</div>

</div>



<div  class="video_clip">

<div  class="teaser3">
	Overview of LEMTRACO activities.
</div>


<div  class="left_slide">

</div>


<video  class="video_player"  controls>    
<source src="Resources/VID-20210215-WA0038.mp4"    type="video/mp4"   />
</video>

</div>



<div  class="quick_questions_asked">

<div  class="teaser4">
	Questions people ask
</div>



<div  class="question_answer_home_page_section">
<%for(int c=6; c<=new Question().question_section().size(); c++){%>

<details class="intro_question">
<summary>
 <span  class="view">
 <%=new Question().question_section().get(c)%> 
</span> 

<span class="view_drop">
v
</span>


</summary>
<span class="view">
<br/><br/>
<%=new Question().click_respones(c)%>
</span>
</details>
<%}%>
</div>

<div  class="more_FandQ">
<a  href="fAQ.jsp" class="links">View more FAQs</a>
</div>

</div>



<jsp:include page="Footer.jsp"></jsp:include>
</div>
</body>
</html>