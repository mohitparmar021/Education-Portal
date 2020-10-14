
<%@page import="DAO.Rdao"%>
<%@page import="bean.UserInfo"%>
<%@include file="headerstudent.jsp" %>
<%/*
<jsp:useBean class="bean.UserInfo" id="P">
    <jsp:setProperty name="P" property="*"></jsp:setProperty>
</jsp:useBean>*/
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
        <title>E-portal</title>
    </head>
    <body>
        <%
        String name=request.getParameter("name");
        //String mail=request.getParameter("email");
       // String mob=;
        //int no=Integer.parseInt(request.getParameter("mobile")) ; 
        long no=Long.parseLong(request.getParameter("mobile"));
        String pro=request.getParameter("profession");
        String hq=request.getParameter("highest_qualification");
        String add=request.getParameter("address");

       // System.out.println(no);
        String mail=UI.getEmail();
        System.out.println(name+mail+pro+hq+add);
           Rdao rd=new Rdao();
            if(rd.updateProfile(name,no,mail,pro,hq,add))
            {
            	%>
         		<script type="text/javascript">
         	     alert("PROFILE UPDATED SUCCESSFULLY......");
         	      document.location.href='student-dashboard.jsp'
         	 </script>	
         	 <% 
            }
              else
              {
            	  %>
            		<script type="text/javascript">
            	     alert("SORRY, SOMETHING WENT WRONG PLEASE TRY AGAIN LATER..");
            	      document.location.href='profile.jsp'
            	 </script>	
            	 <%
            	  
              }

        %>
            
    </body>
</html>