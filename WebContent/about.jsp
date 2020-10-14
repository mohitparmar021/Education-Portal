<!DOCTYPE html>
<html lang="en">
<head>
	<title>Education Portal</title>
	<meta charset="UTF-8">

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
   <script src="js/jquery-3.4.1.min.js"></script> 
   <script src="js/signup-modal.js"></script>

	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	
<%@include file="header.jsp" %>

	<!-- Page info -->
	<div class="page-info-section set-bg" data-setbg="img/page-bg/2.jpg">
		<div class="container">
			<div class="site-breadcrumb">
				<a href="index.jsp">Home</a>
				<span>About</span>
			</div>
		</div>
	</div>
	<!-- Page info end -->





	<!-- banner section -->
	<section class="banner-section spad">
		<div class="container" >
			<div class="section-title mb-0 pb-2">
			<h2 style="color:#00acee;">Join Our Community Now!</h2><br>
				<p style="color:black;">The Education portal or simply an e-portal is the platform which is created with the aim to provide quality aids to the students, in order to boost their theoretical as well as practical knowledge.</p>
			<br>
			<p style="color:black;">Most of the time its happens that student can't find both video content and theoretical content at same platform.At these platform we provide both theoretical and visual(video) lecture  </p>
			</div>
			<div class="text-center pt-5">
               <button class="site-btn registered">Register Now</button>
			</div>
		</div>
	</section>
	<!-- banner section end -->


<%@include file="footer.jsp" %>


    


<script type="text/javascript">
  

// Get the modal
var modal = document.getElementById("signup");

window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}


$('document').ready(function(){

     $('.registered').click(function(){
            
             $('#signup').show();
             
     });

});




</script>



	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>