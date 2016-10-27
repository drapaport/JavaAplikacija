<%@page import="org.hibernate.HibernateException"%>
<%@page import="org.hibernate.Session"%>
<%@page import="javaKod.Zaposlenje"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="model.HibernateUtil"%>
<%@page import="javaKod.Autor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<script>
function validateForm(){

        var a=document.izmenapodataka.ime.value;
        var b=document.izmenapodataka.prezime.value;
        var x=document.izmenapodataka.lozinka.value;
        var e=document.izmenapodataka.telefon.value;
        var c=document.izmenapodataka.imeinstitucije.value;
        var g=document.izmenapodataka.grad.value;
        var j=document.izmenapodataka.JMBG.value;
        var k=document.izmenapodataka.drzava.value;
        var p=document.izmenapodataka.pozicija.value;

        if (a=="" || b=="" || c=="" || e=="" || x=="" || g==""|| k==""|| p==""){
        alert("Molimo Vas da popunite prazna polja.");
        return false;
        }
       
        var jmbg = /^[0-9]+$/;  
        if(!j.match(jmbg)){
        alert('JMBG mora sadržati samo numeričke vrednosti!');  
        document.izmenapodataka.JMBG.focus();  
        return false;  
        } 
        
         var duzina_jmbg = j.length;
        if (duzina_jmbg > 13 || duzina_jmbg <13 ){
        alert('JMBG mora sadržati tačno 13 cifara!');  
        document.izmenapodataka.JMBG.focus(); 
        return false; 
        }
        
        var mobilni= /^\+?([0-9]{3})\)?[-. ]?([0-9]{2})[-. ]?([0-9]{6,7})$/;
                // /^\(?([0-9]{3})\)?[-]?([0-9]{6,7})$/;
	if (!e.match(mobilni)){
        alert("Neispravan format broja telefona!");
        document.izmenapodataka.telefon.focus();
	return false;
	}        
}
   </script>   
<title>Moj profil - izmena podataka</title>



<div id="main-content">
    
    <h3>Izmenite svoje podatke</h3>
    
    <% String email = (String) request.getSession(true).getAttribute("email");
    Autor autor = domain.getAutorinfo.getAutorByemail(email);
  
    %>
    
    
     <form class="login" action="updateAutor" method="post" name="izmenapodataka" onsubmit="return validateForm();">
         <p style="padding: 0px 0px 0px 5px;">Lični podaci:</p>
        <input type="text" name = "ime" class="login-input" placeholder="Ime" value="<%=autor.getImeAutora() %>" >
       <input type="text" name="prezime" class="login-input" placeholder="Prezime" value="<%=autor.getPrezimeAutora() %>">
      
        <input type="text" name="lozinka" class="login-input" placeholder="Lozinka" value="<%=autor.getLozinka() %>">
        <input type="text" name="JMBG" class="login-input" placeholder="JMBG" maxlength="13" value="<%=autor.getJMBG() %>">
        <input type="text" name="telefon" class="login-input" placeholder="Telefon [+xxx-xx-xxxxxxx]" value="<%=autor.getBrojTelefona() %>">
         <p style="padding: 10px 0px 0px 5px;">Podaci o mestu zaposlenja:</p>
        <input type="text" name="imeinstitucije" class="login-input" placeholder="Ime institucije" value="<%=autor.getZaposlenjeInfo().getImeInstitucije() %>">
        <input type="text" name="grad" class="login-input" placeholder="Grad" value="<%=autor.getZaposlenjeInfo().getGrad() %>">
        <input type="text" name="drzava" class="login-input" placeholder="Država" value="<%=autor.getZaposlenjeInfo().getDrzava() %>">
        <input type="text" name="pozicija" class="login-input" placeholder="Pozicija zaposlenja" value="<%=autor.getZaposlenjeInfo().getPozicija() %>">
        <input type="submit" class="login-submit" value="Ažuriraj podatke">
     
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
