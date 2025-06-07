
<%@ page import="java.util.*, model.CartItem" %>
<%
    List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
    if (cart == null) {
        cart = new ArrayList<>();
    }

    int grandTotal = 0;
%>
<!DOCTYPE html>
<html>
<head>
  <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <title>Checkout</title>
    <link rel="shortcut icon" href="image/icon.png" type="image/x-icon">
    <style>
        body {
            font-family: Arial, sans-serif;
            background:#eee;
            padding: 20px;
        }

        .container {
            max-width: 700px;
            margin: auto;
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            padding: 20px 30px;
        }

        h2 {
            text-align: center;
            color: #192a56;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table, th, td {
            border: 1px solid #bbb;
        }

        th, td {
            padding: 8px 10px;
            text-align: center;
           
        }

        th {
            background-color: #192a56;
            color: white;
        }

        .form-group {
            margin-bottom: 12px;
        }

        label {
            font-size: 14px;
            display: block;
            margin-bottom: 4px;
        }

        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            margin-top: 15px;
            width: 100%;
            padding: 10px;
            background-color:  #27ae60;
            color: white;
            border: none;
            font-size: 15px;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #192a56;
        }
    </style>
</head>

<script>
document.querySelector("form").addEventListener("submit", function(e) {
    var phone = document.getElementById("phone").value.trim();
     var email = document.getElementById("email").value.trim();
    
    var phonePattern = /^[6-9][0-9]{9}$/;
     var emailPattern = /^[a-zA-Z0-9._%+-]+@gmail\\.com$/;

    if (!phonePattern.test(phone)) {
        alert("❌ Invalid mobile number. Please enter a valid 10-digit Indian number starting with 6-9.");
        e.preventDefault();
        return;
    }

    if (!emailPattern.test(email)) {
        alert("❌ Please enter a valid Gmail address ending with @gmail.com");
        e.preventDefault();
    }
});
</script>
<body>
<div class="container">
    <h2>Checkout</h2>

    <form action="placeorder.jsp" method="post">
        <div class="form-group">
            <label for="customerName">Customer Name</label>
            <input type="text" name="customerName" id="customerName" required>
        </div>
        <div class="form-group">
            <label for="phone">Mobile Number</label>
            <input type="text" name="phone" id="phone" required pattern="[6-9]{1}[0-9]{9}" title="Enter valid 10-digit Indian mobile number">
        </div>
        <div class="form-group">
            <label for="email">Email (optional)</label>
           <input type="email" name="email" id="email"  pattern="[a-zA-Z0-9._%+-]+@gmail\\.com" title="Enter a valid Gmail address like example@gmail.com"
       placeholder="example@gmail.com"
       required>

        </div>
        <div class="form-group">
            <label for="address">Delivery Address</label>
            <input type="text" name="address" id="address" required>
        </div>

        <h3>Cart Summary</h3>
        <table>
            <tr>
                <th>Item</th>
                <th>Qty</th>
                <th>Price</th>
                <th>Total</th>
            </tr>
            <% for (CartItem item : cart) {
                int total = item.getPrice() * item.getQuantity();
                grandTotal += total;
            %>
            <tr>
                <td><%= item.getName() %></td>
                <td><%= item.getQuantity() %></td>
                <td>₹<%= item.getPrice() %></td>
                <td>₹<%= total %></td>
            </tr>
            <% } %>
            <tr>
                <td colspan="3" style="text-align:right;"><strong>Grand Total:</strong></td>
                <td><strong>₹<%= grandTotal %></strong></td>
            </tr>
        </table>

        <input type="hidden" name="foodItems" value="<%= cart.toString() %>">
        <input type="hidden" name="totalAmount" value="<%= grandTotal %>">

        <button type="submit" class="btn">Place Order</button>
    </form>
</div>
</body>
</html>

