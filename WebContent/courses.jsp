<!DOCTYPE html>
<html lang="en">
<head>
	<title>Education Portal</title>
	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
       <script src="js/jquery-3.4.1.min.js"></script> 

	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

		<%@include file="header.jsp" %>


	<!-- Page info -->
	<div class="page-info-section set-bg" data-setbg="img/page-bg/1.jpg">
		<div class="container">
			<div class="site-breadcrumb">
				<a href="index.jsp">Home</a>
				<span>Courses</span>
			</div>
		</div>
	</div>
	<!-- Page info end -->


	<!-- search section -->
<!-- 	<section class="search-section ss-other-page">
		<div class="container">
			<div class="search-warp">
				<div class="section-title text-white">
					<h2><span>Search your course</span></h2>
				</div>
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						search form
						<form class="course-search-form">
							<input type="text" placeholder="Course">
							<input type="text" class="last-m" placeholder="Category">
							<button class="site-btn btn-dark">Search Couse</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- search section end -->


	<!-- course section -->
	<section class="course-section  pb-0">
		<div class="course-warp">
			<ul class="course-filter controls">
				<li class="control active" data-filter="all">All</li>
				<li class="control" data-filter=".design">Core Subject</li>
				<li class="control" data-filter=".web">Web Development</li>
			</ul>                                       
			<div class="row course-items-area">
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 web">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/f-2.jpg">
							<div class="price">Price: FREE</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>HTML AND CSS</h5>
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
							<div class="price">Price: &#8377; 15</div>
						</div><div class="course-info">
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
								<p>Sean Williams, <span>Developer</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br><br><br>
			<div class="featured-courses">
				<div class="featured-course course-item" id="html">
					<div class="course-thumb set-bg" data-setbg="img/courses/f-2.jpg">
						<div class="price">Price: FREE</div>
					</div>
					<div class="row">
						<div class="col-lg-6 offset-lg-6 pl-0">
							<div class="course-info">
								<div class="course-text">
									<div class="fet-note">Featured Course</div>
									<h5>HTML5 & CSS For Begginers</h5>
									<p>HTML, HyperText Markup Language, gives content structure and meaning by defining that content as, for example, headings, paragraphs, or images. CSS, or Cascading Style Sheets, is a presentation language created to style the appearance of conten using, for example, fonts or colors.<br>
									<br>The two languages HTML and CSS are independent of one another and should remain that way. CSS should not be written inside of an HTML document and vice versa. As a rule, HTML will always represent content, and CSS will always represent the appearance of that content.</p>
									<div class="students">120 Students</div>
								</div>
								<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/tony.jpg"></div>
								<p>Tony Stark, <span>Genius</span></p>
							</div>
							</div>
						</div>
					</div>
				</div>
				<div class="featured-course course-item" id="dbms">
					<div class="course-thumb set-bg" data-setbg="img/courses/f-4.jpg">
						<div class="price">Price: &#8377; 15</div>
					</div>
					<div class="row">
						<div class="col-lg-6 pr-0">
							<div class="course-info">
								<div class="course-text">
									<div class="fet-note">Featured Course</div>
									<h5>DBMS</h5>
									<p>DBMS Tutorial provides basic and advanced concepts of Database. Our DBMS Tutorial is designed for beginners.<br>
									Database management system is software that is used to manage the database.
<br><br>
Our DBMS Tutorial includes all topics of DBMS such as introduction, ER model, keys, relational model, join operation, SQL, functional dependency, transaction, concurrency control, etc.

									</p>
									<div class="students">120 Students</div>
								</div>
								<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/steve.jpg"></div>
								<p>Steve Rogers, <span>Lecturer</span></p>
							</div>
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="featured-course course-item" id="os">
					<div class="course-thumb set-bg" data-setbg="img/courses/F-6.png">
						<div class="price">Price: &#8377; 15</div>
					</div>
					<div class="row">
						<div class="col-lg-6 offset-lg-6 pl-0">
							<div class="course-info">
								<div class="course-text">
									<div class="fet-note">Featured Course</div>
									<h5>Operating System</h5>
									<p>	
									Operating System Tutorial provides the basic and advanced concepts of operating system . Our Operating system tutorial is designed for beginners, professionals and GATE aspirants. We have designed this tutorial after the completion of a deep research about every concept.
<br><br>
The content is described in detailed manner and has the ability to answer most of your queries. The tutorial also contains the numerical examples based on previous year GATE questions which will help you to address the problems in a practical manner.
									</p>
									<div class="students">120 Students</div>
								</div>
								<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/bruce.jpg"></div>
								<p>Bruce Banner, <span>Lecturer</span></p>
							</div>
							</div>
						</div>
					</div>
				</div>
				
				
				
				<div class="featured-course course-item" id="ds">
					<div class="course-thumb set-bg" data-setbg="img/courses/f-3">
						<div class="price">Price: $15</div>
					</div>
					<div class="row">
						<div class="col-lg-6 pr-0">
							<div class="course-info">
								<div class="course-text">
									<div class="fet-note">Featured Course</div>
									<h5>Data Structures</h5>
									<p>
									Data Structures (DS) tutorial provides basic and advanced concepts of Data Structure. Our Data Structure tutorial is designed for beginners and professionals.
<br><br>
Data Structure is a way to store and organize data so that it can be used efficiently.
<br><br>
Our Data Structure tutorial includes all topics of Data Structure such as Array, Pointer, Structure, Linked List, Stack, Queue, Graph, Searching, Sorting, Programs, etc.

									
									</p>
									<div class="students">120 Students</div>
								</div>
								<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/strange.jpg"></div>
								<p>Dr. Strange, <span>Lecturer</span></p>
							</div>
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="featured-course course-item" id="oops">
					<div   class="course-thumb set-bg" data-setbg="img/courses/f-7.jpg">
						<div class="price">Price: &#8377; 15</div>
					</div>
					<div class="row">
						<div class="col-lg-6 offset-lg-6 pl-0">
							<div class="course-info">
								<div class="course-text">
									<div class="fet-note">Featured Course</div>
									<h5>OOPS</h5>
									<p>	
									OBJECT ORIENTED PROGRAMMING (OOP) is a programming concept that works on the principles of abstraction, encapsulation, inheritance, and polymorphism. It allows users to create the objects that they want and then, create methods to handle those objects. The basic concept of OOPs is to create objects, re-use them throughout the program, and manipulate these objects to get results.
									<br><br>
									Object Oriented Programming popularly known as OOP, is used in a modern programming language like Java
									</p>
									<div class="students">120 Students</div>
								</div>
								<div class="course-author">
								<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/spidy.jpg"></div>
								<p>Peter Parker, <span>Lecturer</span></p>
							</div>
							</div>
						</div>
					</div>
				</div>
				</div>
				

				<div class="featured-course course-item" id="py">
					<div class="course-thumb set-bg" data-setbg="img/courses/f-8.jpg">
						<div class="price">Price: &#8377; 15</div>
					</div>
					<div class="row">
						<div class="col-lg-6 pr-0">
							<div class="course-info">
								<div class="course-text">
									<div class="fet-note">Featured Course</div>
									<h5>Python</h5>
									<p>
Python tutorial provides basic and advanced concepts of Python. Our Python tutorial is designed for beginners and professionals.
Python is a simple, general purpose, high level, and object-oriented programming language.
Python is an interpreted scripting language also. Guido Van Rossum is known as the founder of Python programming.
<br><br><br>
Our Python tutorial includes all topics of Python Programming such as installation, control statements, Strings, Lists, Tuples, Dictionary, Modules, Exceptions, Date and Time, File I/O, Programs, etc. There are also given Python interview questions to help you better understand Python Programming.
									
									</p>
									<div class="students">120 Students</div>
								</div>
								<div class="course-author">
								
								<div class="ca-pic set-bg" data-setbg="img/authors/6.jpg"></div>
								<p>William Parker, <span>Developer</span></p>
							</div>
							</div>
						</div>
					</div>
				</div>
				


				<div class="featured-course course-item" id="java">
					<div   class="course-thumb set-bg" data-setbg="img/courses/f-9.jpg">
						<div class="price">Price: &#8377; 15</div>
					</div>
					<div class="row">
						<div class="col-lg-6 offset-lg-6 pl-0">
							<div class="course-info">
								<div class="course-text">
									<div class="fet-note">Featured Course</div>
									<h5>JAVA</h5>
									<p>	
									Our core Java programming tutorial is designed for students and working professionals. Java is an object-oriented, class-based, concurrent, secured and general-purpose computer-programming language. It is a widely used robust technology.
									<br><br>
									Java is a programming language and a platform. Java is a high level, robust, object-oriented and secure programming language.

Java was developed by Sun Microsystems (which is now the subsidiary of Oracle) in the year 1995. James Gosling is known as the father of Java. Before Java, its name was Oak. Since Oak was already a registered company, so James Gosling and his team changed the Oak name to Java.
<br><br>
									</p>
									<div class="students">120 Students</div>
								</div>
								
								<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/widow.jpg"></div>
								<p>Black Widow, <span>Developer</span></p>
							</div>
							</div>
						</div>
					</div>
				</div>
				

<div class="featured-course course-item" id="php">
					<div class="course-thumb set-bg" data-setbg="img/courses/f-10.jpg">
						<div class="price">Price: &#8377; 15</div>
					</div>
					<div class="row">
						<div class="col-lg-6 pr-0">
							<div class="course-info">
								<div class="course-text">
									<div class="fet-note">Featured Course</div>
									<h5>PHP</h5>
									<p>
									PHP tutorial for beginners and professionals provides in-depth knowledge of PHP scripting language. Our PHP tutorial will help you to learn PHP scripting language easily.
<br><br>
This PHP tutorial covers all the topics of PHP such as introduction, control statements, functions, array, string, file handling, form handling, regular expression, date and time, object-oriented programming in PHP, math, PHP MySQL, PHP with Ajax, PHP with jQuery and PHP with XML.
									<br><br>
									PHP is an open-source, interpreted, and object-oriented scripting language that can be executed at the server-side. PHP is well suited for web development. Therefore, it is used to develop web applications (an application that executes on the server and generates the dynamic page.
									
									</p>
									<div class="students">120 Students</div>
								</div>
								<div class="course-author">
								
								<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/8.jpg"></div>
								<p>Sean Williams, <span>Developer</span></p>
							</div>							
							</div>
						</div>
					</div>
				</div>
</div>

			</div>
		</div>
	</section>
	<!-- course section end -->
<br><br>


	<!-- banner section -->
	<section class="banner-section spad">
		<div class="container">
			<div class="section-title mb-0 pb-2">
				<h2>Join Our Community Now!</h2>
				<p>This is one of the Biggest Platform for the Learner who ar keen to learn.<b>All the Courses are free of cost..</b></p>
			</div>
			<div class="text-center pt-5">
			<h6>FOR MORE COURSE PLEASE REGISTER</h6><br>
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