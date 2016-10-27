/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

import com.mysql.jdbc.PreparedStatement;
import java.sql.*;

public class admin_login_provera {
    
     public static boolean validate(String ki, String lo) {
        boolean status = false;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/konferencija_baza", "root", "0501986175058");

            PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from admini where korisnickoime=? and lozinka=?");
            ps.setString(1, ki);
            ps.setString(2, lo);

            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return status;
    }
    
    
    
    
    
    
    
    
    
    
}
