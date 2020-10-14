<%@page import="bean.UserInfo"%>
<%@page import="DAO.Rdao"%>
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
	<link rel="stylesheet" href="css/style-dashboard.css"/>
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
	
	 <%
      String googlename=request.getParameter("name");
      String gmail=request.getParameter("email");
      String fbname=request.getParameter("user_email");
      
      session.setAttribute("fbemail", fbname);
 	  session.setAttribute("googlename", googlename);
      session.setAttribute("gmail", gmail);
      %>

<%

UserInfo UI=new UserInfo();
Rdao rdao=new Rdao();
String user1=null;
String user2=null;
user1=(String)(session.getAttribute("user"));
user2=(String)(session.getAttribute("gmail"));
System.out.println(user1+"  "+user2);
if(user2==null)
{
		UI=rdao.getYourEmail(user1);
}
else
{
	UI=rdao.getYourEmail(user2);
}

%>

		<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="site-logo">
						<img src="img/e-portal1.png" alt="">
					</div>
					<div class="nav-switch">
						<i class="fa fa-bars"></i>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					   <div class="site-btn header-btn "><%=UI.getEmail()%></div>
					<nav class="main-menu">
						<ul>
							<!-- <li><a href="student-dashboard.jsp">Home</a></li> -->
							<li><a href="all-courses.jsp">All Courses</a></li>
							<li><a href="my-courses.jsp">My Courses</a></li>
							<li><a href="profile.jsp">Profile</a></li>
							<li><a href="logout.jsp">Logout</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->

	

	<!-- Page info -->
	<div class="page-info-section set-bg" data-setbg="img/page-bg/5.jpg">
		<div class="container">
			<div class="site-breadcrumb">
				<a href="student-dashboard.jsp">Home</a>
				<span>Student Dashboard</span>
			</div>
		</div>
	</div>
	<!-- Page info end -->

	<!-- Hero section -->
	<section class="">
		<div class="container">
			<div class="hero-text text-white">
				<h2 class="text-dark">Get The Best Free Online <br> Courses</h2>
				<p></p>
			</div>
		</div>
	</section>
	<!-- Hero section end -->

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