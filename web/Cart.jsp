<%-- 
    Document   : Cart.jsp
    Created on : 14 May, 2025, 8:11:59 PM
    Author     : leina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="shortcut icon" href="image/icon.png" type="image/x-icon">
<%@ page import="java.util.*, model.CartItem" %>

<%
  
    List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
    if (cart == null) cart = new ArrayList<>();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Your Cart</title>
    <link rel="stylesheet" href="css/style.css"><!-- Link your main CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background:#eee;
            padding: 20px;
        }

        .cart-container {
            max-width: 1000px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 14px;
            text-align: center;
        }

        th {
            background-color: #192a56;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .btn {
            padding: 8px 14px;
            background-color: #192a56;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-size: 14px;
            transition: background 0.3s ease;
        }

        .btn:hover {
            background-color:#27ae60;
        }

        .total-row td {
            font-weight: bold;
            font-size: 16px;
        }

        .empty-message {
            text-align: center;
            color: #666;
            font-size: 18px;
            margin-top: 40px;
        }

        .actions {
            margin-top: 20px;
            text-align: center;
        }

        .actions a {
            margin: 0 10px;
        }
    </style>
</head>
<body>

<div class="cart-container">
    <h1>Your Cart</h1>

    <%
        if (cart.isEmpty()) {
    %>
        <p class="empty-message">Your cart is currently empty.</p>
    <%
        } else {
    %>
        <table>
            <thead>
                <tr>
                    <th>Food Name</th>
                    <th>Price (Rs.)</th>
                    <th>Quantity</th>
                    <th>Total (Rs.)</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int grandTotal = 0;
                    for (CartItem item : cart) {
                        int total = item.getPrice() * item.getQuantity();
                        grandTotal += total;
                %>
                    <tr>
                        <td><%= item.getName() %></td>
                        <td><%= item.getPrice() %></td>
                        <td><%= item.getQuantity() %></td>
                        <td><%= total %></td>
                    </tr>
                <% } %>
                <tr class="total-row">
                    <td colspan="3">Grand Total</td>
                    <td>Rs. <%= grandTotal %></td>
                </tr>
            </tbody>
        </table>

        <div class="actions">
            <a href="index.jsp" class="btn"><i class="fas fa-arrow-left"></i> Continue Shopping</a>
            <a href="clearcart.jsp" class="btn"><i class="fas fa-trash"></i> Clear Cart</a>
            <a href="checkout.jsp" class="btn"><i class="fas fa-credit-card"></i> Checkout</a>
        </div>
    <%
        }
    %>
</div>

</body>
</html>
