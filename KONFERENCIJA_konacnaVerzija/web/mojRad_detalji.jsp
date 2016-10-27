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
        String sid = request.getParameter("id");
        int idrada = Integer.parseInt(sid);

        Rad r = domain.RadDao.getRadById(idrada);

        out.println("<p><b>ID rada:</b> " + r.getIdRada() + "</p>");
        out.println("<p><b>Naslov rada:</b> " + r.getImeRada() + "</p>");
        out.println("<p><b>Naučna oblast:</b> " + r.getNaucnaOblast() + "</p>");
        out.println("<p><b>Apstrakt:</b> " + r.getApstrakt() + "</p>");
        out.println("<p><b>Koautor 1:</b> " + r.getKoautor1() + "</p>");
        out.println("<p><b>Koautor 2:</b> " + r.getKoautor2() + "</p>");
        out.println("<p><b>Datum prijave rada:</b> " + r.getDatumPrijaveRada() + "</p>");
       
        String imeFajla= r.getUploadRada();
        // out.println("<p><b>Fajl:</b> " + imeFajla + "</p>");
        
        
        /* ako se u nazivu fajla nalazi razmak, on se zamenjuje sa znakom "+" jer URL ne sadrži razmake */ 
        String filename = imeFajla.replace(" ", "+");
        
        //out.println("<p>Ime fajla bez razmaka: " + filename + "</p>");
        
        out.println("<p><b>UPLOAD RADA: <a href=RadoviUpload/" + filename + "></b> " + imeFajla + "</a></p></b><br>");
        
 
    
        
        Odluka o=domain.ispisiOdluku.getOdlukaById(idrada);
        
        out.println("<hr>");
        
        out.println("<p><b>Status rada (odobren/neodobren): </b><i>" + o.getStatusRada() + " !!!</i></p>");
        out.println("<p><b>Komentar recenzenta:</b><i> " + o.getKomentar() + "</i></p>");
        
        
       // out.println("<a href="file:///C:/Users/asus/Desktop/radovi/NALAZ_Dejana_Lucic.pdf">Download</a>");
    
    %>
 <!--  <a href="file:///C:/Users/asus/Desktop/radovi/">Download</a>   -->
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
