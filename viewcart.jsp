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
    <script>alert('Product Purchased Successfully..!');</script>
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
    <li><a href="userhome.jsp">Home</a></li>
    <li><a href="viewproducts.jsp">View Products</a></li>
    <li class="dropdown active"><a href="viewcart.jsp">View Cart</a></li>
    <li><a href="myorders.jsp">My Orders</a></li>
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
    <h3>Bike E Catalouge <br />
    <p class="lead">It is the activity of buying  products on online services or over the Internet.</p>

    </div>
    </div><!-- End Headline -->

    <div class="row gallery-row">
    </div>

    <div class="row">
    
    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>     
    
    <center>
     
        <%
        String user = session.getAttribute("user").toString();
        
        PreparedStatement ps = connection.prepareStatement("select * from cart where username = '"+user+"'");
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
        PreparedStatement ps1 = connection.prepareStatement("select * from cart where username = '"+user+"'");
        ResultSet rs1 = ps1.executeQuery();
        
        %>
        
        
            <p><font size="4" color="red">My Cart </font></p><br/> 
            <table border="2" width="70%">
                <style>
                    td{
                        text-align: center;
                    }
                </style>

                <tr style="background-color: #e69ebe">
                <th><font color="black">Image</th>
                <th><font color="black">Category</th>
                <th><font color="black">Product Name</th>
                <th><font color="black">Description</th>
                <th><font color="black">Price</th>
                <th><font color="black">Brand</th>
                <th><font color="black">Purchase</th>

            </tr>

            <%                while (rs1.next()) {
            %>

    <tr>
         
         <td><img src="Products/<%=rs1.getString(8)%>" height="90" width="60"/></td>
         <td><%=rs1.getString(3)%></td>
         <td><%=rs1.getString(4)%></td>
         <td><%=rs1.getString(5)%></td>
         <td><%=rs1.getString(6)%></td>
         <td><%=rs1.getString(7)%></td>
         <th><button type="button"><a href="purchase.jsp?category=<%=rs1.getString(3)%>&pname=<%=rs1.getString(4)%>&description=<%=rs1.getString(5)%>&price=<%=rs1.getString(6)%>&brand=<%=rs1.getString(7)%>"><font color="black">Purchase</font></a></button></th>
         </tr>
         <%}
           }
            else{
            %>
            <p><font color="red" size="4">There are no items in the cart </font></p> 
            
            <%}%>
            
         
        </table>
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
