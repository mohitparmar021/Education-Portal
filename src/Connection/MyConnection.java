package Connection;

import java.sql.*;


public class MyConnection {

    
    static
    {
    
          try
                {
                    Class.forName("com.mysql.jdbc.Driver");
               //    System.out.println("Driver load");
            
                } 
                catch (Exception e) 
                {
                    System.out.println(e);
                 } 
    }
    static Connection con=null;
    
    public static Connection getConnection()
    {
        try
        {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eportal","root","root");
           // System.out.println("Database connect");
            
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return con;
    }
}

	


