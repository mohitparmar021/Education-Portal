<%@page session="true" %> 

<%@page errorPage="Error.jsp" %>

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
	<link rel="stylesheet" href="css/style.css"/>
	   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
 
		<link rel="stylesheet" href="css/social-style.css"/>
 
   <script src="js/jquery-3.4.1.min.js"></script> 
   <script src="js/signup-modal.js"></script>

	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<script type="text/javascript">
	function validate()
	{
		
		var mail=document.getElementsByName("uname");
		var pass=document.getElementsByName("pass");
		
		if(mail=="")
			{
			 alert("Enter UserName");
             document.getElementByName("uname").focus();
             return false;
			}
		if(pass=="")
		{
		 alert("Enter Password");
         document.getElementByName("pass").focus();
         return false;
		}
		return true;
	}
	
	</script>
	
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@include file="header.jsp" %>


	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="img/back5.jpg">
		<div class="container">
			<div class="hero-text text-white">
				<h2>Get The Best Online <br> Courses</h2>
				<p></p>
			</div>
			
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<form action="checkLogin.jsp" method="post" class="intro-newslatter">
						<input type="text" name="uname" placeholder="Enter Email">
						<input type="password" name="pass" class="last-s" placeholder="Enter Password">
						<input type="submit" class="site-btn login-btn" value="Login"  onclick="return validate();">
					</form>
				</div>
			</div>
			</section>
			<br>
			<center><h4><u>SIGN IN USING </u></h4></center>
			<br>
		    <div class="row mt-4">
				<div class="col-lg-12">
					     <div class="middle">
					     
     
      <a class="btn" href="googlehome.jsp">
        <i class="fab fa-google"></i>
      </a>
       <a class="btn" href="fbhome.jsp">
        <i class="fab fa-facebook-f"></i>
      </a>
      
      
    </div>
				</div>
			</div>
					
	
	<!-- Hero section end -->
<br><br>

	<!-- categories section -->
	<section class="categories-section spad">
		<div class="container">
			<div class="section-title">
				<h2>Our Course Categories</h2>
				<p></p>
			</div>
			<div class="row">
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="img/categories/1.jpg"></div>
						<div class="ci-text">
							<h5>Web Design</h5>
							<p></p>
							<span>10 Courses</span>
						</div>
					</div>
				</div>
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="img/categories/2.jpg"></div>
						<div class="ci-text">
							<h5>Programming Languages</h5>
							<p></p>
							<span>5 Courses</span>
						</div>
					</div>
				</div>
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="img/categories/3.jpg"></div>
						<div class="ci-text">
							<h5>IT Development</h5>
							<p></p>
							<span>20 Courses</span>
						</div>
					</div>
				</div>
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="img/categories/4.jpg"></div>
						<div class="ci-text">
							<h5>DBMS Tutorial</h5>
							<p></p>
							<span>40 Lectures</span>
						</div>
					</div>
				</div>
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="img/categories/5.jpg"></div>
						<div class="ci-text">
							<h5>Operating System</h5>
							<p></p>
							<span>50 Lectures</span>
						</div>
					</div>
				</div>
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="img/categories/6.jpg"></div>
						<div class="ci-text">
							<h5>Others</h5>
							<p></p>
							<span>25 Courses</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- categories section end -->


	<!-- search section -->
<!-- 	<section class="search-section">
		<div class="container">
			<div class="search-warp">
				<div class="section-title text-white">
					<h2>Search your course</h2>
				</div>
				<div class="row">
					<div class="col-md-10 offset-md-1">
						
						<form action="" method="post" class="course-search-form">
							<input type="text" value="" placeholder="Course">
							<input type="text" value="" class="last-m" placeholder="Category">
							<input type="submit" class="site-btn" value="Login">
						</form>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- search section end -->


	<!-- course section -->
	<section class="course-section spad1">
		<div class="container">
			<div class="section-title mb-0">
				<h2>Featured Courses</h2>
				<p></p>
			</div>
		</div>
		<div class="course-warp">
			<ul class="course-filter controls">
				<li class="control active" data-filter="all">All</li>
			<!-- 	<li class="control" data-filter=".finance">Finance</li> -->
				<li class="control" data-filter=".design">Core Subjects</li>
				<li class="control" data-filter=".web">Web Development</li>
				<!-- <li class="control" data-filter=".photo">Photography</li> -->
			</ul>                                       
			<div class="row course-items-area">
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 design">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/f-2.jpg">
							<div class="price">Price: FREE</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>HTML And CSS</h5>
								<p></p>
								<div class="students"><a class="students"  href="courses.jsp#html">View Details</a></div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/tony.jpg"></div>
								<p>Tony Stark, <span>Genius</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 design">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/f-4.jpg">
							<div class="price">Price: &#x20b9; 15</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>DBMS</h5>
								<p></p>
								<div class="students"><a class="students"  href="courses.jsp#dbms">View Details</a></div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/steve.jpg"></div>
								<p>Steve Rogers, <span>Lecturer</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 design">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/os.jpg">
							<div class="price">Price: &#8377; 15</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>Operating System</h5>
								<p></p>
							<div class="students"><a class="students"  href="courses.jsp#os">View Details</a></div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/bruce.jpg"></div>
								<p>Bruce Banner, <span>Lecturer</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 design">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/ds.jpg">
							<div class="price">Price: &#8377; 15</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>Data Structure</h5>
								<p></p>
								<div class="students"><a class="students"  href="courses.jsp#ds">View Details</a></div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/strange.jpg"></div>
								<p>Dr. Strange, <span>Lecturer</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 design">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/f-7.jpg">
							<div class="price">Price: FREE</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>OOPS</h5>
								<p></p>
								<div class="students"><a class="students"  href="courses.jsp#oops">View Details</a></div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/spidy.jpg"></div>
								<p>Peter Parker, <span>Lecturer</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 web">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/f-8.jpg">
							<div class="price">Price: &#8377; 15</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>Python</h5>
								<p></p>
								<div class="students"><a class="students"  href="courses.jsp#py">View Details</a></div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/6.jpg"></div>
								<p>William Parker, <span>Developer</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 web">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/f-9.jpg">
							<div class="price">Price: &#8377; 15</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>Java</h5>
								<p></p>
							<div class="students"><a class="students"  href="courses.jsp#java">View Details</a></div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/widow.jpg"></div>
								<p>Black Widow, <span>Developer</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 web">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/f-10.jpg">
							<div class="price">Price: &#8377; 15</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>PHP</h5>
								<p></p>
							<div class="students"><a class="students"  href="courses.jsp#php">View Details</a></div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/8.jpg"></div>
								<p>William Parker, <span>Developer</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- course section end -->


	<!-- signup section -->
	<section class="signup-section spad">
		<div class="signup-bg set-bg" data-setbg="img/signup-bg.jpg"></div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6">
					<div class="signup-warp">
						<div class="section-title text-white text-left">
							<h2>Sign up to became a teacher</h2>
							<p>Write Your article and submit us in Pdf format..</p>
						</div>
						<!-- signup form -->
						<form method="post" action="" class="signup-form">
							<input type="text"  value="" placeholder="Your Name">
							<input type="text" value="" placeholder="Topic Name">
							<input type="email" value="" placeholder="Your E-mail">
							<input type="number" value="" placeholder="Your Phone">
							<label for="v-upload" class="file-up-btn site-btn">Upload File</label>
							<input type="file" name="" id="v-upload">
							<input type="submit" class="site-btn" value="Login">
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- signup section end -->


	<!-- banner section -->
	<section class="banner-section spad">
		<div class="container">
			<div class="section-title mb-0 pb-2">
				<h2>Join Our Community Now!</h2>
				<br>
				<p style="color:black;">The Education portal or simply an e-portal is the platform which is created with the aim to provide quality aids to the students, in order to boost their theoretical as well as practical knowledge.</p>
			<br>
			<p style="color:black;">Most of the time its happens that student can't find both video content and theoretical content at same platform.At these platform we provide both theoretical and visual(video) lecture  </p>
			</div>
			<div class="text-center pt-5">
               <button class="site-btn registered">Register Now</button>
			</div>
		</div>
	</section>
	<!-- banner section end -->


<%@include file="footer.jsp" %>

    

           



<script type="text/javascript">
  

// Get the modal
var modal = document.getElementById("signup");

window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}


$('document').ready(function(){

     $('.registered').click(function(){
            
             $('#signup').show();
             
     });

});




</script>



	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	

</body>
</html>