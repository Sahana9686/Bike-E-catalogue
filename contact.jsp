<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>BIke</title>
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
    <li class="dropdown"><a href="index.html">Home</a></li>
    <li><a href="admin.jsp">Admin</a></li>
    <li><a href="user.jsp">User</a></li>
    <li><a href="register.jsp">Register</a></li>
     <li><a href="about.jsp">About</a></li>
      <li class="active" ><a href="contact.jsp">Contact</a></li>
    </ul>

    </div>
    </div>
    </div><!-- End Header -->

    <div class="row headline"><!-- Begin Headline -->

    <div class="span8">
        <div class="flexslider">
   
        <p>contact us</p>
  
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

    <center><p><font size="5">Bike E Catalouge</font></p></center>  

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
