package domain;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javaKod.Odluka;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "admin_donesiOdluku", urlPatterns = {"/donesiOdluku"})
public class admin_donesiOdluku extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        String aid = request.getParameter("id");
        int idrada = Integer.parseInt(aid);
    
        String status = request.getParameter("status");
        String komentar = request.getParameter("komentar");
        
        Odluka o= new Odluka();
        o.setIdRada(idrada);
        o.setStatusRada(status);
        o.setKomentar(komentar);
        
        int status_o = admin_sacuvajOdluku.save_o(o);
        
         if (status_o > 0) {
               request.getRequestDispatcher("admin_detaljiRada.jsp?id=" + idrada ).include(request, response);
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
