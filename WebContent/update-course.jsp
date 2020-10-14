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
	<link rel="stylesheet" href="css/admin-dashboard.css"/>
   <script src="js/jquery-3.4.1.min.js"></script> 
   <script src="js/signup-modal.js"></script>
</head>
<body>

<%
int id=Integer.parseInt(request.getParameter("id"));
int course_id=Integer.parseInt(request.getParameter("course_id"));
String course_name=request.getParameter("course_name");
String category=request.getParameter("category");

%>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

			  <%@include file="adminheader.jsp" %>


	<!-- Page info -->
	<div class="page-info-section set-bg" data-setbg="img/page-bg/5.jpg">
		<div class="container">
			<div class="site-breadcrumb">
				<a href="admin-dashboard.jsp">Home</a>
				<span>Update Course </span>
			</div>
		</div>
	</div>

	<div id="wrapper">
      <div class="sidenav">
            <div class="mt-3"> 
  	           <a  style="font-size: 30px; padding-bottom: 15px; text-decoration: none;" class="text-white" href="">Dashboard</a>
              <%@include file="navbar-admin.jsp" %>
    
      <div id="content-wrapper">
	          <div class="container-fluid">
                   
                    <div class="card">

                         <div class="ml-3 mt-3 mr-3 mb-5">
                         	  <h3 class="mb-4">Update Course</h3>
                    	        <form action="UpdateCourse.jsp" method="post">
                    	               <div class="form-group"> 
                    	    	   	      <label>Id</label>
                    	    	   	      <input type="number" readonly required value="<%=id %>" name="id" class="form-control bg-white">
                    	    	      </div>
                    	    	      <div class="form-group"> 
                    	    	   	      <label>Course Code</label>
                    	    	   	      <input type="number" required value="<%=course_id %>" name="course_id" class="form-control">
                    	    	      </div>
                    	    	      <div class="form-group"> 
                    	    	   	      <label>Course Name</label>
                    	    	   	      <input type="text" required value="<%=course_name %>" name="course_name" class="form-control">
                    	    	      </div>
                    	    	      <div class="form-group"> 
                    	    	   	      <label>Course Category</label>
                    	    	   	      <input type="text" required value="<%=category %>" name="category" class="form-control">
                    	    	      </div>
                                       <input type="submit" value="Update Course" class="site-btn mt-3">   
                     	       </form>
                         </div>
                           
                    </div>     

              </div>
                    
              </div>   
       </div>

</div>

	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>