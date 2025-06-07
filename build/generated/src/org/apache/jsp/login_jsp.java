package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <title>Login | Resto</title>\n");
      out.write("    <link rel=\"shortcut icon\" href=\"image/icon.png\" type=\"image/x-icon\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css\" integrity=\"sha512-...\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/login.css\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <!-- Removed the extra <form> tag inside the form tag -->\n");
      out.write("    <form class=\"login-form\" action=\"loginjava.jsp\" method=\"post\">\n");
      out.write("        <section class=\"login-section\">\n");
      out.write("            <div class=\"login-container\">\n");
      out.write("                <h2><i class=\"fas fa-utensils\"></i> Login to Resto</h2>\n");
      out.write("\n");
      out.write("                <div class=\"input-group\">\n");
      out.write("                    <label for=\"email\"><i class=\"fas fa-envelope\"></i></label>\n");
      out.write("                    <!-- Add name attribute so that the value can be sent with the form -->\n");
      out.write("                    <input type=\"email\" id=\"email\" name=\"email\" placeholder=\"Email\" required>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"input-group\">\n");
      out.write("                    <label for=\"password\"><i class=\"fas fa-lock\"></i></label>\n");
      out.write("                    <!-- Add name attribute so that the value can be sent with the form -->\n");
      out.write("                    <input type=\"password\" id=\"password\" name=\"password\" placeholder=\"Password\" required>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <button type=\"submit\" class=\"btn\">Login</button>\n");
      out.write("                <p class=\"link-text\">Don't have an account? <a href=\"register.jsp\">Register</a></p>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("</body>\n");
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
