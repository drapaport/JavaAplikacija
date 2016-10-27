package domain;

import com.mysql.jdbc.PreparedStatement;
import java.sql.*;

public class LoginDao {

    public static boolean validate(String em, String lo) {
        boolean status = false;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/konferencija_baza", "root", "0501986175058");

            PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from autori where email=? and lozinka=?");
            ps.setString(1, em);
            ps.setString(2, lo);

            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return status;
    }
}
