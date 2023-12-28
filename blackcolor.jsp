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
    <script>alert('Product Added to Cart..!');</script>
    <%}%>
    <%
    if (request.getParameter("m1") != null) {%>
    <script>alert('Comment Success..!');</script>
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
    <li class="dropdown active"><a href="search.jsp">Search Bikes</a></li>
    <li><a href="viewcart.jsp">View Cart</a></li>
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
    <p><font size="5" color="red">View Products </font></p><br/>   
   
    <%
    
    String keyword = request.getParameter("bname");
    String color = request.getParameter("color");
    
    String newc = keyword+"black";
    
    System.out.println(newc);
    
        PreparedStatement ps = connection.prepareStatement("select * from bikes where bike = '"+keyword+"'");
        ResultSet rs6 = ps.executeQuery();
        while(rs6.next())
        {
    %>
    
            <figure> 
                <h2>Black Color</h2>
          <img height="300" width="300" src="Gallery/<%=newc%>.jpg" />	
				 <div id="container">
				 <figcaption>
				 <span class="style8">Brand :<span class="style27"><%=rs6.getString("Brand")%></span></span><br />
				 <span class="style8">Bike : <span class="style27"><%=rs6.getString("bike")%></span></span><br />
                                 <span class="style8">Capacity : <span class="style27"><%=rs6.getString("cc")%></span></span><br />
                                 <span class="style8">Price : <span class="style27"><%=rs6.getString("price")%></span></span><br />
                                 <span class="style8">Description : <span class="style27"><textarea><%=rs6.getString("description")%></textarea></span></span><br />
                               
                         <h2>More Colors</h2>         
    <a href="redcolor.jsp?bname=<%=rs6.getString("bike")%>&color='red'"><button Style="background-color: red">Red</button></a>
    <a href="blackcolor.jsp?bname=<%=rs6.getString("bike")%>&color='black'"><button Style="background-color: black">Black</button></a>
    <a href="yellowcolor.jsp?bname=<%=rs6.getString("bike")%>&color='yellow'"><button Style="background-color: yellow">Yellow</button></a>
    <a href="whitecolor.jsp?bname=<%=rs6.getString("bike")%>&color='white'"><button Style="background-color: white">White</button></a>
    
				 </figcaption>
				 </div>	
		    </figure>  
                                 
                                 <%
        }
                                 
                                 %>
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
