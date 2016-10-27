package domain;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/deleteAutor"})
public class autorDeleteServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        Integer IDvalue = (Integer) request.getSession(true).getAttribute("ID");

        int status =autorDelete.delete(IDvalue);

        if (status > 0) {
           
           request.getSession(true).invalidate();
           out.println("Vaš nalog je obrisan!");
           RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
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
