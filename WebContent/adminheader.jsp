<%
    if(session.isNew())
        response.sendRedirect("index.jsp");
%>

<%@page import="bean.UserInfo"%>
<%@page import="DAO.Rdao"%>

<%

//UserInfo UI=new UserInfo();
//Rdao rdao=new Rdao();
String user1=null;
//String user2=null;
user1=(String)(session.getAttribute("user"));
/*user2=(String)(session.getAttribute("gmail"));
System.out.println(user1+"  "+user2);
if(user2==null)
{
		UI=rdao.getYourEmail(user1);
}
else
{
	UI=rdao.getYourEmail(user2);
}
*/
%>


<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="site-logo">
						<img src="img/e-portal1.png" alt="">
					</div>
					<div class="nav-switch">
						<i class="fa fa-bars"></i>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					 <!--    <div class="site-btn header-btn "><%=user1%></div> -->
					<nav class="main-menu">
						<ul>
							<li><a href="admin-dashboard.jsp">Home</a></li>
							<li><a href="#">Search</a></li>
							<li><a href="admin-profile.jsp">Profile</a></li>
							<li><a href="logout.jsp">Logout</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->