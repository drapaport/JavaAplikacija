<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.File"%>
<%@page import="javax.servlet.jsp.jstl.core.Config"%>
<%@page import="javax.servlet.jsp.jstl.core.Config"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
 
<div id="main-content">
    <h2>Podaci su uspešno sačuvani!</h2>
    <h3>Detalji o prijavi rada:</h3>
    



    <p><b>Naslov rada:</b> <i><%=request.getParameter("ime")%> </i><br><br>

            <b> Koautori: </b><i><%=request.getParameter("koautor1")%> , <%=request.getParameter("koautor2")%></i> <br><br>
                <b>Naučna oblast: </b><i> <%=request.getParameter("oblast")%> </i><br><br>
                <b> Apstrakt: </b><i><%=request.getParameter("apstrakt")%></i></p>
    <p><b> Vaš e-mail:</b><i> <c:out value="${sessionScope.email}"> </c:out> </i></p>
 
	
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

		
	
