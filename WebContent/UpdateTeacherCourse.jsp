<%@page import="DAO.Rdao"%>
<%
int teacher_id=Integer.parseInt(request.getParameter("teacher_id"));
String t_name=request.getParameter("t_name");
int course_id=Integer.parseInt(request.getParameter("course_id"));
String course_name=request.getParameter("course_name");

System.out.println(teacher_id+" "+t_name+" "+course_id+" "+course_name+" ");

Rdao rd=new Rdao();
if(rd.updateTeacherCourse(teacher_id, t_name, course_id, course_name))
{
	 %>
 	  <script type="text/javascript">
     	     alert("COURSE ASSIGNED TO TEACHER ");
     	      document.location.href='admin-dashboard.jsp'
     	 </script>	
 	  <%
   }
	else
	{
	  	  %>
	  	  <script type="text/javascript">
	      	     alert("SOMETHING WENT WRONG........... ");
	      	      document.location.href='admin-dashboard.jsp'
	      	 </script>	
	  	  <%
	    }
%>
