package DAO;

import java.sql.*;
import java.util.*;
import Connection.MyConnection;
import bean.*;

public class Rdao 
{
	
	public int autoIncr() throws Exception
    {
        Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="select max(uid) from login_info";
          ps= con.prepareStatement(sql);
              rs= ps.executeQuery();
              int n=1;
              if(rs.next())
              {
                  n=rs.getInt(1);
                  n=n+1;
              }
              return(n);
    }

	  public static boolean checkLogin(String uname,String upass) throws Exception
      {
          Connection con=null;
           PreparedStatement ps=null;
           ResultSet rs=null;
           con=MyConnection.getConnection();
           String sql;
           sql="select * from login_info where username=? and password=?";
          
           ps=con.prepareStatement(sql);
           
            ps.setString(1, uname);
           ps.setString(2, upass);
           rs=ps.executeQuery();
           if(rs.next())
               return true;
           
           return false;
      }
	  
	  public boolean registerUser(int user_id,String uname,String pass) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="insert into login_info values(?,?,?)";
          ps=con.prepareStatement(sql);
          ps.setInt(1, user_id);
          ps.setString(2, uname);
         ps.setString(3, pass);
         if(ps.executeUpdate()>0)
             return true;
         
        return false;
		}
	  
	  public ResultSet coursesShow() throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
        
          sql="Select teacher_info.t_name,qualification,course_name,category,course_id from teacher_info,course_info where teacher_info.t_name=course_info.t_name;";
          ps= con.prepareStatement(sql);
          rs= ps.executeQuery(); 
          
          return rs;
	  }
	  
	  
	  public ResultSet myCoursesShow(String email ) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
        
          sql="Select t_name,course_name,category,user_course_info.course_id from user_course_info,course_info where course_info.course_id=user_course_info.course_id and user_course_info.email=?;";
          ps= con.prepareStatement(sql);
          ps.setString(1, email);
          rs= ps.executeQuery(); 
          
          return rs;
	  }
	  
	  
	  public UserInfo getYourEmail(String username11) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql=null;
          
          sql="select email from user_info where email=?; ";
           ps=con.prepareStatement(sql);
          ps.setString(1, username11);
             rs=ps.executeQuery();
             
              UserInfo LM=new UserInfo();
             
      if(rs.next())
      { 
          LM.setEmail(rs.getString(1));
          
      }
      
     
         
       return LM; 
	  }
	  
	  
	  public boolean joinCourse(int course_id,String email) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="insert into user_course_info values(?,?)";
          ps=con.prepareStatement(sql);
          ps.setInt(1, course_id);
          ps.setString(2, email);
        
         if(ps.executeUpdate()>0)
             return true;
         
        return false;
		
	  }
	  
	  
	  public List<UserInfo> showProfile(String email) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="select name,mobile,email,profession,highest_qualification,address from user_info where email=?;";
          ps= con.prepareStatement(sql);
          ps.setString(1, email);
          rs= ps.executeQuery();
          List<UserInfo> mylist=new ArrayList<UserInfo>();
          
          while(rs.next())
          {
        	  UserInfo U=new UserInfo();
        	  
        	  U.setName(rs.getString(1));
        	  U.setMobile(rs.getLong(2));
        	  U.setEmail(rs.getString(3));
        	  U.setProfession(rs.getString(4));
        	  U.setHighest_qualification(rs.getString(5));
        	  U.setAddress(rs.getString(6));
        	  
        	  mylist.add(U);
        	  U=null;
          }
          
          return mylist;
          
	  }
	  
	  
	  public List<LoginInfo> showAdminProfile() throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          String uname="administrator@eportal.org";
          String pwd="admin@eportal12345";
          sql="select * from login_info where username=? and password=?";
          ps= con.prepareStatement(sql);
          ps.setString(1, uname);
          ps.setString(2, pwd);
          rs= ps.executeQuery();
          List<LoginInfo> mylist=new ArrayList<LoginInfo>();
          
          while(rs.next())
          {
        	  LoginInfo U=new LoginInfo();
        	  
        	  U.setUser_id(rs.getInt(1));
        	  U.setUsername(rs.getString(2));
        	  U.setPassword(rs.getString(3));
        	  
        	  
        	  mylist.add(U);
        	  U=null;
          }
          
          return mylist;
          
	  }
	  
	  
	  public boolean updateProfile(String name,long n,String mail,String pro,String hq,String add) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="update user_info set name=?,mobile=?,profession=?,highest_qualification=?,address=? where email=?;";
          ps=con.prepareStatement(sql);
          ps.setString(1, name);
          ps.setLong(2, n);
         
          ps.setString(3, pro);
          ps.setString(4,hq );
          ps.setString(5, add);
          ps.setString(6, mail);
          
          if(ps.executeUpdate()>0)
          {
              return true;
          }
         else
          {
              return false;
          }
	  }
	  
	  
	  public List<CourseContentInfo> showTopics(int course_id) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="select id,course_id,topic_name from course_content_info where course_id=?";
          ps= con.prepareStatement(sql);
          ps.setInt(1, course_id);
          rs= ps.executeQuery();
          List<CourseContentInfo> mylist=new ArrayList<CourseContentInfo>();
          
          while(rs.next())
          {
        	  CourseContentInfo C=new CourseContentInfo();
        	  
        	  C.setId(rs.getInt(1));
        	  C.setCourse_id(rs.getInt(2));
        	  C.setTopic_name(rs.getString(3));
        	  mylist.add(C);
        	  C=null;
          }
          
          return mylist;
          
	  }
	  
	  
	    public List<TopicContentInfo> showContent(int id,int course_id) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="select topic_id,topic_name,topic_content,src from topic_content_info where id=? AND course_id=?";
          ps= con.prepareStatement(sql);
          ps.setInt(1, id);
          ps.setInt(2, course_id);
          rs= ps.executeQuery();
          List<TopicContentInfo> mylist=new ArrayList<TopicContentInfo>();
          
          while(rs.next())
          {
        	  TopicContentInfo T=new TopicContentInfo();
        	  
        	  T.setTopic_id(rs.getInt(1));
        	  T.setTopic_name(rs.getString(2));
        	  T.setTopic_content(rs.getString(3));
        	  T.setSrc(rs.getString(4));
        	  mylist.add(T);
        	  T=null;
          }
          
          return mylist;
          
	  }
	   
	    
	    public boolean addCourse(int course_id,String course_name,String category) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="insert into course_info (course_id,course_name,category) values(?,?,?)";
          ps=con.prepareStatement(sql);
          ps.setInt(1, course_id);
          ps.setString(2,course_name );
          ps.setString(3,category );

         if(ps.executeUpdate()>0)
             return true;
         
        return false;
		
	  }
	    
	     public boolean addTeacher(String t_name,String t_email,long t_mobile,String qualification) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="insert into teacher_info (t_name,t_email,t_mobile,qualification) values(?,?,?,?)";
          ps=con.prepareStatement(sql);
          ps.setString(1,t_name );
          ps.setString(2,t_email );
          ps.setLong(3, t_mobile);
          ps.setString(4,qualification);

         if(ps.executeUpdate()>0)
             return true;
         
        return false;
		
	  }
	     
	      public ResultSet showTeacherInfo() throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
        
          sql="select teacher_id,t_name,t_email from teacher_info;";
          ps= con.prepareStatement(sql);
          rs= ps.executeQuery(); 
          
          return rs;
	  }
	      
	      
	     public boolean assignUser(int id,String t_name,int course_id,String course_name) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="update course_info set t_name=? where course_id=? and course_name=?;";
          //sql="insert into course_info(t_name) values(?) where id=?,course_id=? AND course_name=?;";
          ps=con.prepareStatement(sql);
          ps.setString(1,t_name);
          //ps.setInt(2,id);
          ps.setInt(2,course_id);
         ps.setString(3,course_name);
         if(ps.executeUpdate()>0)
             return true;
         
        return false;
		}
	  
	     
	     public boolean updateTeacherCourse(int id,String t_name,int course_id,String course_name) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          //sql="insert into course_info(course_id,course_name,t_name) values(?,?,?)";
          sql="update course_info set t_name=? where course_id=? and course_name=?";
          ps=con.prepareStatement(sql);
          ps.setString(1,t_name);
          ps.setInt(2,course_id);
         ps.setString(3,course_name);
         if(ps.executeUpdate()>0)
             return true;
         
        return false;
		}
	     
	      public ResultSet showTopicId() throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
        
          sql="select course_id,course_name from course_info;";
          ps= con.prepareStatement(sql);
          rs= ps.executeQuery(); 
          
          return rs;
	  }
	      
	       public boolean addTopic(int course_id,String topic_name) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="insert into course_content_info (course_id,topic_name) values(?,?)";
          ps=con.prepareStatement(sql);
          ps.setInt(1,course_id );
          ps.setString(2,topic_name );
        
         if(ps.executeUpdate()>0)
             return true;
         
        return false;
		
	  }
	       
	       
	      public ResultSet addContentMain() throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
        
          sql="SELECT t.id, t.course_id, t.topic_name, c.course_name  FROM course_content_info t JOIN course_info c WHERE t.course_id=c.course_id order by c.course_id;";
          ps= con.prepareStatement(sql);
          rs= ps.executeQuery(); 
          
          return rs;
	  }
	      
	      public boolean checkContent(int id) throws Exception
      {
          Connection con=null;
           PreparedStatement ps=null;
           ResultSet rs=null;
           con=MyConnection.getConnection();
           String sql;
           sql="select topic_content from topic_content_info where id=?;";
          
           ps=con.prepareStatement(sql);
           
            ps.setInt(1, id);
           
           rs=ps.executeQuery();
           if(rs.next())
               return true;
           
           return false;
      }
	      
	   public boolean addContent(int id,int course_id,String topic_name,String topic_content) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="insert into topic_content_info (id,course_id,topic_name,topic_content) values(?,?,?,?)";
          ps=con.prepareStatement(sql);
          ps.setInt(1, id);
          ps.setInt(2, course_id);
          ps.setString(3,topic_name );
          ps.setString(4,topic_content );

         if(ps.executeUpdate()>0)
             return true;
         
        return false;
		
	  }
	   
	   public String updateContentInfo(int id) throws Exception
	      {
	          Connection con=null;
	           PreparedStatement ps=null;
	           ResultSet rs=null;
	           con=MyConnection.getConnection();
	           String sql,content = null;
	           sql="select topic_content from topic_content_info where id=?;";
	          
	           ps=con.prepareStatement(sql);
	           
	            ps.setInt(1, id);
	           
	           rs=ps.executeQuery();
	           
	          // return rs;
	           if(rs.next())
	               content=rs.getString(1);
	           
	           return content;
	           
	      }
	   
	   public boolean updateContent(int id,String topic_name,String topic_content) throws Exception
		  {
			  Connection con=null;
	          PreparedStatement ps=null;
	          ResultSet rs=null;
	          con=MyConnection.getConnection();
	          String sql;
	          sql="update topic_content_info set topic_name=?, topic_content=? where id=?";
	          ps=con.prepareStatement(sql);
	          ps.setInt(3, id);
	         // ps.setInt(4, course_id);
	          ps.setString(1,topic_name );
	          ps.setString(2,topic_content );

	         if(ps.executeUpdate()>0)
	             return true;
	         
	        return false;
			
		  }
	   
	   
	   public ResultSet adminAvailableCourse() throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
        
          sql="select * from course_info;";
          ps= con.prepareStatement(sql);
          rs= ps.executeQuery(); 
          
          return rs;
	  }
	   
	   
	    public boolean updateCourse(int id,int course_id,String course_name,String category) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="update course_info set course_id=?,course_name=?,category=? where id=?";
          ps=con.prepareStatement(sql);
          ps.setInt(1,course_id);
 		  ps.setString(2,course_name);
         ps.setString(3,category);
         ps.setInt(4,id);

         if(ps.executeUpdate()>0)
             return true;
         
        return false;
		}
	    
	   public ResultSet availableTeacher() throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
        
          sql="SELECT t.teacher_id, t.t_name, t.t_email, t.t_mobile, t.qualification, c.course_name FROM teacher_info t JOIN course_info c WHERE t.t_name=c.t_name;";
          ps= con.prepareStatement(sql);
          rs= ps.executeQuery(); 
          
          return rs;
	  }
	    
	   public boolean saveTeacherUpdate(int teacher_id,String t_name,String t_email,long t_mobile,String qualification) throws Exception
	  {
		  Connection con=null;
          PreparedStatement ps=null;
          ResultSet rs=null;
          con=MyConnection.getConnection();
          String sql;
          sql="update teacher_info set t_name=?,t_email=?,t_mobile=?,qualification=? where teacher_id=?";
          ps=con.prepareStatement(sql);
          
 		  ps.setString(1,t_name);
          ps.setString(2,t_email);
          ps.setLong(3, t_mobile);
          ps.setString(4,qualification);
		  ps.setInt(5,teacher_id);
		  
         if(ps.executeUpdate()>0)
             return true;
         
        return false;
		}
	   
	   public List<UserInfo> showAvailableUser() throws Exception
		  {
			  Connection con=null;
	          PreparedStatement ps=null;
	          ResultSet rs=null;
	          con=MyConnection.getConnection();
	          String sql;
	          sql="select id,name,mobile,email,profession,highest_qualification,address from user_info";
	          ps= con.prepareStatement(sql);
	          //ps.setInt(1, id);
	          //ps.setInt(2, course_id);
	          rs= ps.executeQuery();
	          List<UserInfo> mylist=new ArrayList<UserInfo>();
	          
	          while(rs.next())
	          {
	        	  UserInfo T=new UserInfo();
	        	  
	        	  T.setId(rs.getInt(1));
	        	  T.setName(rs.getString(2));
	        	  T.setMobile(rs.getLong(3));
	        	  T.setEmail(rs.getString(4));
	        	  T.setProfession(rs.getString(5));
	        	  T.setHighest_qualification(rs.getString(6));
	        	  T.setAddress(rs.getString(7));
	        	 
	        	  mylist.add(T);
	        	  T=null;
	          }
	          
	          return mylist;
	          
		  }
	   
	   public boolean deleteAssigCourse(int id) throws Exception
	   {
		   	  Connection con=null;
	          PreparedStatement ps=null;
	          ResultSet rs=null;
	          con=MyConnection.getConnection();
	          String sql;
	          sql="delete from teacher_info where teacher_id=?";
	          ps= con.prepareStatement(sql);
	         ps.setInt(1, id);
	         if(ps.executeUpdate()>0)
	             return true;
	         
	        return false;
	         
	   }
	   
	   public boolean deleteAvailableCourse(int id) throws Exception
	   {
		   	  Connection con=null;
	          PreparedStatement ps=null;
	          ResultSet rs=null;
	          con=MyConnection.getConnection();
	          String sql;
	          sql="delete from course_info where id=?";
	          ps= con.prepareStatement(sql);
	         ps.setInt(1, id);
	         if(ps.executeUpdate()>0)
	             return true;
	         
	        return false;
	         
	   }
	   
	   
	   
}
