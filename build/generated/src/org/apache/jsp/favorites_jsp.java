package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class favorites_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Favorites</title>\n");
      out.write("       <link rel=\"shortcut icon\" href=\"image/icon.png\" type=\"image/x-icon\">\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            font-family: 'Segoe UI', sans-serif;\n");
      out.write("            background: #f0f0f0;\n");
      out.write("            padding: 20px;\n");
      out.write("        }\n");
      out.write("        .favorite-container {\n");
      out.write("            display: grid;\n");
      out.write("            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));\n");
      out.write("            gap: 20px;\n");
      out.write("        }\n");
      out.write("        .box {\n");
      out.write("            background: white;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            padding: 15px;\n");
      out.write("            text-align: center;\n");
      out.write("            box-shadow: 0 4px 10px rgba(0,0,0,0.1);\n");
      out.write("        }\n");
      out.write("        .box img {\n");
      out.write("            width: 100%;\n");
      out.write("            height: 160px;\n");
      out.write("            object-fit: cover;\n");
      out.write("            border-radius: 8px;\n");
      out.write("        }\n");
      out.write("        .btn {\n");
      out.write("            background: #e74c3c;\n");
      out.write("            color: white;\n");
      out.write("            border: none;\n");
      out.write("            padding: 8px 16px;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            margin-top: 10px;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("        .btn:hover {\n");
      out.write("            background: #c0392b;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<h2>Your Favorite Items ❤️</h2>\n");
      out.write("<div class=\"favorite-container\" id=\"favContainer\"></div>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("function loadFavorites() {\n");
      out.write("    const favorites = JSON.parse(sessionStorage.getItem('favorites') || '[]');\n");
      out.write("    const container = document.getElementById(\"favContainer\");\n");
      out.write("\n");
      out.write("    if (favorites.length === 0) {\n");
      out.write("        container.innerHTML = \"<p>No favorites yet.</p>\";\n");
      out.write("        return;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    container.innerHTML = \"\";\n");
      out.write("    favorites.forEach((item, index) => {\n");
      out.write("        const box = document.createElement(\"div\");\n");
      out.write("        box.className = \"box\";\n");
      out.write("        box.innerHTML = `\n");
      out.write("            <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.img}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("            <h3>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h3>\n");
      out.write("            <p>₹");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("            <button class=\"btn\" onclick=\"removeFavorite(");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${index}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(")\">Remove</button>\n");
      out.write("        `;\n");
      out.write("        container.appendChild(box);\n");
      out.write("    });\n");
      out.write("}\n");
      out.write("\n");
      out.write("function removeFavorite(index) {\n");
      out.write("    let favorites = JSON.parse(sessionStorage.getItem('favorites') || '[]');\n");
      out.write("    favorites.splice(index, 1);\n");
      out.write("    sessionStorage.setItem('favorites', JSON.stringify(favorites));\n");
      out.write("    loadFavorites();\n");
      out.write("}\n");
      out.write("\n");
      out.write("window.onload = loadFavorites;\n");
      out.write("</script>\n");
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
