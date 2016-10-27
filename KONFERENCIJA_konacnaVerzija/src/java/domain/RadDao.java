package domain;

import java.sql.*;
import javaKod.Rad;

/*
 Ova klasa je zadužena za upis podataka u bazu, poziva se u Http servletu Upload.java
 */
public class RadDao {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/konferencija_baza", "root", "0501986175058");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int save(Rad r) {
        int status = 0;
        ResultSet rs = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "insert into radovi(ime_rada,koautor1,koautor2,naucna_oblast, apstrakt, upload_rada, datum_prijave_rada, autor) values (?,?,?,?,?,?,?,?)", new String[]{"id_rada"});
            ps.setString(1, r.getImeRada());
            ps.setString(2, r.getKoautor1());
            ps.setString(3, r.getKoautor2());
            ps.setString(4, r.getNaucnaOblast());
            ps.setString(5, r.getApstrakt());
            ps.setString(6, r.getUploadRada());
            ps.setString(7, r.getDatumPrijaveRada());
            ps.setInt(8, r.getAutor().getIdAutora());

            status = ps.executeUpdate();

            rs = ps.getGeneratedKeys();
            if (null != rs && rs.next()) {

                int idrada = rs.getInt(1);

                int status1 = 0;
                PreparedStatement ps1 = con.prepareStatement(
                        "insert into odluke(id_rada,status_rada,komentar) values (?,?,?)");
                ps1.setInt(1, idrada);
                ps1.setString(2, "Nije još dodeljen status!");
                ps1.setString(3, "Nije dodeljen komentar!");

                status1 = ps1.executeUpdate();

            }

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }

    public static int update(Rad r) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "update radovi set ime_rada=?,koautor1=?,koautor2=?,naucna_oblast=?,apstrakt=? where id_rada=?");
            ps.setString(1, r.getImeRada());
            ps.setString(2, r.getKoautor1());
            ps.setString(3, r.getKoautor2());
            ps.setString(4, r.getNaucnaOblast());
            ps.setString(5, r.getApstrakt());
            ps.setInt(6, r.getIdRada());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }

    public static int delete(int id) {
        int status = 0;
        int status1 = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps1 = con.prepareStatement("delete from odluke where id_rada=?");
            ps1.setInt(1, id);
            status1 = ps1.executeUpdate();

            PreparedStatement ps = con.prepareStatement("delete from radovi where id_rada=?");
            ps.setInt(1, id);
            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public static Rad getRadById(int id) {
        Rad r = new Rad();

        try {
            Connection con = RadDao.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from radovi where id_rada=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                r.setIdRada(rs.getInt(1));
                r.setImeRada(rs.getString(2));
                r.setNaucnaOblast(rs.getString(3));
                r.setApstrakt(rs.getString(4));
                r.setKoautor1(rs.getString(5));
                r.setKoautor2(rs.getString(6));
                r.setDatumPrijaveRada(rs.getString(7));
                r.setUploadRada(rs.getString(8));

            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return r;
    }

}
