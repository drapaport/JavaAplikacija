<%@page import="javaKod.Autor"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="admin_header.jsp" />
<title>Autor info</title>

  <div id="main-content">
      
      <h3>Detalji o autoru</h3>
      
      <% String aid = request.getParameter("id");
        int idautora = Integer.parseInt(aid);
        
        Autor autor=domain.getAutorByIDautora.getAutorByID(idautora);
        
        out.println("<p><u>Lični podaci:</u></p>");
        out.println("<p><b>Korisnički ID:</b> " + autor.getIdAutora() + "</p>");
        out.println("<p><b>Ime i prezime: </b> " + autor.getImeAutora()+ " " + autor.getPrezimeAutora() + "</p>");
        out.println("<p><b>E-mail: </b> " + autor.getEmail() + "</p>");
        out.println("<p><b>JMBG: </b> " + autor.getJMBG() + "</p>");
        out.println("<p><b>Broj telefona: </b> " + autor.getBrojTelefona() + "</p>");
        out.println("<br>");
        out.println("<p><u>Podaci o zaposlenju:</u></p>");
        out.println("<p><b>Ime institucije: </b> " + autor.getZaposlenjeInfo().getImeInstitucije()+ "</p>");
        out.println("<p><b>Grad: </b> " + autor.getZaposlenjeInfo().getGrad()+ "</p>");
        out.println("<p><b>Država: </b> " + autor.getZaposlenjeInfo().getDrzava()+ "</p>");
        out.println("<p><b>Vaša pozicija zaposlenja: </b> " + autor.getZaposlenjeInfo().getPozicija()+ "</p>");

       
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
