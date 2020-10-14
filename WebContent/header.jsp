<%
    if(session.isNew())
    {
     response.sendRedirect("index.jsp");
    }

%>

<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="site-logo">
						<img src="img/e-portal.png" alt="">
					</div>
					<div class="nav-switch">
						<i class="fa fa-bars"></i>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					 <button class="site-btn header-btn registered">Register</button>
					<nav class="main-menu">
						<ul>
							<li><a href="index.jsp">Home</a></li>
							<li><a href="about.jsp">About us</a></li>
							<li><a href="courses.jsp">Courses</a></li>
							<li><a href="contact.jsp">Contact</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->
