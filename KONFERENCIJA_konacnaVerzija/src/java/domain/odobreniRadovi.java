package domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javaKod.Autor;
import javaKod.Rad;

public class odobreniRadovi {

    public static List<Rad> getOdobreniRadovi() {
        List<Rad> list = new ArrayList<Rad>();

        try {
            Connection con = RadDao.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT ime_rada, naucna_oblast, autor FROM radovi INNER JOIN odluke ON radovi.id_rada=odluke.id_rada where status_rada='ODOBREN'");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Rad r = new Rad();
                Autor a = new Autor();
                r.setImeRada(rs.getString(1));
                r.setNaucnaOblast(rs.getString(2));
                a.setIdAutora(rs.getInt(3));
                r.setAutor(a);

                list.add(r);

            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}
