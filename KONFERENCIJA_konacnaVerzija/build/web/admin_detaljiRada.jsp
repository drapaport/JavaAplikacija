<%@page import="javaKod.Odluka"%>
<%@page import="java.util.List"%>
<%@page import="javaKod.Rad"%>
<%@page import="javaKod.Rad"%>
<%@page import="javaKod.Autor"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="admin_header.jsp" />
<title>Detalji rada</title>

<div id="main-content">


    <% String aid = request.getParameter("id");
          int idrada = Integer.parseInt(aid);%>

    <h3>Rad sa ID=<%=idrada%></h3>

    <%
        Rad r = domain.RadDao.getRadById(idrada);

        out.println("<p><b>ID rada:</b> " + r.getIdRada() + "</p>");
        out.println("<p><b>Naslov rada:</b> " + r.getImeRada() + "</p>");
        out.println("<p><b>Naučna oblast:</b> " + r.getNaucnaOblast() + "</p>");
        out.println("<p><b>Apstrakt:</b> " + r.getApstrakt() + "</p>");
        out.println("<p><b>Koautor 1:</b> " + r.getKoautor1() + "</p>");
        out.println("<p><b>Koautor 2:</b> " + r.getKoautor2() + "</p>");
        out.println("<p><b>Datum prijave rada:</b> " + r.getDatumPrijaveRada() + "</p>");
        String imeFajla= r.getUploadRada();
        
        
        /* ako se u nazivu fajla nalazi razmak, on se zamenjuje sa znakom "+" jer URL ne sadrži razmake */ 
        String filename = imeFajla.replace(" ", "+");
        
      
        
        out.println("<p><b>RAD: <a href=RadoviUpload/" + filename + "></b> " + imeFajla + "</p></b></a><br>");
        
        Odluka o=domain.ispisiOdluku.getOdlukaById(idrada);
        
        out.println("<hr>");
        
        out.println("<p><b>Status rada (odobren/neodobren): </b><i>" + o.getStatusRada() + " !!!</i></p>");
        out.println("<p><b>Komentar recenzenta:</b><i> " + o.getKomentar() + "</i></p>");
 
    %>      
    <p><a href='admin_odlukaIkomentar.jsp?id=<%=idrada%>'  class="confirmation"><input type="button" class="dugme" value="Dodeli status"/></a>
    
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

