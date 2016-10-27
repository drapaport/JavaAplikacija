
package domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import javaKod.Autor;

public class autorUpdate {
    
    public static int update(Autor a){  
            int konacanStatus = 0;
            int status=0; 
            int status1=0; 
                try{  
                Connection con=RadDao.getConnection();  
                PreparedStatement ps=con.prepareStatement(  
                             "update autori set ime_autora=?, prezime_autora=?,lozinka=?,JMBG=?, broj_telefona=? where id_autora=?");  
                ps.setString(1,a.getImeAutora());  
                ps.setString(2,a.getPrezimeAutora());  
                ps.setString(3,a.getLozinka());  
                ps.setString(4,a.getJMBG());  
                ps.setString(5,a.getBrojTelefona());  
                ps.setInt(6,a.getIdAutora());  
                status=ps.executeUpdate(); 
                
                
                PreparedStatement ps1=con.prepareStatement(  
                             "update zaposlenje set ime_institucije=?, grad=?, drzava=?, pozicija=? where id_autora=?");  
                
                ps1.setString(1,a.getZaposlenjeInfo().getImeInstitucije());  
                ps1.setString(2,a.getZaposlenjeInfo().getGrad());  
                ps1.setString(3,a.getZaposlenjeInfo().getDrzava());  
                ps1.setString(4,a.getZaposlenjeInfo().getPozicija());  
                ps1.setInt(5,a.getIdAutora());  
                status1=ps1.executeUpdate(); 
                
                konacanStatus= status * status1;
                
            
                con.close();  
            }catch(Exception ex){ex.printStackTrace();}  
              
            return konacanStatus;  
        }  
    
    
    
    
    
    
    
    
    
}
