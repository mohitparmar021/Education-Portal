
<%@page errorPage="Error.jsp" %>

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
   <script src="js/jquery-3.4.1.min.js"></script> 
   <script src="js/signup-modal.js"></script>


<style type="text/css">

#wrapper 
{
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
}

#wrapper #content-wrapper {
  overflow-x: hidden;
  width: 100%;
  padding-top: 1rem;
/*  padding-bottom: 80px;*/
   margin-left: 225px;
}

.o-hidden {
  overflow: hidden !important;
}


.sidenav 
 {
/*   min-height: calc(100% - 56px);*/
 /* height: 100%;*/
   width: 225px !important;
   background-color: #f1f1f1;
   position: absolute;
   padding-bottom: 40px;
  }

 /* Style the sidenav links and the dropdown button */
 .sidenav a, .dropdown-btn 
{
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: black;
  display: block;
  border: none;
  background: none;
  width: 100%;
  text-align: left;
  cursor: pointer;
  outline: none;
}

/* On mouse-over */
.sidenav a:hover {
  color: #00aced;;
}


</style>
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>

<%

int course_id=Integer.parseInt(request.getParameter("course_id"));
String course_name=request.getParameter("course_name");
Rdao rd=new Rdao();
List<CourseContentInfo> mylist;
List<TopicContentInfo> mylist1;

CourseContentInfo C=new CourseContentInfo();
TopicContentInfo T=new TopicContentInfo();

%>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
<!-- header section -->
     <%@include file="headerstudent.jsp" %>
	<!-- header section end -->


	<!-- Page info -->
	<div class="page-info-section set-bg" data-setbg="img/page-bg/5.jpg">
		<div class="container">
			<div class="site-breadcrumb">
				<a href="student-dashboard.jsp">Home</a>
				<span>Course Content </span>
			</div>
		</div>
	</div>

	<div id="wrapper">
      <div class="sidenav">
            <div class="mt-3"> 
  	           <a  style="font-size: 30px; padding-bottom: 15px; text-decoration: none;" class="text-dark" href="">Topics</a>
             </div>	
				<%
					mylist=rd.showTopics(course_id);
				for(CourseContentInfo H:mylist)
		   		{
				%>
                 <a href="content1.jsp?id=<%=H.getId() %>&course_id=<%=H.getCourse_id() %>&course_name=<%=course_name %>" class="text-left ml-3"><%=H.getTopic_name() %></a>
                 
                <%
                }
                %>

      </div>
    
      <div id="content-wrapper">
	          <div class="container-fluid">
                     
                      	   <div class="card">
                      	     <h2 class=" mt-4 text-center"><%=course_name %></h2>
                      	    
                      	     <br><br>
                      	     <center>
                      	      <h3 class="ml-6 mt-4 mb-4 " >Welcome To The E-Portal</h3>
                      	   	 </center>
 
                      	   </div>
                    
              </div>   
       </div>

</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<!-- footer section -->
     <%@ include file="footer.jsp" %>
	<!-- footer section end -->

	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>