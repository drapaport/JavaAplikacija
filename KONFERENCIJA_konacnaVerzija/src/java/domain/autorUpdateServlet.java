package domain;

import java.io.IOException;
import java.io.PrintWriter;
import javaKod.Autor;
import javaKod.Zaposlenje;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/updateAutor"})
public class autorUpdateServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet autorUpdateServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet autorUpdateServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        PrintWriter out = response.getWriter();

        Integer IDvalue = (Integer) request.getSession(true).getAttribute("ID");
        String ime = request.getParameter("ime");
        String prezime = request.getParameter("prezime");
        String lozinka = request.getParameter("lozinka");
        String JMBG = request.getParameter("JMBG");
        String telefon = request.getParameter("telefon");
        String imeinstitucije = request.getParameter("imeinstitucije");
        String grad = request.getParameter("grad");
        String drzava = request.getParameter("drzava");
        String pozicija = request.getParameter("pozicija");

        Autor a = new Autor();
        a.setImeAutora(ime);
        a.setPrezimeAutora(prezime);
        a.setLozinka(lozinka);
        a.setJMBG(JMBG);
        a.setBrojTelefona(telefon);
        a.setIdAutora(IDvalue);

        Zaposlenje z = new Zaposlenje();
        z.setImeInstitucije(imeinstitucije);
        z.setGrad(grad);
        z.setDrzava(drzava);
        z.setPozicija(pozicija);

        a.setZaposlenjeInfo(z);
        z.setAutor(a);

        int status = domain.autorUpdate.update(a);
        if (status > 0) {
            out.println("Podaci su uspešno sačuvani!");
            RequestDispatcher rd = request.getRequestDispatcher("mojProfil.jsp");
            rd.include(request, response);
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
