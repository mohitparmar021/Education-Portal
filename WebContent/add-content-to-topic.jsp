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
	<link rel="stylesheet" href="css/admin-dashboard.css"/>
   <script src="js/jquery-3.4.1.min.js"></script> 
   <script src="js/signup-modal.js"></script>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
int course_id=Integer.parseInt(request.getParameter("course_id"));
String topic_name=request.getParameter("topic_name");

Rdao rd=new Rdao();
if(rd.checkContent(id))
{
	%>
	  <script type="text/javascript">
  	     alert("CONTENT ALREADY EXIST PLEASE UPDATE IT RATHER THAN TO ADD NEW ONE.........");
  	      document.location.href='add-topic-content.jsp'
  	 </script>	
	  <%	
}
System.out.println(course_id);
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
				<span>Add Topic Content </span>
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
                             <h3 class="mb-4">Add Topic Content</h3>
                    	         
                    	      <form action="AddContent.jsp" method="post">
                    	              <div class="form-group"> 
                    	    	   	      <label>Id </label>
                    	    	   	      <input type="number" readonly name="id" value=<%=id %> class="form-control bg-white">
                    	    	      </div>
                    	    	      <div class="form-group"> 
                    	    	   	      <label>Course Code</label>
                    	    	   	      <input type="number" readonly name="course_id" value=<%=course_id %> class="form-control bg-white">
                    	    	      </div>
                    	    	      <div class="form-group"> 
                    	    	   	      <label>Topic Name</label>
                    	    	   	      <input type="text" readonly value="<%=topic_name %>" name="topic_name" class="form-control bg-white">
                    	    	      </div>
                    	    	      <div class="form-group"> 
                    	    	   	      <label>Topic Content</label>
                    	    	   	     <textarea cols="25" rows="10" required name="topic_content" class="form-control"></textarea>
                    	    	      </div>
                                       <input type="submit" value="Add Content" class="site-btn mt-3">   
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