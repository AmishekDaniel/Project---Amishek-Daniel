<%-- 
    Document   : placeorder.jsp
    Created on : 15 May, 2025, 8:27:55 AM
    Author     : leina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="shortcut icon" href="image/icon.png" type="image/x-icon">
<%@ page import="java.sql.*, java.util.*, model.CartItem" %>
<%
    String name = request.getParameter("customerName");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String address = request.getParameter("address");

    List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
    if (cart == null) cart = new ArrayList<>();

    StringBuilder itemSummary = new StringBuilder();
    int grandTotal = 0;

    for (CartItem item : cart) {
        int itemTotal = item.getPrice() * item.getQuantity();
        itemSummary.append(item.getName())
                   .append(" × ")
                   .append(item.getQuantity())
                   .append(" = ₹")
                   .append(itemTotal)
                   .append(", ");
        grandTotal += itemTotal;
    }

    if (itemSummary.length() > 0) {
        itemSummary.setLength(itemSummary.length() - 2); // remove last comma
    }

    boolean success = false;
    String errorMessage = "";

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resto", "root", "");

        String sql = "INSERT INTO orders (customer_name, phone, email, address, food_items, total_amount) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, name);
        ps.setString(2, phone);
        ps.setString(3, email != null ? email : "");
        ps.setString(4, address);
        ps.setString(5, itemSummary.toString());
        ps.setInt(6, grandTotal);

        int result = ps.executeUpdate();
        if (result > 0) {
            session.removeAttribute("cart"); // ✅ Clear cart
            success = true;
        }

        ps.close();
        con.close();
    } catch (Exception e) {
        errorMessage = e.getMessage();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Order Confirmation</title>
    <style>
        body {
            font-family: "Segoe UI", sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 40px;
        }

        .container {
            max-width: 700px;
            margin: auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.08);
        }

        h2 {
            text-align: center;
            color: <%= success ? "#2e7d32" : "#d32f2f" %>;
        }

        p {
            font-size: 15px;
            color: #444;
            margin: 8px 0;
        }

        .summary {
            margin-top: 20px;
            background-color: #f9f9f9;
            padding: 15px;
            border-left: 4px solid #ccc;
            border-radius: 6px;
        }

        .btn {
            display: block;
            width: 100%;
            text-align: center;
            background-color: #192a56;
            color: white;
            padding: 12px;
            text-decoration: none;
            font-size: 15px;
            border-radius: 6px;
            margin-top: 25px;
        }

        .btn:hover {
            background-color: #27ae60;
        }
    </style>
</head>
<body>
<div class="container">
<% if (success) { %>
    <h2>🎉 Order Placed Successfully!</h2>
    <p><strong>Name:</strong> <%= name %></p>
    <p><strong>Phone:</strong> <%= phone %></p>
    <p><strong>Email:</strong> <%= email %></p>
    <p><strong>Address:</strong> <%= address %></p>

    <div class="summary">
        <p><strong>Ordered Items:</strong><br><%= itemSummary.toString() %></p>
        <p><strong>Total Amount:</strong> ₹<%= grandTotal %></p>
    </div>

    <a href="index.jsp" class="btn">Back to Home</a>
<% } else { %>
    <h2>❌ Failed to Place Order</h2>
    <p><strong>Error:</strong> <%= errorMessage %></p>
    <a href="checkout.jsp" class="btn">Try Again</a>
<% } %>
</div>
</body>
</html>
