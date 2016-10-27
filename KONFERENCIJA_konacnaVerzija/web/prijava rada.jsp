<%@page import="org.hibernate.HibernateException"%>
<%@page import="javaKod.Rad"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="model.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<script>
function validateForm(){

        var a=document.prijavarada.ime.value;
        var d=document.prijavarada.apstrakt.value;
        var b=document.prijavarada.oblast.value;
        var e=document.prijavarada.myFile.value;
       
        if (a==""|| d=="" || e=="" || b==""){
        alert("Molimo Vas da popunite prazna polja.");
        return false;
        }

       
}
   </script>   

 
	<div id="main-content">
      
		<h3>Formular za prijavu rada</h3>

		
	
	
	<div id="formulari">
	
	<form name="prijavarada" enctype="multipart/form-data" action="upload" method="post" onsubmit="return validateForm();">
			
			<div class="polja">
				<label>*Naslov rada: <br/>
					<input type="text" name="ime"  maxlength="100"/> 
				</label>
			</div>
			<div class="polja">
				<label>Koautori: <br/>
					<input type="text" name="koautor1"  /><br/>
					<input type="text" name="koautor2"  /><br/>
					
				</label>
			</div>
			
			<div class="padmenu">
				<label>*Naučna oblast:<select name="oblast">
                                        <option value="">odaberite</option>
					<option value="elektronika">elektronika</option>
					<option value="telekomunikacije">telekomunikacije</option>
					<option value="računarstvo">računarstvo</option>
					<option value="automatika">automatika</option>
					<option value="nuklearna tehnika">nuklearna tehnika</option>
				    </select>
                                </label>
			</div>
			
			<div class="polja">
				<label>*Apstrakt (max 300 karaktera): <br/>
					<textarea id="apstrakt" name="apstrakt" rows="5" cols="35" maxlength="300"></textarea>
				</label>
			</div>
	
			<div class="polja">
				<label>*Upload rada (obavezan format: .pdf) :<br/>
					<input name="myFile" type="file" accept="application/pdf,application/vnd.ms-excel" /> 
				</label>
			</div>
	

			
				<div class="polja">
					<input class="dugme" type="submit" value="Pošalji"/> 
					<input class="dugme" type="reset" value="Obriši"/>
	</div>
   
			
            
            
 
    </form>
                            <p>Obavezna polja su obeležena znakom (*)</p>
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
