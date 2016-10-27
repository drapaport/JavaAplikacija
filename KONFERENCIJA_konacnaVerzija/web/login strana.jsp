<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<title>Login</title>
<script>
function validateForm(){

        var a=document.login.email.value;
        var b=document.login.lozinka.value;
              
        if (a=="" || b==""){
        alert("Molimo Vas da popunite prazna polja.");
        return false;
        }
        
        var email=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if (!a.match(email)){
        alert("Neispravan format e-mail adrese!");
        document.login.email.focus();  
        return false;
        }

       
}
   </script>   

                <div id="main-content">

                    <form class="login" action="login" method="post" name="login" onsubmit="return validateForm();">
                        <input type="text" name="email" class="login-input" placeholder="e-mail">
                        <input type="password" name="lozinka" class="login-input" placeholder="lozinka">
                        <input type="submit" class="login-submit" value="Uloguj se">
                        <p class="login-help">
                        <a href="registracija.jsp">Nemate nalog? Kliknite za registraciju.</a></p>
                    </form>

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
