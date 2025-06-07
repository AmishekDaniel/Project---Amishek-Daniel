<%-- 
    Document   : register
    Created on : 23 Apr, 2025, 3:30:15 PM
    Author     : leina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register | Resto</title>
    <link rel="shortcut icon" href="image/icon.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="css/register.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<section class="register-section">
    <div class="register-container">
        <form class="register-form" action="registerjava.jsp" method="post">
            <h2><i class="fas fa-utensils"></i> Register at Resto</h2>

            <div class="input-group">
                <label for="name"><i class="fas fa-user"></i></label>
                <input type="text" id="name" name="name" placeholder="Full Name" required>
            </div>

            <div class="input-group">
                <label for="email"><i class="fas fa-envelope"></i></label>
                <input type="email" id="email" name="email" placeholder="Email" required>
            </div>

            <div class="input-group">
                <label for="password"><i class="fas fa-lock"></i></label>
                <input type="password" id="password" name="password" placeholder="Password" required>
            </div>

            <button type="submit" class="btn">Register</button>
            <p class="link-text">Already have an account? <a href="login.jsp">Login</a></p>
        </form>
    </div>
</section>

</body>
</html>
