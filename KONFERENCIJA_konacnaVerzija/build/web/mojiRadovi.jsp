<%@page import="javaKod.Odluka"%>
<%@page import="javaKod.Autor"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javaKod.Rad"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<title>Moji radovi</title>
<div id="main-content">
    
    <h3>Moji radovi</h3>
    <% 
     out.println("<a href='prijava rada.jsp'>Dodaj novi rad</a>"); 
     out.println("<br><br>");
   
Integer IDvalue = (Integer) request.getSession(true).getAttribute("ID");  
List<Rad> list=domain.MojiRadovi.getRadoviByAutor(IDvalue); 

out.print("<table border='1' width='100%'");  
out.print("<tr><th>Id rada</th><th>Naslov rada</th><th>Status rada</th><th>Detalji o radu</th><th>Izmeni</th><th>Obriši</th></tr>");  
for(Rad r:list){  
         Odluka odluka= domain.ispisiOdluku.getOdlukaById(r.getIdRada());
         out.print("<tr><td>"+r.getIdRada()+"</td><td>"+r.getImeRada()+"</td><td>" +odluka.getStatusRada()+ "</td><td><a href='mojRad_detalji.jsp?id="+r.getIdRada()+"'>Detalji</a><td><a href='mojRad_update.jsp?id="+r.getIdRada()+"'>Izmeni</a></td><td><a href='deleteRad?id="+r.getIdRada()+"'>Obriši</a></td></tr>");  
        }
 out.print("</table>");  
          
        
%>

    </div>

<div id="organizatori">
    <h3> Organizatori</h3>
    <p><a href="http://etran.etf.rs" title="Društvo ETRAN">
            <img src="slike/etran3.gif" alt="Društvo ETRAN"/></a></p>
    <p> <a href="http://www.elfak.ni.ac.rs" title="Elektrotehnički fakultet Niš">
            <img src="slike/rsz_nis.jpg" alt="Elektrotehnički fakultet Niš"/></a></p>
    <p><a href="http://www.mpn.gov.rs/" title="Ministarstvo prosvete">
            <img src="slike/grb1.jpg" alt="Ministarstvo prosvete"/></a></p>
    <p><a href="http://www.ieee.org">
            <img src="http://www.ieee.org/ucm/groups/public/@ieee/@web/@org/@globals/documents/images/ieee_logo_mb_tagline.gif" alt="IEEE"/></a></p>
</div>

</div>

</div>
</body>
</html>
