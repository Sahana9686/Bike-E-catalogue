<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Bike E Catalouge </title>
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
    <script>alert('Activated..!');</script>
    <%}%>
     <%
    if (request.getParameter("m1") != null) {%>
    <script>alert('DeActivated..!');</script>
    <%}%>

    <div class="color-bar-1"></div>
    <div class="color-bar-2 color-bg"></div>

    <div class="container">

    <div class="row header">
    <div class="span5 logo">
    <h1>Bike E Catalouge </h1>
    </div>

    <div class="span7 navigation">
    <div class="navbar hidden-phone">

    <ul class="nav">
    <li><a href="adminhome.jsp">Home</a></li>
    <li class="dropdown active"><a href="viewusers.jsp">View Users</a></li>
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
        <li><a href="aviewfeed.jsp">View Feedback</a></li>
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

        <%@ include file="connect.jsp" %>
    <%
        String sql2="select * from user "; 
	Statement st2=connection.createStatement();
	ResultSet rs1=st2.executeQuery(sql2);
	%>
        
         <center>
        <h2><font color="black" size="5"> All Users</font></h2>
        <br/>
        <style>
            td{
                text-align: center;
            }
            
        </style>
        <table border="2" width="70%">

        <tr style="background-color: coral">
        <th><font color="white">User Name</th>
        <th><font color="white">Email</th>
        <th><font color="white">Gender</th>
        <th><font color="white">Address</th>
        <th><font color="white">Status</th>
       
        </tr>

        <%                while (rs1.next()) {
        %>

     <tr>
    <td><font color="black"><%=rs1.getString(1)%></td>
    <td><font color="black"><%=rs1.getString(3)%></td>
    <td><font color="black"><%=rs1.getString(5)%></td>
    <td><font color="black"><%=rs1.getString(6)%></td>
    <td><font color="black"><%=rs1.getString(8)%></td>
    </tr>
       <%
           }
       %>
      </table></center>
        <br/><br/><br/><br/> 

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
