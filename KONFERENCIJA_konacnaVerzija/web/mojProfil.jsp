
<%@page import="javaKod.Autor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<title>Moj profil</title>
<div id="main-content">
    
    <h3>Moj profil</h3>
  

   <script type="text/javascript">
function confirm_click()
{if (confirm("Da li ste sigurni da želite da obrišete Vaš nalog?")) 
        {
            document.location = "deleteAutor";
        }

}

</script>


    <% 
        

        String email = (String) request.getSession(true).getAttribute("email");
        Autor autor = domain.getAutorinfo.getAutorByemail(email);
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
 
    
   <!-- <h4><a href="mojProfil_update.jsp">Izmeni podatke</a>
    <span onclick="confirm_click();"><a href="javascript:confirmDelete('deleteAutor')" class="confirmation">Obriši nalog</a></span></h4>  -->
    
  <br> <hr>
				
  <p><a href="mojProfil_update.jsp" class="confirmation"><input type="button" class="dugme" value="Izmeni"/></a>
                                        <span onclick="confirm_click();">
                                        <a href="javascript:confirmDelete('deleteAutor')" class="confirmation"><input type="button" class="dugme" value="Obriši nalog"/></a>
                                        </span></p>
                                       
				
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
