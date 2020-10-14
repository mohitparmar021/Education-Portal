<%@page import="DAO.Rdao"%>

<%

int id=Integer.parseInt(request.getParameter("id"));
int course_id=Integer.parseInt(request.getParameter("course_id"));
String course_name=request.getParameter("course_name");
String category=request.getParameter("category");

//System.out.println(id);System.out.println(course_id);System.out.println(course_name);System.out.println(category);

Rdao rd=new Rdao();

if(rd.updateCourse(id, course_id, course_name, category))
{
	%>
	  <script type="text/javascript">
	     alert("COURSE UPDATED SUCCESSFULLY.........");
	      document.location.href='available-course.jsp'
	 </script>	
	  <%	
}
else
{
	%>
	  <script type="text/javascript">
	     alert("SOMETHING WENT WRONG,PLEASE TRY AGAIN LATER.........");
	      document.location.href='available-course.jsp'
	 </script>	
	  <%		
}
%>