package domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javaKod.Autor;

public class SviAutori {

    public static List<Autor> getSviAutori() {
        List<Autor> list = new ArrayList<Autor>();

        try {
            Connection con = RadDao.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from autori");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Autor a = new Autor();
                a.setIdAutora(rs.getInt(1));
                a.setImeAutora(rs.getString(2));
                a.setPrezimeAutora(rs.getString(3));
                a.setEmail(rs.getString(4));
                /* Zato što želim u tabeli da ispišem samo Id, ime, prezime i email*/

                list.add(a);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}
