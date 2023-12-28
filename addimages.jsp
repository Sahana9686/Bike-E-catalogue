<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Bike E Catalouge</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-responsive.css">
<link rel="stylesheet" href="css/prettyPhoto.css" />
<link rel="stylesheet" href="css/flexslider.css" />
<link rel="stylesheet" href="css/custom-styles.css">

<link rel="shortcut icon" href="img/favicon.ico">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/jquery.custom.js"></script>
<script type="text/javascript">
$(document).ready(function () {

    $("#btn-blog-next").click(function () {
      $('#blogCarousel').carousel('next')
    });
     $("#btn-blog-prev").click(function () {
      $('#blogCarousel').carousel('prev')
    });

     $("#btn-client-next").click(function () {
      $('#clientCarousel').carousel('next')
    });
     $("#btn-client-prev").click(function () {
      $('#clientCarousel').carousel('prev')
    });
    
});

 $(window).load(function(){

    $('.flexslider').flexslider({
        animation: "slide",
        slideshow: true,
        start: function(slider){
          $('body').removeClass('loading');
        }
    });  
});

</script>

</head>
<body class="home">
    
    <%
    if (request.getParameter("msg") != null) {%>
    <script>alert('Image Added Sucessfully..!');</script>
    <%}%>

    <div class="color-bar-1"></div>
    <div class="color-bar-2 color-bg"></div>

    <div class="container">

    <div class="row header">
    <div class="span5 logo">
    <h1>Bike E Catalouge</h1>
    </div>

    <div class="span7 navigation">
    <div class="navbar hidden-phone">

  <ul class="nav">
    <li class="dropdown active"><a href="adminhome.jsp">Home</a></li>
    <li><a href="viewusers.jsp">View Users</a></li>
    <li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Bikes <b class="caret"></b></a>
    <ul class="dropdown-menu">
    <li><a href="addproducts.jsp">Add Bikes</a></li>
    <li><a href="addimages.jsp">Add More Images</a></li>
    <li><a href="aviewbikes.jsp">View BIkes</a></li>
    <li><a href="aqrcodes.jsp">Upload QR Codes </a></li>
    </ul>
    </li>
    
    <li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Spare Parts <b class="caret"></b></a>
    <ul class="dropdown-menu">
    <li><a href="addspares.jsp">Add Spares</a></li>
    <li><a href="aviewspares.jsp">View Spares</a></li>
   
    </ul>
    </li>
    
    <li><a href="logout.jsp">Logout</a></li>
    </ul>

    </div>
    </div>
    </div><!-- End Header -->

    <div class="row headline"><!-- Begin Headline -->

    <div class="span8">
        <div class="flexslider">
    <ul class="slides">
    <li><a href="gallery-single.htm"><img src="img/slide.jpg" alt="slider" /></a></li>
    <li><a href="gallery-single.htm"><img src="img/slider2.jpg" alt="slider" /></a></li>
    </ul>
    </div>
    </div>

    <div class="span4">
    <h3>Bike E Catalouge  <br />
    <p class="lead">It is the activity of buying  products on online services or over the Internet.</p>

    </div>
    </div><!-- End Headline -->

    <div class="row gallery-row">
    </div>

    <div class="row">

    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>     
      
    <%
    
    String query1="select * from bikes"; 
      Statement st1=connection.createStatement();
      ResultSet rs=st1.executeQuery(query1);
      
      
      String query="select * from bikes"; 
      Statement st=connection.createStatement();
      ResultSet rs1=st.executeQuery(query);
      
    %>
    
    
    
    <center>
    <p><font size="4" color="red">Add Product</font></p><br/>   
    
    <form name="myform" action="addimagesact.jsp" method="post">
    <center><table width="381">
     
    <tr><td width="191" height="43"><font size="2"> Brand </td>
    <td width="218"><select name="brand" required="" style="width: 142px">
            <%
            
            while(rs.next()){
            
            %>
  
    <option value="<%=rs.getString("brand")%>"><%=rs.getString("brand")%></option>
   
    
    <%}%>
    
    </select>
    </td></tr>

    <tr><td width="191" height="43"><font size="2"> Bike Name </td>
    <td width="218"><select name="bike" required="" style="width: 142px">
            <%
            
            while(rs1.next()){
            
            %>
  
    <option value="<%=rs1.getString("bike")%>"><%=rs1.getString("bike")%></option>
   
    
    <%}%>
    
    </select>
    </td></tr>
<tr><td width="191" height="43"><font size="2"> Color </td>
    <td width="218"><select name="color" required="" style="width: 142px">
    <option value="">--Select--</option>
    <option value="Red">Red</option>
    <option value="Black">Black</option>
    <option value="Yellow">Yellow</option> 
    <option value="white">White</option> 
    </select>
    </td></tr>

    <tr>
    <td height="43"><font size="2"> Image </td>
    <td><font size="2"><input type="file" id="pic" name="pic" required=""/></td>
    </tr>

    <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value=" ADD " /></td></tr>
    <tr></tr>      
    </table>
    </form>
    </center>
    <br/>

    </div>
    </div> 


    <div class="footer-container">
    <div class="container">

    <div class="row">
    <div class="span12 footer-col footer-sub">
    <div class="row no-margin">
    <div class="span6">
    <center></center>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    
</body>
</html>
