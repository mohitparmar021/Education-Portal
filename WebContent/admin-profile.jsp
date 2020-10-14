<%@page import="bean.LoginInfo"%>
<%@page import="DAO.Rdao"%>

<%@page import="java.util.*" %>
<%
Rdao rd=new Rdao();
List<LoginInfo> mylist;
//UserInfo U=new UserInfo();
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
   <script src="js/jquery-3.4.1.min.js"></script> 


<style type="">
	.account-info
	{
	  font-size: 40px;
	  color:#00aced;
	}  
	.profile-btn
	{
		display: inline-block;
	min-width: 196px;
	text-align: center;
	border: 2px solid #00aced;
	padding: 15px 10px;
	font-weight: 100;
	font-size: 16px;
	border-radius: 28px;
	position: relative;
	color:#00aced;
	cursor: pointer;
	margin-left: 250px;
	}
    
    .label-profile
    {
    	 font-size: 20px;
	  color:#00aced;
    }

  .profile-btn:hover
    {
    	background-color:#00aced;
    	color: white;

    }
    .star-red
    {
    	color: red;
    	font-size: 20px;
    	margin-left:15px;

    }


</style>




</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	

		<%@include file="adminheader.jsp" %>
<%
//String email=U.getEmail();
%>


<!-- Page info -->
	<div class="page-info-section set-bg" data-setbg="img/page-bg/5.jpg">
		<div class="container">
			<div class="site-breadcrumb">
				<a href="admin-dashboard.jsp">Home</a>
				<span>Profile</span>
			</div>
		</div>
	</div>
	<!-- Page info end -->


<!-- profile section -->
		<div class="container mt-5 mb-5">
			<div class="course-meta-area">
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						
						 
						   
						   <%
						   		mylist=rd.showAdminProfile();
						   		for(LoginInfo H:mylist)
						   		{
						   
						   %>
						   
                          <div class="row mt-5">
						   	        <div class="col-lg-6"> 
						   	         <div class="form-group">
						   	      	        <label class="label-profile">ID<span class="star-red">**</span></label>		
						   	      	  </div>        				   	      	        
						   	        </div>
						   	        <div class="col-lg-6"> 
						   	       	   <input type="text"  readonly name="" value="<%=H.getUser_id() %>" class="form-control">
						   	        </div>						   	   
						   </div>
						   
						   
						  <%System.out.println(H.getUsername());%>
						     <div class="row mt-3 ">
						   	        <div class="col-lg-6"> 
						   	         <div class="form-group">
						   	      	        <label class="label-profile">UserName<span class="star-red">**</span></label>		
						   	      	  </div>        				   	      	        
						   	        </div>
						   	        <div class="col-lg-6"> 
						   	       	   <input type="text" readonly  name="" value="<%=H.getUsername() %>" class="form-control">
						   	        </div>						   	   
						   </div>
						     

<%
}
%>


						
					</div>
				</div>
			</div>
	  </div>
	<!-- profile  End-->





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