package domain;

import static domain.RadDao.getConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javaKod.Odluka;
import javaKod.Rad;

public class admin_sacuvajOdluku {

    public static int save_o(Odluka o) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update odluke set status_rada=?,komentar=? where id_rada=?");

            ps.setString(1, o.getStatusRada());
            ps.setString(2, o.getKomentar());
            ps.setInt(3, o.getIdRada());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }

}
