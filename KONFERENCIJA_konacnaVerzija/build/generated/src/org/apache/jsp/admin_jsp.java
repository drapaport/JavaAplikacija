package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
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
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "admin_header.jsp", out, false);
      out.write("\n");
      out.write("<title>Admin login</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("function validateForm(){\n");
      out.write("\n");
      out.write("        var a=document.adminlogin.korisnickoime.value;\n");
      out.write("        var b=document.adminlogin.lozinka.value;\n");
      out.write("              \n");
      out.write("        if (a==\"\" || b==\"\"){\n");
      out.write("        alert(\"Molimo Vas da popunite prazna polja.\");\n");
      out.write("        return false;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("              \n");
      out.write("}\n");
      out.write("   </script>   \n");
      out.write("            \n");
      out.write("               \n");
      out.write("                       \n");
      out.write("<div id=\"main-content\">\n");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("</div> \n");
      out.write("      \n");
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
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write(" \n");
      out.write("   </body>\n");
      out.write("   \n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.alogged==null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write(" \n");
        out.write("                    <form class=\"login\" action=\"adminLogin\" method=\"post\" name=\"adminlogin\" onsubmit=\"return validateForm();\" >\n");
        out.write("                        <input type=\"text\" name=\"korisnickoime\" class=\"login-input\" placeholder=\"Korisničko ime\">\n");
        out.write("                        <input type=\"password\" name=\"lozinka\" class=\"login-input\" placeholder=\"Lozinka\">\n");
        out.write("                        <input type=\"submit\" class=\"login-submit\" value=\"Uloguj se\">\n");
        out.write("                    </form>\n");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }
}
