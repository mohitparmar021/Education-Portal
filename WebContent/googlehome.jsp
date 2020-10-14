<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Google Login
   </title>
   <script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="712626757911-osb2p8mcl6592oom6a5mi0d5d6bikeii.apps.googleusercontent.com">
</head>
<body>
   <div class="g-signin2" data-onsuccess="onSignIn" id="myP" style="margin-left: 200PX" ></div>
      <img id="myImg"><br>
      <p id="name"></p>
      <div id="status">
   </div>
   <script type="text/javascript">
      function onSignIn(googleUser) {
      // window.location.href='success.jsp';
      var profile = googleUser.getBasicProfile();
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden";
      document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=student-dashboard.jsp?email='+email+'&name='+name+'/>Continue with Google login</a></p>'
   }
     
      
   </script>
   <button onclick="myFunction()">Sign Out</button>
   <script>
      function myFunction() {
      gapi.auth2.getAuthInstance().disconnect();
      location.reload();
   }
   </script>
</body>
</html>