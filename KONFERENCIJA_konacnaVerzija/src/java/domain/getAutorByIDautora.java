/*
 Ova klasa se poziva na stranici admin_detaljiAutora 
radi ispisa informacija o svakom pojedinacnom autoru (klik na "Detalji")
 */
package domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javaKod.Autor;
import javaKod.Zaposlenje;


public class getAutorByIDautora {
    
     public static Autor getAutorByID(int id){  
            Autor a=new Autor();
            Zaposlenje z=new Zaposlenje();
        try{  
            
       
                Connection con=RadDao.getConnection();  
                PreparedStatement ps=con.prepareStatement("select * from autori where id_autora=?");  
                ps.setInt(1,id);  
                ResultSet rs=ps.executeQuery();  
                if(rs.next()){  
                    a.setIdAutora(rs.getInt(1));  
                    a.setImeAutora(rs.getString(2));  
                    a.setPrezimeAutora(rs.getString(3));  
                    a.setEmail(rs.getString(4));  
                    a.setJMBG(rs.getString(6));
                    a.setBrojTelefona(rs.getString(7));                              
                }  
                
                
                PreparedStatement ps1=con.prepareStatement("select * from zaposlenje where id_autora=?");
                ps1.setInt(1,id);
                ResultSet rs1=ps1.executeQuery();
                if(rs1.next()){
                    
                    z.setImeInstitucije(rs1.getString(2));
                    z.setGrad(rs1.getString(3));
                    z.setDrzava(rs1.getString(4));
                    z.setPozicija(rs1.getString(5));
              }
              
            a.setZaposlenjeInfo(z);
            con.close(); 
    
        }
             catch(Exception ex){ex.printStackTrace();}  
              
            return a;  
            
        }  
    
    
    
    
    
    
    
}
