<%-- 
    Document   : addtocart.jsp
    Created on : 14 May, 2025, 8:09:22 PM
    Author     : leina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, model.CartItem" %>
<%
    String name = request.getParameter("name");
    int price = Integer.parseInt(request.getParameter("price"));
    int quantity = Integer.parseInt(request.getParameter("quantity"));



    List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
    if (cart == null) {
        cart = new ArrayList<>();
        session.setAttribute("cart", cart);
    }

    boolean itemFound = false;

    for (CartItem item : cart) {
        if (item.getName().equals(name)) {
            // Item already in cart — update quantity
            item.setQuantity(item.getQuantity() + quantity);
            itemFound = true;
            break;
        }
    }

    // If item is not already in cart, add new one
    if (!itemFound) {
        CartItem newItem = new CartItem(name, price, quantity);
        cart.add(newItem);
    }

    // Redirect with message
    response.sendRedirect("index.jsp?added=" + java.net.URLEncoder.encode(name, "UTF-8"));
%>

