package abc;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  

public class UserDao {  

    public static Connection getConnection() {  
        Connection con = null;  
        try 
        {  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            
            // Deployment-friendly: Use environment variables with local fallbacks
            String host = System.getenv("DB_HOST") != null ? System.getenv("DB_HOST") : "localhost";
            String port = System.getenv("DB_PORT") != null ? System.getenv("DB_PORT") : "3306";
            String dbName = System.getenv("DB_NAME") != null ? System.getenv("DB_NAME") : "test";
            String user = System.getenv("DB_USER") != null ? System.getenv("DB_USER") : "root";
            String pass = System.getenv("DB_PASS") != null ? System.getenv("DB_PASS") : "aryan";
            
            String url = String.format("jdbc:mysql://%s:%s/%s?useSSL=false&allowPublicKeyRetrieval=true", host, port, dbName);
            
            con = DriverManager.getConnection(url, user, pass);  
        } 
        catch(Exception e) 
        {  
            System.err.println("Database Connection Error: " + e.getMessage());
            e.printStackTrace();
        }  
        return con;  
    }  

    
    public static int save(User u) {  
        int status = 0;  
        try 
        {  
            Connection con = getConnection();  
            PreparedStatement ps = con.prepareStatement(
            "INSERT INTO register (id, name, password, email, country) VALUES (?, ?, ?, ?, ?)"
            );  
            ps.setInt(1, u.getId());
            ps.setString(2, u.getName());  
            ps.setString(3, u.getPassword());  
            ps.setString(4, u.getEmail());  
            ps.setString(5, u.getCountry());  

            status = ps.executeUpdate();  

            ps.close();
            con.close();
        } 
        catch(Exception e) 
        {  
            System.err.println("Error in UserDao.save: " + e.getMessage());
            e.printStackTrace();
        }  
        return status;  
    }  
    
    public static List<User> getAllRecords()
    {  
        List<User> list=new ArrayList<User>();  
       try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select  * from register");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next())
            {  
            User u=new User();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name"));  
            u.setPassword(rs.getString("password"));  
            u.setEmail(rs.getString("email"));  
            u.setCountry(rs.getString("country"));  
            list.add(u);  
            }
        }
       catch(Exception e)
       {
           System.err.println("Error in UserDao.getAllRecords: " + e.getMessage());
           e.printStackTrace();
       }
       
        return list;  
    } 
    
    public static int delete(int id)
    {  
        int status=0;  
        try
        {  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from register where id=?");  
            ps.setInt(1,id); 
            status=ps.executeUpdate();  
        }
        catch(Exception e)
        {
            System.err.println("Error in UserDao.delete: " + e.getMessage());
            e.printStackTrace();
        }  
      
        return status;  
    }  
          
    public static User getRecordById(int id)
    {  
        User u=null;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from register where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            while(rs.next())
            {
            	
            	u=new User();  
            	u.setId(rs.getInt("id"));  
                u.setName(rs.getString("name"));  
                u.setPassword(rs.getString("password"));  
                u.setEmail(rs.getString("email"));  
                u.setCountry(rs.getString("country"));  
            }  
        }
        catch(Exception e)
        {
            System.err.println("Error in UserDao.getRecordById: " + e.getMessage());
            e.printStackTrace();
        }  
        return u;  
    }
    
    public static int update(User u)
    {
          int status=0;  
        try{
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("update register set name=?,password=?,email=?,country=? where id=?");    
            ps.setString(1,u.getName());  
            ps.setString(2,u.getPassword());  
            ps.setString(3,u.getEmail());  
            ps.setString(4,u.getCountry());  
            ps.setInt(5, u.getId());  
            status=ps.executeUpdate();  
        }
        catch(Exception e)
        {
            System.err.println("Error in UserDao.update: " + e.getMessage());
            e.printStackTrace();
        }  
        return status;  
    }  

}
