<%@page import="javaKod.Rad"%>
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

        var a=document.prijavarada.ime.value;
        var d=document.prijavarada.apstrakt.value;
        var b=document.prijavarada.oblast.value;
       
       
        if (a==""|| d=="" || b==""){
        alert("Molimo Vas da popunite prazna polja.");
        return false;
        }

       
}
   </script>   
<title>Moj profil - izmena podataka</title>



<div id="main-content">
<%  String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid); 

         Rad r=domain.RadDao.getRadById(id);  
   
%> 
    
<h3>ID rada: <%=id %></h3>  
  <div id="formulari">
	
      <form name="prijavarada" action="Upload_izmenaRada?id=<%=id%>" method="post" onsubmit="return validateForm();">
			
			<div class="polja">
                            
				<label> Naslov rada: <br/>
					<input type="text" name="ime"  maxlength="100" value="<%=r.getImeRada()%>"   /> 
				</label>
			</div>
			<div class="polja">
				<label> Koautori: <br/>
					<input type="text" name="koautor1" value="<%=r.getKoautor1()%>" /><br/>
					<input type="text" name="koautor2" value="<%=r.getKoautor2()%>" /><br/>
					
				</label>
			</div>
			
			<div class="padmenu">
				<label>Naučna oblast:<select name="oblast">
                                        <option value="<%=r.getNaucnaOblast()%>"><%=r.getNaucnaOblast()%></option>
					<option value="elektronika">elektronika</option>
					<option value="telekomunikacije">telekomunikacije</option>
					<option value="računarstvo">računarstvo</option>
					<option value="automatika">automatika</option>
					<option value="nuklearna tehnika">nuklearna tehnika</option>
				</select></label>
			</div>
			
			<div class="polja">
				<label> Apstrakt (max 300 karaktera): <br/>
					<textarea id="apstrakt" name="apstrakt" rows="5" cols="35" maxlength="300" ><%=r.getApstrakt()%></textarea>
				</label>
			</div>
	
			
	

			
				<div class="polja">
					<input class="dugme" type="submit" value="Sačuvaj"/> 
                                        <a href="mojiRadovi.jsp"><input type="button" class="dugme" value="Otkaži"/></a>
                                       
				
	</div>
   
			
            
            
 
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

    
