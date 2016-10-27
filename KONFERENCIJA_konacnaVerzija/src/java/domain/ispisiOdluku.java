
package domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javaKod.Odluka;

public class ispisiOdluku {
    
    public static Odluka getOdlukaById(int id){
        Odluka o = new Odluka();
        
          try{  
                Connection con=RadDao.getConnection();  
                PreparedStatement ps=con.prepareStatement("select * from odluke where id_rada=?");  
                ps.setInt(1,id);  
                ResultSet rs=ps.executeQuery();  
                if(rs.next()){  
                    
                    o.setStatusRada(rs.getString(2));
                    o.setKomentar(rs.getString(3));
    
                }  
                con.close();  
            }catch(Exception ex){ex.printStackTrace();}  
              
            return o;  
        }  
        
}      
    
    
    
    
    
    

    
    
    

