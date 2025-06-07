<%-- 
    Document   : clearcart.jsp
    Created on : 15 May, 2025, 8:18:48 AM
    Author     : leina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    session.removeAttribute("cart");  // Clear the cart from session
    response.sendRedirect("Cart.jsp"); // Redirect back to cart page
%>
