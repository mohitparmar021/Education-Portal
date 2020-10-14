
<%@page import="DAO.Rdao"%>

<%
int id=Integer.parseInt(request.getParameter("teacher_id"));
String name=request.getParameter("t_name");

Rdao rd=new Rdao();
if(rd.deleteAssigCourse(id))
{
	  %>
	  <script type="text/javascript">
    	     alert("DELETED........... ");
    	      document.location.href='assign-course.jsp'
    	 </script>	
	  <%
  }
	else
	{
	  	  %>
	  	  <script type="text/javascript">
	      	     alert("SOMETHING WENT WRONG........... ");
	      	      document.location.href='assign-course.jsp'
	      	 </script>	
	  	  <%
	    }
%>
