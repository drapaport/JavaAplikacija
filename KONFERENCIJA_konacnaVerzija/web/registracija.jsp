<%@page import="model.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.HibernateException"%>
<%@page import="javaKod.Zaposlenje"%>
<%@page import="javaKod.Autor"%>
<%@page import="org.hibernate.Transaction"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<title>Registracija</title>
<script>
function validateForm(){

        var a=document.registracija.ime.value;
        var b=document.registracija.prezime.value;
        var d=document.registracija.email.value;
        var x=document.registracija.lozinka.value;
        var y=document.registracija.pot_loz.value;
        var e=document.registracija.telefon.value;
        var c=document.registracija.imeinstitucije.value;
        var g=document.registracija.grad.value;
        var j=document.registracija.JMBG.value;
        var k=document.registracija.drzava.value;
        var p=document.registracija.pozicija.value;

        if (a=="" || b=="" || c=="" || d=="" || e=="" || x=="" || y=="" || g==""|| k==""|| p==""){
        alert("Molimo Vas da popunite prazna polja.");
        return false;
        }

        var email=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if (!d.match(email)){
        alert("Neispravan format e-mail adrese!");
        document.registracija.email.focus();  
        return false;
        }
        
        if (!y.match(x)){
        alert("Polje 'Potvrdi lozinku' se ne poklapa sa poljem 'Lozinka'!");
        document.registracija.pot_loz.focus();
        return false;
        }
        
       
        var jmbg = /^[0-9]+$/;  
        if(!j.match(jmbg)){
        alert('JMBG mora sadržati samo numeričke vrednosti!');  
        document.registracija.JMBG.focus();  
        return false;  
        } 
        
         var duzina_jmbg = j.length;
        if (duzina_jmbg > 13 || duzina_jmbg <13 ){
        alert('JMBG mora sadržati tačno 13 cifara!');  
        document.registracija.JMBG.focus(); 
        return false; 
        }
        
        var mobilni= /^\+?([0-9]{3})\)?[-. ]?([0-9]{2})[-. ]?([0-9]{6,7})$/;
                // /^\(?([0-9]{3})\)?[-]?([0-9]{6,7})$/;
	if (!e.match(mobilni)){
        alert("Neispravan format broja telefona!");
        document.registracija.telefon.focus();
	return false;
	}        
}
   </script>   


<div id="main-content">
       <h3>Formular za registraciju</h3>

    <form class="login" name="registracija" action="registracijaIspis.jsp" method="post" onsubmit="return validateForm();">
         <p style="padding: 0px 0px 0px 5px;">Lični podaci:</p>
        <input type="text" name = "ime" class="login-input" placeholder="Ime">
       <input type="text" name="prezime" class="login-input" placeholder="Prezime">
        <input type="text" name="email" class="login-input" placeholder="e-mail">
        <input type="password" name="lozinka" class="login-input" placeholder="Lozinka">
        <input type="password" name="pot_loz" class="login-input" placeholder="Ponovi lozinku">
        <input type="text" name="JMBG" class="login-input" placeholder="JMBG" maxlength="13">
        <input type="text" name="telefon" class="login-input" placeholder="Telefon [+xxx-xx-xxxxxxx]">
         <p style="padding: 10px 0px 0px 5px;">Podaci o mestu zaposlenja:</p>
        <input type="text" name="imeinstitucije" class="login-input" placeholder="Ime institucije">
        <input type="text" name="grad" class="login-input" placeholder="Grad">
        <input type="text" name="drzava" class="login-input" placeholder="Država">
        <input type="text" name="pozicija" class="login-input" placeholder="Pozicija zaposlenja">
        <input type="submit" class="login-submit" value="Registruj se">
        <input type="reset" class="login-submit" value="Obriši">
        <p style="padding: 0px 0px 0px 5px;">Obavezno popuniti sva polja!</p>
        
      
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
