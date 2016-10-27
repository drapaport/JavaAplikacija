<%@page import="javaKod.Odluka"%>
<%@page import="java.util.List"%>
<%@page import="javaKod.Rad"%>
<%@page import="javaKod.Rad"%>
<%@page import="javaKod.Autor"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="admin_header.jsp" />
<title>Autor info</title>

  <div id="main-content">

      
      <% String aid = request.getParameter("id");
        int idautora = Integer.parseInt(aid);    %>
        
        <h3>Radovi autora sa ID=<%=idautora %></h3>
        
     <% 
    

List<Rad> list=domain.MojiRadovi.getRadoviByAutor(idautora); 

out.print("<table border='1' width='100%'");  
out.print("<tr><th>Id rada</th><th>Naslov rada</th><th>Detalji o radu</th><th>Status rada</th><th>Obriši rad</th></tr>");  
for(Rad r:list){  
         Odluka odluka= domain.ispisiOdluku.getOdlukaById(r.getIdRada());
         
         out.print("<tr><td>"+r.getIdRada()+"</td><td>"+r.getImeRada()+"</td><td><a href='admin_detaljiRada.jsp?id="+r.getIdRada()+"'>Detalji</a></td><td>" +odluka.getStatusRada()+ "</td><td><a href='admin_deleteRad?id="+r.getIdRada()+"'>Obriši</a></td></tr>");  
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

