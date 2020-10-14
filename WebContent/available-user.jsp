<%@page import="bean.*"%>
<%@page import="DAO.Rdao"%>
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

<%
Rdao rd=new Rdao();
 List<UserInfo> mylist;
 UserInfo U= new UserInfo();
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
				<span>Available User </span>
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
                             <h3 class="mb-4">Available User</h3>
                    	       <table border="2px" class="table  mt-3 table-responsive-sm table-responsive-lg">
                                 <thead>
                                     <tr class="text-white" style="background:#00aced;">
                                            <th>User Id</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Profession</th>
                                            <th>Qualification</th>
                                            <th>Address</th> 
                                         </tr>
                                      </thead>
                                      
         <%
              mylist= rd.showAvailableUser();
         	  for(UserInfo U1:mylist)
         	  {
                                      
         %>
         								<tbody>
                                             <tr>
                                                  <td ><%=U1.getId() %></td>
                                                   <td ><%=U1.getName() %></td>
                                                    <td ><%=U1.getEmail() %></td>
                                                    <td><%=U1.getMobile() %></td>
                                                    <td><%=U1.getProfession() %></td>
                                                    <td><%=U1.getHighest_qualification() %></td>
                                                    <td><%=U1.getAddress() %></td>
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