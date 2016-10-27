package domain;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin_deleteAutor"})
public class admin_autorDeleteServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        String sid=request.getParameter("id");  
        int idautora=Integer.parseInt(sid); 
        
        int status =autorDelete.delete(idautora);

        if (status > 0) {
           
           
           out.println("Nalog autora sa ID-jem " + idautora + " je obrisan!");
           RequestDispatcher rd = request.getRequestDispatcher("admin_spisakAutora.jsp");
           rd.include(request,response);  

            
        } else {
            out.println("Vaš nalog nije obrisan!");
        }

        out.close();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
