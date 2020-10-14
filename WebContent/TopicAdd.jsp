<%@page import="DAO.Rdao"%>

<%
String c_id=request.getParameter("course_id");
if(c_id.equals("Please - Select"))
{
	%>
	<script type="text/javascript">
    alert("PLEASE ENTER COURSE ID.........");
     document.location.href='add-course-topic.jsp'
	</script>
<%		
}
else
{
	
int course_id=Integer.parseInt(c_id);
String topic_name=request.getParameter("topic_name");

//System.out.println(course_id+"  "+topic_name);

Rdao rd=new Rdao();
if(rd.addTopic(course_id, topic_name))
{
	%>
	<script type="text/javascript">
    alert("TOPIC ADDED SUCCESSFULLY.........");
     document.location.href='add-course-topic.jsp'
	</script>
<%		
}
else
{
	%>
	<script type="text/javascript">
    alert("SOMETHING WENT WRONG, PLEASE TRY AGAIN LATER .........");
     document.location.href='add-course-topic.jsp'
	</script>
<%		
}

}
%>