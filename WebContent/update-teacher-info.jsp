<%
int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String email=request.getParameter("email");
long mob=Long.parseLong(request.getParameter("mob"));
String qua=request.getParameter("qua");

%>

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
				<span>Update Teacher </span>
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
                         	  <h3 class="mb-4">Update Teacher</h3>
                    	        <form action="SaveTeacherUpdate.jsp" method="post">
                    	              <div class="form-group"> 
                    	    	   	      <label>Teacher Id</label>
                    	    	   	      <input type="text" readonly  name="teacher_id" value="<%=id %>" class="form-control bg-white">
                    	    	      </div>
                    	    	      <div class="form-group"> 
                    	    	   	      <label>Teacher Name</label>
                    	    	   	      <input type="text" required name="t_name" value="<%=name %>" class="form-control">
                    	    	      </div>
                    	    	      <div class="form-group"> 
                    	    	   	      <label>Teacher Email</label>
                    	    	   	      <input type="email" name="t_email" value="<%=email %>" class="form-control">
                    	    	      </div>
                    	    	      <div class="form-group"> 
                    	    	   	      <label>Teacher Mobile No. </label>
                    	    	   	      <input type="number" required name="t_mobile" value="<%=mob %>" class="form-control">
                    	    	      </div>
                    	    	       <div class="form-group"> 
                    	    	   	      <label>Teacher Qualification</label>
                    	    	   	      <input type="text" required name="qualification" value="<%=qua %>" class="form-control">
                    	    	      </div>
                                       <input type="submit" value="Update Teacher" class="site-btn mt-3">   
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