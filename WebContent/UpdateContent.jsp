<%@page import="DAO.Rdao"%>

<%

int id=Integer.parseInt(request.getParameter("id"));
int course_id=Integer.parseInt(request.getParameter("course_id"));
String topic_name=request.getParameter("topic_name");
String topic_content=request.getParameter("topic_content");

Rdao rd=new Rdao();

if(rd.updateContent(id,topic_name, topic_content))
{
	%>
	  <script type="text/javascript">
	     alert("CONTENT ADDED SUCCESSFULLY.........");
	      document.location.href='add-topic-content.jsp'
	 </script>	
	  <%	
}
else
{
	%>
	  <script type="text/javascript">
	     alert("SOMETHING WENT WRONG,PLEASE TRY AGAIN LATER.........");
	      document.location.href='add-topic-content.jsp'
	 </script>	
	  <%		
}
%>