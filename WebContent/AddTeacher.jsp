<%@page import="DAO.Rdao"%>
<%@page import="bean.*"%>

<%
	
	String t_name=request.getParameter("t_name");
	String t_email=request.getParameter("t_email");
	long t_mobile=Long.parseLong(request.getParameter("t_mobile"));
	String qualification=request.getParameter("qualification");
	
	Rdao rd=new Rdao();
	
	if(rd.addTeacher(t_name, t_email, t_mobile, qualification))
	 {
	  	  %>
	  	  <script type="text/javascript">
	      	     alert("TEACHER ADDED SUCESSFULLY.....");
	      	      document.location.href='add-new-teacher.jsp'
	      	 </script>	
	  	  <%
	    }
		else
		{
		  	  %>
		  	  <script type="text/javascript">
		      	     alert("SOMETHING WENT WRONG, PLEASE TRY AGAIN LATER......");
		      	      document.location.href='add-new-teacher.jsp'
		      	 </script>	
		  	  <%
		    }

%>