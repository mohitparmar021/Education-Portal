<%@page import="DAO.Rdao"%>


<%

String username=request.getParameter("username");
String password=request.getParameter("password");
String password1=request.getParameter("password1");

/*System.out.println(username);
System.out.println(password);
System.out.println(password1);
*/

if(password.equals(password1))
{
if(username!=null && password!=null)
{
	Rdao rd=new Rdao();
	int a=rd.autoIncr();
	
		if(rd.registerUser(a,username, password))
		{
			 %>
     		<script type="text/javascript">
     	     alert("Register Sucessfully,Please Login Now.....");
     	      document.location.href='index.jsp'
     	 </script>	
     	 <% 
        }
          else
          {
        	  %>
        		<script type="text/javascript">
        	     alert("INNVALID USERNAME OR PASSWORD..............");
        	      document.location.href='index.jsp'
        	 </script>	
        	 <%
        	  
          }
}
}
else
{
	%>
	<script type="text/javascript">
     alert("Confirm Password Not Matched with Password..............");
      document.location.href='index.jsp'
 </script>	
 <%
}
%>	
	
	