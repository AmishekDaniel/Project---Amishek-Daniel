package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    String userPhone = (String) session.getAttribute("userPhone");
    String userEmail = (String) session.getAttribute("userEmail");

    if (userPhone == null || userEmail == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    // Save the name if form is submitted
    String newName = request.getParameter("updatedName");
    if (newName != null && !newName.trim().isEmpty()) {
        session.setAttribute("userName", newName.trim());
    }

    String userName = (String) session.getAttribute("userName");
    if (userName == null) {
        userName = "";
    }

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>User Profile</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css\"/>\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            font-family: 'Segoe UI', sans-serif;\n");
      out.write("            background-color: #f0f0f0;\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 40px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container {\n");
      out.write("            max-width: 80%;\n");
      out.write("            margin: auto;\n");
      out.write("            background-color: #ffffff;\n");
      out.write("            padding: 40px;\n");
      out.write("            border-radius: 12px;\n");
      out.write("            box-shadow: 0 6px 20px rgba(0,0,0,0.08);\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .profile-icon {\n");
      out.write("            font-size: 90px;\n");
      out.write("            color: #192a56;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        h2 {\n");
      out.write("            margin-top: 10px;\n");
      out.write("            color: #333;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        p {\n");
      out.write("            font-size: 16px;\n");
      out.write("            color: #555;\n");
      out.write("            margin: 8px 0;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        input[type=\"text\"] {\n");
      out.write("            padding: 8px;\n");
      out.write("            width: 250px;\n");
      out.write("            font-size: 16px;\n");
      out.write("            margin-top: 10px;\n");
      out.write("            margin-bottom: 10px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .btn {\n");
      out.write("            display: inline-block;\n");
      out.write("            margin: 10px 10px 0;\n");
      out.write("            padding: 10px 20px;\n");
      out.write("            background-color: #192a56;\n");
      out.write("            color: white;\n");
      out.write("            text-decoration: none;\n");
      out.write("            border-radius: 6px;\n");
      out.write("            font-size: 14px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .btn:hover {\n");
      out.write("            background-color: #27ae60;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .btn-submit {\n");
      out.write("            background-color: #2980b9;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .btn-submit:hover {\n");
      out.write("            background-color: #3498db;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("    <div class=\"profile-icon\">\n");
      out.write("        <i class=\"fas fa-user-circle\"></i>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <form method=\"post\" action=\"profile.jsp\">\n");
      out.write("        <h2>Edit Your Name</h2>\n");
      out.write("        <input type=\"text\" name=\"updatedName\" value=\"");
      out.print( userName );
      out.write("\" placeholder=\"Enter your name\" required>\n");
      out.write("        <br>\n");
      out.write("        <button type=\"submit\" class=\"btn btn-submit\">Save Name</button>\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("    <p><strong>Mobile:</strong> ");
      out.print( userPhone );
      out.write("</p>\n");
      out.write("    <p><strong>Email:</strong> ");
      out.print( userEmail );
      out.write("</p>\n");
      out.write("\n");
      out.write("    <a href=\"orderhistory.jsp\" class=\"btn\">View Order History</a>\n");
      out.write("    <a href=\"logout.jsp\" class=\"btn\">Logout</a>\n");
      out.write("</div>\n");
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
