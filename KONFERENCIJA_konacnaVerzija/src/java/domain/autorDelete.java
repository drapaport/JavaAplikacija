
package domain;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class autorDelete {
    
     public static int delete(int id){  
          
         int status1=0;
            try{  
                Connection con=RadDao.getConnection(); 
                
                PreparedStatement ps2=con.prepareStatement("delete from radovi where autor=?");  
                ps2.setInt(1,id);  
                ps2.executeUpdate(); 
                
                PreparedStatement ps=con.prepareStatement("delete from zaposlenje where id_autora=?");  
                ps.setInt(1,id);  
                ps.executeUpdate();  
                
                PreparedStatement ps1=con.prepareStatement("delete from autori where id_autora=?");  
                ps1.setInt(1,id);  
                status1=ps1.executeUpdate();  
              
               
                con.close();  
                
            }catch(Exception e){e.printStackTrace();}  
              
            return status1;  
        }  
  
    
}
