/* Ovaj servlet se poziva na stranici admin_spisakRadovaPoAutoru.jsp i služi da prikaže sve radove određenog autora*/


package domain;

import java.io.IOException;  
import java.io.PrintWriter;  
import java.util.List;  
import javaKod.Rad;
  
import javax.servlet.ServletException;  
import javax.servlet.annotation.WebServlet;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  

@WebServlet("/ViewServlet")  
public class ViewServlet extends HttpServlet {  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)   
               throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        out.println("<a href='prijava rada.jsp'>Dodaj novi rad</a>");  
        out.println("<h1>Lista prijavljenih radova</h1>"); 
        
        
Integer IDvalue = (Integer) request.getSession(true).getAttribute("ID");  
List<Rad> list=MojiRadovi.getRadoviByAutor(IDvalue); 

out.print("<table border='1' width='100%'");  
out.print("<tr><th>Id rada</th><th>Ime rada</th><th>Naučna oblast</th><th>Koautori</th><th>Datum prijave</th><th>Edit</th><th>Delete</th></tr>");  
for(Rad r:list){  
         out.print("<tr><td>"+r.getIdRada()+"</td><td>"+r.getImeRada()+"</td><td>"+r.getNaucnaOblast()+"</td><td>"+r.getKoautor1()+ " "+ r.getKoautor2()+"</td><td>"+r.getDatumPrijaveRada()+"</td><td><a href='EditServlet?id="+r.getIdRada()+"'>edit</a></td><td><a href='DeleteServlet?id="+r.getIdRada()+"'>delete</a></td></tr>");  
        }
 out.print("</table>");  
          
        out.close();  
    }  
}  
        
     
        
        
        
        
        
        
        
 