<%@page import="DAO.Rdao"%>
<%@page import="bean.*"%>

<%
	int course_id=Integer.parseInt(request.getParameter("course_id"));
	String course_name=request.getParameter("course_name");
	String category=request.getParameter("category");
	
	//System.out.print(course_id+" "+course_name+" "+category);
	
	Rdao rd=new Rdao();
	
	if(rd.addCourse(course_id, course_name, category))
	 {
  	  %>
  	  <script type="text/javascript">
      	     alert("COURSE ADDED SUCESSFULLY,PLEASE ASSIGN TEACHER TO THE COURSE...");
      	      document.location.href='add-new-course.jsp'
      	 </script>	
  	  <%
    }
	else
	{
	  	  %>
	  	  <script type="text/javascript">
	      	     alert("SOMETHING WENT WRONG, TRY OTHER COURSE CODE...");
	      	      document.location.href='add-new-course.jsp'
	      	 </script>	
	  	  <%
	    }
	
%>