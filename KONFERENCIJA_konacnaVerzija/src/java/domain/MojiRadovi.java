
package domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javaKod.Rad;

public class MojiRadovi {
    
    public static List<Rad> getRadoviByAutor(int id){
   
    List<Rad> list=new ArrayList<Rad>(); 
   
   try{  
    Connection con=domain.RadDao.getConnection();  
    

                PreparedStatement ps=con.prepareStatement("select * FROM radovi where autor=?"); 
                ps.setInt(1,id);
                ResultSet rs=ps.executeQuery();  
                  while(rs.next()){  
                    Rad r=new Rad();  
                    r.setIdRada(rs.getInt(1));
                    r.setImeRada(rs.getString(2)); 
                    r.setNaucnaOblast(rs.getString(3));
                    r.setApstrakt(rs.getString(4));
                    r.setKoautor1(rs.getString(5));
                    r.setKoautor2(rs.getString(6)); 
                    r.setDatumPrijaveRada(rs.getString(7));
                    r.setUploadRada(rs.getString(8));
                    
                     list.add(r);  
                             }  
                con.close();  
            }catch(Exception e){e.printStackTrace();}  
              
            return list;  
        }  
                    
}       
        
        
        
        
        
        
    
    
   