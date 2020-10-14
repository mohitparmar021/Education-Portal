<%
    if(session.isNew())
    {
     response.sendRedirect("index.jsp");
    }
%>


<%@ page import="com.javapapers.java.mail.*"%>
<%@ page import="javax.mail.*"%>

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
	<div class="page-info-section set-bg" data-setbg="img/page-bg/4.jpg">
		<div class="container">
			<div class="site-breadcrumb">
				<a href="index.jsp">Home</a>
				<span>Contact</span>
			</div>
		</div>
	</div>
	<!-- Page info end -->




	<!-- Page -->
	<section class="contact-page spad pb-0">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="contact-form-warp">
						<div class="section-title text-white text-left">
							<h2>Get in Touch</h2>
							<p></p>
						</div>
						<form action=""  method="post" class="contact-form">
						
							<input type="text" id="pp-name" name="name"
							placeholder="enter your name here" title="Please enter your name"
							class="required" aria-required="true" required>
							
							<input type="text" id="pp-email" name="email"
							placeholder="enter your email address here"
							title="Please enter your email address" class="required email"
							aria-required="true" required>
							
							<input type="text" id="pp-phone" name="phone"
							placeholder="enter your phone number here"
							title="Please enter your phone number" class="required phone"
							aria-required="true" required>
							
							<div class="label">Message:</div>
					<div class="field">
						<textarea id="about-project" name="message"
							placeholder="enter your message here"></textarea>
					</div>
							
						<input type="submit" class="site-btn" name="submit" value="Send Message"
						id="send-message" style="clear: both;">
						</form>
					</div>
				</div>
				
				<%
	String message = null;
	String status = null;
	if (request.getParameter("submit") != null) {
		JavaEmail javaEmail = new JavaEmail();
		javaEmail.setMailServerProperties();
		String emailSubject = "Contact Form using Java JSP GMail";
		String emailBody = "";
		if (request.getParameter("name") != null) {
			emailBody = "Sender Name: " + request.getParameter("name")
					+ "<br>";
		}
		if (request.getParameter("email") != null) {
			emailBody = emailBody + "Sender Email: "
					+ request.getParameter("email") + "<br>";
		}
		if (request.getParameter("phone") != null) {
			emailBody = emailBody + "Sender Phone: "
					+ request.getParameter("phone") + "<br>";
		}
		if (request.getParameter("message") != null) {
			emailBody = emailBody + "Message: " + request.getParameter("message")
					+ "<br>";
		}
		javaEmail.createEmailMessage(emailSubject, emailBody);
		try {
			javaEmail.sendEmail();
			status = "success";
			message = "Email sent Successfully!";
		} catch (MessagingException me) {
			status = "error";
			message = "Error in Sending Email!";
		}
	}
%>
				
				<div class="col-lg-4">
					<div class="contact-info-area">
						<div class="section-title text-left p-0">
							<h2>Contact Info</h2>
							<p>Hello, if you have any suggestions, query or  anything else feel free to contact us.</p>
						</div>
						<div class="phone-number">
							<span>Direct Line</span>
							<h2>9229498055</h2>
						</div>
						<ul class="contact-list">
							<li>Knowledge Village, Rajendra Nagar A.B. Road, Indore-452012</li>
							<li>9229498055, 9893167834, 9826734822, 0731 4014578</li>
							<li>myeportal@gmail.com</li>

						</ul>
						<div  class="social-links">
							<a href="https://www.facebook.com/IPSAIndore/"><i class="fa fa-facebook"></i></a>
							<a href="https://www.instagram.com/ipsacademyindore/"><i class="fa fa-instagram"></i></a>
							<a href="https://twitter.com/ipsacademy_in?lang=en"><i class="fa fa-twitter"></i></a>
							<a href="https://www.linkedin.com/in/ipsacademyindore/?originalSubdomain=in"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</section>
	<!-- Page end -->


	<!-- banner section -->
	<section class="banner-section spad">
		<div class="container">
			<div class="section-title mb-0 pb-2">
				<h2>Join Our Community Now!</h2>
				<p>This is one of the Biggest Platform for the Learner who ar keen to learn.<b> All the Courses are free of cost..</b></p>
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