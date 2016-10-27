/* Ovaj servlet obrađuje podatke iz formulara za izmenu rada */
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

@WebServlet(urlPatterns = {"/Upload_izmenaRada"})
@MultipartConfig
public class Upload_izmenaRada extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        /* Obrada podataka iz formulara koji su tipa text*/
        String naslov = request.getParameter("ime");
        String koautor1 = request.getParameter("koautor1");
        String koautor2 = request.getParameter("koautor2");
        String oblast = request.getParameter("oblast");
        String apstrakt = request.getParameter("apstrakt");
        
        
       String sid=request.getParameter("id");  
       int id=Integer.parseInt(sid); 
      
        Rad r = new Rad();
        r.setIdRada(id);
        r.setImeRada(naslov);
        r.setKoautor1(koautor1);
        r.setKoautor2(koautor2);
        r.setNaucnaOblast(oblast);
        r.setApstrakt(apstrakt);
      
    
     
        int status = RadDao.update(r);

        if (status > 0) {
               request.getRequestDispatcher("prijavaRadaIspis.jsp").include(request, response);
        } else {
            out.println("Podaci nisu izmenjeni!");
        }

        out.close();


 
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
