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
				<span>Available Teacher </span>
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
                             <h3 class="mb-4">Available Teacher</h3>
                    	       <table border="2px" class="table  mt-3 table-responsive-sm table-responsive-lg">
                                 <thead>
                                     <tr class="text-white" style="background:#00aced;">
                                            <th>Teacher Id</th>
                                            <th>Teacher Name</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Qualification</th>
                                            <th>Course Name</th>
                                            <th>Action</th>
                                            <th>Action</th>
                                         </tr>
                                      </thead>
                                      <%
                                      	Rdao rd=new Rdao();
                                      	ResultSet rs=rd.availableTeacher();
                                      	while(rs.next())
                                      	{
                                      %>
                                      <tbody>
                                             <tr>
                                                  <td ><%=rs.getInt(1) %></td>
                                                   <td ><%=rs.getString(2) %></td>
                                                    <td ><%=rs.getString(3) %></td>
                                                    <td><%=rs.getLong(4) %></td>
                                                    <td><%=rs.getString(5) %></td>
                                                    <td><%=rs.getString(6) %></td>
                                                     <td ><a href="update-teacher-info.jsp?id=<%=rs.getInt(1)%>&name=<%=rs.getString(2) %>&email=<%=rs.getString(3) %>&mob=<%=rs.getLong(4)%>&qua=<%=rs.getString(5) %>">Update Info</a></td>
                                                     <td ><a href="#">Delete</a></td>
                                             </tr>
                                      </tbody>
                                      <%
                                      	}
                                      %>
                                   </table>



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