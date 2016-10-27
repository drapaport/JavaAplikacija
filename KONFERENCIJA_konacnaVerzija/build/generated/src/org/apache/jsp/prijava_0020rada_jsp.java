package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.hibernate.HibernateException;
import javaKod.Rad;
import org.hibernate.Session;
import org.hibernate.Transaction;
import model.HibernateUtil;

public final class prijava_0020rada_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("<script>\n");
      out.write("function validateForm(){\n");
      out.write("\n");
      out.write("        var a=document.prijavarada.ime.value;\n");
      out.write("        var d=document.prijavarada.apstrakt.value;\n");
      out.write("        var b=document.prijavarada.oblast.value;\n");
      out.write("        var e=document.prijavarada.myFile.value;\n");
      out.write("       \n");
      out.write("        if (a==\"\"|| d==\"\" || e==\"\" || b==\"\"){\n");
      out.write("        alert(\"Molimo Vas da popunite prazna polja.\");\n");
      out.write("        return false;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("       \n");
      out.write("}\n");
      out.write("   </script>   \n");
      out.write("\n");
      out.write(" \n");
      out.write("\t<div id=\"main-content\">\n");
      out.write("      \n");
      out.write("\t\t<h3>Formular za prijavu rada</h3>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t<div id=\"formulari\">\n");
      out.write("\t\n");
      out.write("\t<form name=\"prijavarada\" enctype=\"multipart/form-data\" action=\"upload\" method=\"post\" onsubmit=\"return validateForm();\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"polja\">\n");
      out.write("\t\t\t\t<label>*Naslov rada: <br/>\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"ime\"  maxlength=\"100\"/> \n");
      out.write("\t\t\t\t</label>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"polja\">\n");
      out.write("\t\t\t\t<label>Koautori: <br/>\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"koautor1\"  /><br/>\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"koautor2\"  /><br/>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</label>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"padmenu\">\n");
      out.write("\t\t\t\t<label>*Naučna oblast:<select name=\"oblast\">\n");
      out.write("                                        <option value=\"\">odaberite</option>\n");
      out.write("\t\t\t\t\t<option value=\"elektronika\">elektronika</option>\n");
      out.write("\t\t\t\t\t<option value=\"telekomunikacije\">telekomunikacije</option>\n");
      out.write("\t\t\t\t\t<option value=\"računarstvo\">računarstvo</option>\n");
      out.write("\t\t\t\t\t<option value=\"automatika\">automatika</option>\n");
      out.write("\t\t\t\t\t<option value=\"nuklearna tehnika\">nuklearna tehnika</option>\n");
      out.write("\t\t\t\t    </select>\n");
      out.write("                                </label>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"polja\">\n");
      out.write("\t\t\t\t<label>*Apstrakt (max 300 karaktera): <br/>\n");
      out.write("\t\t\t\t\t<textarea id=\"apstrakt\" name=\"apstrakt\" rows=\"5\" cols=\"35\" maxlength=\"300\"></textarea>\n");
      out.write("\t\t\t\t</label>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\n");
      out.write("\t\t\t<div class=\"polja\">\n");
      out.write("\t\t\t\t<label>*Upload rada (obavezan format: .pdf) :<br/>\n");
      out.write("\t\t\t\t\t<input name=\"myFile\" type=\"file\" accept=\"application/pdf,application/vnd.ms-excel\" /> \n");
      out.write("\t\t\t\t</label>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t<div class=\"polja\">\n");
      out.write("\t\t\t\t\t<input class=\"dugme\" type=\"submit\" value=\"Pošalji\"/> \n");
      out.write("\t\t\t\t\t<input class=\"dugme\" type=\"reset\" value=\"Obriši\"/>\n");
      out.write("\t</div>\n");
      out.write("   \n");
      out.write("\t\t\t\n");
      out.write("            \n");
      out.write("            \n");
      out.write(" \n");
      out.write("    </form>\n");
      out.write("                            <p>Obavezna polja su obeležena znakom (*)</p>\n");
      out.write("            </div> \n");
      out.write("\t\t\t\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("\t\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<div id=\"organizatori\">\n");
      out.write("\t\t<h3> Organizatori</h3>\n");
      out.write("\t\t\t<p><a href=\"http://etran.etf.rs\" title=\"Društvo ETRAN\">\n");
      out.write("\t\t\t\t<img src=\"slike/etran3.gif\" alt=\"Društvo ETRAN\"/></a></p>\n");
      out.write("\t\t\t<p> <a href=\"http://www.elfak.ni.ac.rs\" title=\"Elektrotehnički fakultet Niš\">\n");
      out.write("\t\t\t\t<img src=\"slike/rsz_nis.jpg\" alt=\"Elektrotehnički fakultet Niš\"/></a></p>\n");
      out.write("\t\t\t<p><a href=\"http://www.mpn.gov.rs/\" title=\"Ministarstvo prosvete\">\n");
      out.write("\t\t\t\t<img src=\"slike/grb1.jpg\" alt=\"Ministarstvo prosvete\"/></a></p>\n");
      out.write("\t\t\t<p><a href=\"http://www.ieee.org\">\n");
      out.write("\t\t\t\t<img src=\"http://www.ieee.org/ucm/groups/public/@ieee/@web/@org/@globals/documents/images/ieee_logo_mb_tagline.gif\" alt=\"IEEE\"/></a></p>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write(" \n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
