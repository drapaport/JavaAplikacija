<%@page import="java.util.List"%>
<%@page import="javaKod.Rad"%>
<%@page import="javaKod.Rad"%>
<%@page import="javaKod.Autor"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="admin_header.jsp" />
<script>
function validateForm(){

        var a=document.prijavarada.status.value;
        var b=document.prijavarada.komentar.value;
              
        if (a=="" || b==""){
        alert("Molimo Vas da popunite prazna polja.");
        return false;
        }
        
       }
   </script>   
<title>Autor info</title>

<div id="main-content">


    <% String aid = request.getParameter("id");
       int idrada = Integer.parseInt(aid);%>

    <h3>Rad sa ID=<%=idrada%></h3>

    <div id="formulari">
        <form name="prijavarada" action="donesiOdluku?id=<%=idrada %>" method="post" onsubmit="return validateForm();">
   
            
          <div class="padmenu"><label>Odluka:<select name="status"> 
                        <option value="">odaberi</option>
                        <option value="ODOBREN">ODOBREN</option>
                        <option value="NEODOBREN">NEODOBREN</option>
                </select></label>
            </div>

            <div class="polja">
                    <label>Komentar (max 200 karaktera): <br/>
                            <textarea id="apstrakt" name="komentar" rows="5" cols="35" maxlength="200"></textarea>
                    </label>
            </div>
            
            <input class="dugme" type="submit" value="Sačuvaj"/>
            <a href="admin_detaljiRada.jsp?id=<%=idrada %>"><input type="button" class="dugme" value="Otkaži"/></a>
           
         </form> 
   </div>
    
    
    
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

