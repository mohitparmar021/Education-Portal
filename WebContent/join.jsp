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

		<%@include file="headerstudent.jsp" %>
	

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
	
	
	
	<%
		String email=request.getParameter("email");
	    String cid=request.getParameter("course_id");
		int course_id=Integer.parseInt(cid);
		
		System.out.println(email);
		System.out.println(course_id);

		Rdao rd=new Rdao();
		if(rd.joinCourse(course_id, email))
		{
			 %>
	     		<script type="text/javascript">
	     	     alert("Course Joined Successfully..........");
	     	      document.location.href='my-courses.jsp'
	     	 </script>	
	     	 <% 
	       }
	          else
	          {
	        	  %>
	        		<script type="text/javascript">
	        	     alert("SOMETHING WENT WRONG, PLEASE TRY AGAIN LATER.........");
	        	      document.location.href='all-courses.jsp'
	        	 </script>	
	        	 <%
	        	  
	          }
		
	%>
	
	
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

<%
String fbname=request.getParameter("user_name");
String googlename=request.getParameter("name");
String gmail=request.getParameter("email");

session.setAttribute("googlename", googlename);
session.setAttribute("gmail", gmail);
session.setAttribute("fbname", fbname);


%>


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