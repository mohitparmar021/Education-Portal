
<%@page import="DAO.Rdao"%>

<%
int id=Integer.parseInt(request.getParameter("id"));

Rdao rd=new Rdao();
if(rd.deleteAvailableCourse(id) )
{
	  %>
	  <script type="text/javascript">
    	     alert("COURSES DELETED........... ");
    	      document.location.href='available-course.jsp'
    	 </script>	
	  <%
  }
	else
	{
	  	  %>
	  	  <script type="text/javascript">
	      	     alert("SOMETHING WENT WRONG........... ");
	      	      document.location.href='available-course.jsp'
	      	 </script>	
	  	  <%
	    }
%>
