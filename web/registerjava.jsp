<%-- 
    Document   : registerjava
    Created on : 23 Apr, 2025, 3:38:03 PM
    Author     : leina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       try{

                     String a=request.getParameter("name");
                    String b=request.getParameter("email");
                    String c=request.getParameter("password");
                    String q="insert into users(name, email, password) values('"+a+"', '"+b+"', '"+c+"')";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/resto?","root","");
                     Statement st=ob.createStatement();

                  int i=st.executeUpdate (q);

                   if (i>0) { %>



                      <script>

                                           
                                            window.location="login.jsp"
                                             alert("succesfully registerd")

                      </script>
                      
                      
                      <%}


                      
         else{%>
         <script>
              alert("something wrong")
              window.location="register.jsp"
           </script>
           
       <%}} catch(Exception e){
 out.print(e);
}
%>

    </body>
</html>
