<%@page import="javaKod.Rad"%>
<%@page import="javaKod.Autor"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<title>Spisak odobrenih radova</title>

  <div id="main-content">
      
      
          <h2>Spisak odobrenih radova</h2> <br> 
      
    <% 

List<Rad> list=domain.odobreniRadovi.getOdobreniRadovi(); 

out.print("<table border='1' width='100%'");  
out.print("<tr><th>Naslov rada</th><th>Naučna oblast kojoj pripada</th><th>Ime i prezime autora</th>");  
for(Rad r:list){  
    
         int idautora= r.getAutor().getIdAutora();
         Autor a=domain.getAutorByIDautora.getAutorByID(idautora);
         out.print("<tr><td>"+ r.getImeRada()+"</td><td>"+r.getNaucnaOblast()+"</td><td>"+ a.getImeAutora() + " " + a.getPrezimeAutora() + "</td>");
         
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
