
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
				<span>Assign Course </span>
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
                             <h3 class="mb-4">Assign Course To Teacher</h3>
                    	       <table border="2px" class="table  mt-3 table-responsive-sm table-responsive-lg">
                                 <thead>
                                     <tr class="text-white" style="background:#00aced;">
                                            <th>Teacher Id</th>
                                            <th>Teacher Name</th>
                                            <th>Email</th>
                                            <th>Action</th>
                                            <th>Update</th>
                                            <th>Delete</th>
                                         </tr>
                                      </thead>
                                      <tbody>
      <%
             Rdao rd=new Rdao();
      		ResultSet rs= rd.showTeacherInfo();
      		while(rs.next())
      		{
                                      
      %>
                                             <tr>
                                                  <td ><%=rs.getInt(1) %></td>
                                                   <td ><%=rs.getString(2) %></td>
                                                    <td ><%=rs.getString(3) %></td>
                                                     <td ><a href="assign-to-teacher.jsp?teacher_id=<%=rs.getInt(1) %>&t_name=<%=rs.getString(2) %>">Assign</a></td>
                                                     <td ><a href="update-teacher-course.jsp?teacher_id=<%=rs.getInt(1) %>&t_name=<%=rs.getString(2) %>">Update</a></td>
                                                     <td ><a href="DeleteAssignCourse.jsp?teacher_id=<%=rs.getInt(1) %>&t_name=<%=rs.getString(2) %>">Delete</a></td>
                                             </tr>
                                             
       <%
      		}
        %>
                                      </tbody>
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