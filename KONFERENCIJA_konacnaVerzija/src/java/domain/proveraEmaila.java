package domain;

import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;


public class proveraEmaila {
    
    public static boolean checkEmail(String E){
        
        boolean status = false;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/konferencija_baza", "root", "0501986175058");

            PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from autori where email=?");
            ps.setString(1, E);
            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return status;
  
    }
   }
