/* Ovaj servlet obrađuje podatke iz formulara za prijavu rada */
package domain;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javaKod.Autor;
import javaKod.Rad;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

@WebServlet(urlPatterns = {"/upload"})
@MultipartConfig
public class Upload_rada extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        
        
        /* Upload-ovani fajl se smešta u folder čija je putanja definisana u Config.java */
        Part part = request.getPart("myFile");
        String documentPath = Config.APP_DIR;
        String filename = part.getHeaders("content-disposition").toString().split("filename=\"")[1].replace("\"]", "");
        InputStream is = part.getInputStream();
        FileOutputStream fos = new FileOutputStream(documentPath + "/" + filename);
        int bt;
        while ((bt = is.read()) != -1) {
            fos.write(bt);
        }
        fos.close();
        is.close();

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        /* Obrada podataka iz formulara koji su tipa text*/
        String naslov = request.getParameter("ime");
        String koautor1 = request.getParameter("koautor1");
        String koautor2 = request.getParameter("koautor2");
        String oblast = request.getParameter("oblast");
        String apstrakt = request.getParameter("apstrakt");
       
        Rad r = new Rad();
        r.setImeRada(naslov);
        r.setKoautor1(koautor1);
        r.setKoautor2(koautor2);
        r.setNaucnaOblast(oblast);
        r.setApstrakt(apstrakt);
        r.setUploadRada(filename);
        
        /* Uzimamo vrednost atributa "email" da bi znali o kom korisniku se radi*/
        String email = (String) request.getSession(true).getAttribute("email");
        Autor aut= getAutorinfo.getAutorByemail(email);
        r.setAutor(aut);
        
        /*Potreban nam je podatak o trenutnom datumu i vremenu, da bi se u bazu upisao datum prijave rada*/
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Date date = new Date();
        String datumPR = dateFormat.format(date);
       
        r.setDatumPrijaveRada(datumPR);

        int status = RadDao.save(r);

        if (status > 0) {
               request.getRequestDispatcher("prijavaRadaIspis.jsp").include(request, response);
        } else {
            out.println("Podaci nisu sačuvani!");
        }

        out.close();
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
