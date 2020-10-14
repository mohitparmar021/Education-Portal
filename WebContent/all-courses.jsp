
<%
    if(session.isNew())
       response.sendRedirect("index.jsp");
%>

<%@page import="DAO.Rdao"%>
<%@page import="Connection.MyConnection"%>
<%@page import="bean.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>


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
<!-- 	<link rel="stylesheet" href="css/style.css"/> -->
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

		<%@include file="headerstudent.jsp" %>


	<!-- Page info -->
	<div class="page-info-section set-bg" data-setbg="img/page-bg/5.jpg">
		<div class="container">
			<div class="site-breadcrumb">
				<a href="student-dashboard.jsp">Home</a>
				<span>All Courses</span>
			</div>
		</div>
	</div>
	<!-- Page info end -->
	
	<%
	
   		Rdao rd=new Rdao();
		ResultSet rs=rd.coursesShow();
		
		while(rs.next())
		{
	 %>
	
	

		<div class="container mt-5">
			<div class="course-meta-area">
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<div class="course-note">Featured Course</div>
						<h3><%= rs.getString(3)%></h3>
						<div class="course-metas">
							<div class="course-meta">
								<div class="course-author">
									<!-- <div class="ca-pic set-bg" data-setbg="img/authors/2.jpg"></div> -->
									<h6>Teacher</h6>
									<p><%=rs.getString(1)%>, <span><%=rs.getString(2)%></span></p>
								</div>
							</div>
							<div class="course-meta">
								<div class="cm-info">
									<h6>Category</h6>
									<p><%=rs.getString(4) %></p>
								</div>
							</div>
							<div class="course-meta">
								<div class="cm-info">
									<h6>Students</h6>
									<p>120 Registered Students</p>
								</div>
							</div>
							<div class="course-meta">
								<div class="cm-info">
									<h6>Reviews</h6>
									<p>2 Reviews <span class="rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star is-fade"></i>
									</span></p>
								</div>
							</div>
						</div>
						<a href="join.jsp?course_id=<%=rs.getString(5)%>&email=<%=UI.getEmail() %>" class="site-btn buy-btn">Join Course</a>
						
					</div>
				</div>
			</div>
	  </div>

<%
		}
%>
<br><br>
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