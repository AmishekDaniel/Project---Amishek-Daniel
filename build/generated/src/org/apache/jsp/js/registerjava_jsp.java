package org.apache.jsp.js;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class registerjava_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

       try{

                     String a=request.getParameter("name");
                    String b=request.getParameter("email");
                    String c=request.getParameter("password");
                    String q="insert into users(name, email, password) values('"+a+"', '"+b+"', '"+c+"')";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/resto?","root","");
                     Statement st=ob.createStatement();

                  int i=st.executeUpdate (q);

                   if (i>0) { 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                      <script>\n");
      out.write("\n");
      out.write("                                            alert(\"succesfully registerd\")\n");
      out.write("                                            window.location=\"login.jsp\"\n");
      out.write("\n");
      out.write("                      </script>\n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                      ");
}


                      
         else{
      out.write("\n");
      out.write("         <script>\n");
      out.write("              alert(\"something wrong\")\n");
      out.write("              window.location=\"register.jsp\"\n");
      out.write("           <script>\n");
      out.write("           \n");
      out.write("       ");
}} catch(Exception e){
 out.print(e);}

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
