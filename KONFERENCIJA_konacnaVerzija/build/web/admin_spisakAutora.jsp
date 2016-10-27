<%@page import="javaKod.Autor"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="admin_header.jsp" />
<title>Lista autora</title>

  <div id="main-content">
      <c:if test="${sessionScope.alogged!=null}">    
      
          <h2>Spisak autora</h2> <br> 
      
    <% 

List<Autor> list=domain.SviAutori.getSviAutori(); 

out.print("<table border='1' width='100%'");  
out.print("<tr><th>ID autora</th><th>Ime i prezime</th><th>e-mail</th><th>Detalji o autoru</th><th>Prijavljeni radovi</th><th>Obriši nalog</th></tr>");  
for(Autor a:list){  
         out.print("<tr><td>"+ a.getIdAutora()+"</td><td>"+a.getImeAutora()+ " " + a.getPrezimeAutora() + "</td><td>"+ a.getEmail()+"</td><td><a href='admin_detaljiAutora.jsp?id="+a.getIdAutora()+"'>Detalji</a><td><a href='admin_spisakRadovaPoAutoru.jsp?id="+a.getIdAutora()+"'>Spisak radova</a><td><a href='admin_deleteAutor?id="+a.getIdAutora()+"'>Obriši</a></td></tr>");  
        }
 out.print("</table>");  
          
        
%>   
      
      
      
      
      
      
      
      
      
      
      
      
	</c:if>  	
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
