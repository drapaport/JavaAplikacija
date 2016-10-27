<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="admin_header.jsp" />
<title>Admin login</title>




<script>
function validateForm(){

        var a=document.adminlogin.korisnickoime.value;
        var b=document.adminlogin.lozinka.value;
              
        if (a=="" || b==""){
        alert("Molimo Vas da popunite prazna polja.");
        return false;
        }
        
              
}
   </script>   
            
               
                       
<div id="main-content">
<c:if test="${sessionScope.alogged==null}">
 
                    <form class="login" action="adminLogin" method="post" name="adminlogin" onsubmit="return validateForm();" >
                        <input type="text" name="korisnickoime" class="login-input" placeholder="Korisničko ime">
                        <input type="password" name="lozinka" class="login-input" placeholder="Lozinka">
                        <input type="submit" class="login-submit" value="Uloguj se">
                    </form>
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
