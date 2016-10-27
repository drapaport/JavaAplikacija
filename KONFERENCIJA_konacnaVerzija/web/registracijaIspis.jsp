<%@page import="domain.proveraEmaila"%>
<%@page import="javaKod.Odluka"%>
<%@page import="javaKod.Rad"%>
<%@page import="model.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.HibernateException"%>
<%@page import="javaKod.Zaposlenje"%>
<%@page import="javaKod.Autor"%>
<%@page import="org.hibernate.Transaction"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<title>Dobrodošli</title>

<div id="main-content">
     <%
            
            String ime = request.getParameter("ime");
            String prezime = request.getParameter("prezime");
            String email = request.getParameter("email");
            String lozinka = request.getParameter("lozinka");
            String JMBG = request.getParameter("JMBG");
            String telefon = request.getParameter("telefon");
            String imeinstitucije = request.getParameter("imeinstitucije");
            String grad = request.getParameter("grad");
            String drzava = request.getParameter("drzava");
            String pozicija = request.getParameter("pozicija");
            
           
               Session session1 = HibernateUtil.createSessionFactory().openSession();
                Transaction tx = null;
                try {
                    tx = session1.beginTransaction();
   
                    Autor a = new Autor();
                    a.setImeAutora(ime);
                    a.setPrezimeAutora(prezime);
                    a.setEmail(email);
                    a.setLozinka(lozinka);
                    a.setJMBG(JMBG);
                    a.setBrojTelefona(telefon);
              
                    
                    Zaposlenje z = new Zaposlenje();
                    z.setImeInstitucije(imeinstitucije);
                    z.setGrad(grad);
                    z.setDrzava(drzava);
                    z.setPozicija(pozicija);
                   
                    a.setZaposlenjeInfo(z);
                    z.setAutor(a);
          
                    if(proveraEmaila.checkEmail(email)){ 
                        out.println("<h3>Već postoji registrovan korisnik sa e-mailom:<h3>" + email); 
                    }
                    
                     else{ session1.save(a);
                    session1.save(z);
                    tx.commit(); 
                    
                    
                    out.println("<h3>Uspešno ste se registrovali!</h3>");
                     out.println("<p><u>Lični podaci:</u></p>");
        out.println("<p><b>Korisnički ID:</b> " + a.getIdAutora() + "</p>");
        out.println("<p><b>Ime i prezime: </b> " + a.getImeAutora()+ " " + a.getPrezimeAutora() + "</p>");
        out.println("<p><b>E-mail: </b> " + a.getEmail() + "</p>");
        out.println("<p><b>JMBG: </b> " + a.getJMBG() + "</p>");
        out.println("<p><b>Broj telefona: </b> " + a.getBrojTelefona() + "</p>");
        out.println("<br>");
        out.println("<p><u>Podaci o zaposlenju:</u></p>");
        out.println("<p><b>Ime institucije: </b> " + a.getZaposlenjeInfo().getImeInstitucije()+ "</p>");
        out.println("<p><b>Grad: </b> " + a.getZaposlenjeInfo().getGrad()+ "</p>");
        out.println("<p><b>Država: </b> " + a.getZaposlenjeInfo().getDrzava()+ "</p>");
        out.println("<p><b>Vaša pozicija zaposlenja: </b> " +a.getZaposlenjeInfo().getPozicija()+ "</p>");

    
                    }
                    
       

                } catch (HibernateException e) {
                    if (tx != null) {
                        tx.rollback();
                    }
                    System.out.println("Greska");
                } finally {
                    session1.close();
                }
           
                
        
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
