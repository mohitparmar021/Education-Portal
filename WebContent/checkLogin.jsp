<%@page import="DAO.Rdao"%>
<%@page session="true" %> 

<%

String username=request.getParameter("uname");
String password=request.getParameter("pass");

if(username!=null && password!=null)
{
		if(Rdao.checkLogin(username,password))
		{
			 session.setAttribute("user", username);
             session.setAttribute("pass", password);
             if(username.equals("administrator@eportal.org") && password.equals("admin@eportal12345"))
             {
            	 response.sendRedirect("admin-dashboard.jsp");
             }
             else
             {
              response.sendRedirect("student-dashboard.jsp");
             }
        }
          else
          {
        	  %>
        	  <script type="text/javascript">
	        	     alert("INVALID USERNAME OR PASSWORD.........");
	        	      document.location.href='index.jsp'
	        	 </script>	
        	  <%
          }
}
%>	
	
	