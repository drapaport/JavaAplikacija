package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write(" <title>Naslovna strana</title>\n");
      out.write("\t\n");
      out.write("        \n");
      out.write("        <div id=\"main-content\">\n");
      out.write("            \n");
      out.write("\t\t<h2>ETRAN</h2>\n");
      out.write("\t\t<h3>Vrnjačka Banja</h3><h3> 2 - 5. novembra 2016. godine</h3>\n");
      out.write("\t\t<p>Društvo za ETRAN i Elektronski fakultet Niš, pod pokroviteljstvom Ministarstva prosvete, nauke i tehnološkog razvoja Republike Srbije i uz podršku međunarodnog udruženja IEEE, organizuju\n");
      out.write("\t\t58. konferenciju za elektroniku, telekomunikacije, računarstvo, automatiku i nuklearnu tehniku ETRAN.</p>\n");
      out.write("\t\t<p>U isto vreme i na istom mestu sa 58. konferencijom ETRAN-a biće održana međunarodna konferencija IcETRAN 2016.\n");
      out.write("\t\tKonferencija IcETRAN pokriva iste oblasti kao konferencija ETRAN, tako da učesnici mogu da izaberu da li žele da učestvuju na nacionalnoj konferenciji ETRAN uz mogućnost da rad prezentiraju na srpskom jeziku i publikuju ga na srpskom (ćirilica ili latinica) ili će rad nameniti međunarodnoj konferenciji IcETRAN, u kom slučaju će biti obavezni da rad napišu i izlože na engleskom.\n");
      out.write("\t\tFormat radova u oba slučaja je standardni IEEE Transactions obrazac. ICETRAN ima međunarodni naučni odbor sastavljen od renomiranih naučnih istraživača iz celoga sveta, kao i međunarodne recenzente i zadovoljava sve formalne i suštinske kriterijume međunarodne konferencije, uključujući one koje postavlja resorno ministarstvo.\n");
      out.write("\t\tStručno-tehničke službe i infrastruktura obe konferencije su zajednički.</p>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t</div> \n");
      out.write("   \n");
      out.write("\n");
      out.write("\t<div id=\"slike-naslovna\">\n");
      out.write("\t\t<img src=\"foto etran/001.jpg\" alt=\"ETRAN\" />\n");
      out.write("\t\t<img src=\"foto etran/030.jpg\" alt=\"ETRAN\" />\n");
      out.write("\t\t<img src=\"foto etran/035.jpg\" alt=\"ETRAN\" />\n");
      out.write("\t</div>\n");
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
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("   </body>\n");
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
