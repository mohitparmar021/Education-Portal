
<%@page import="DAO.Rdao"%>
<%
int id=Integer.parseInt(request.getParameter("teacher_id"));
String name=request.getParameter("t_name");
String email=request.getParameter("t_email");
long mob=Long.parseLong(request.getParameter("t_mobile"));
String qua=request.getParameter("qualification");

Rdao rd=new Rdao();
if(rd.saveTeacherUpdate(id, name, email, mob, qua))
{
	  %>
	  <script type="text/javascript">
  	     alert("INFORMATION UPDATED.........");
  	      document.location.href='available-teacher.jsp'
  	 </script>	
	  <%
}
else
{
	  %>
	  <script type="text/javascript">
  	     alert("SOMETHING WENT WRONG,PLEASE TRY AGAIN LATER.........");
  	      document.location.href='available-teacher.jsp'
  	 </script>	
	  <%
}

%>