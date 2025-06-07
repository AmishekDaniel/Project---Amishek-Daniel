<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login | Resto</title>
    <link rel="shortcut icon" href="image/icon.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/login.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <!-- Removed the extra <form> tag inside the form tag -->
    <form class="login-form" action="loginjava.jsp" method="post">
        <section class="login-section">
            <div class="login-container">
                <h2><i class="fas fa-utensils"></i> Login to Resto</h2>

                <div class="input-group">
                    <label for="email"><i class="fas fa-envelope"></i></label>
                    <!-- Add name attribute so that the value can be sent with the form -->
                    <input type="email" id="email" name="email" placeholder="Email" required>
                </div>

                <div class="input-group">
                    <label for="password"><i class="fas fa-lock"></i></label>
                    <!-- Add name attribute so that the value can be sent with the form -->
                    <input type="password" id="password" name="password" placeholder="Password" required>
                </div>

                <button type="submit" class="btn">Login</button>
                <p class="link-text">Don't have an account? <a href="register.jsp">Register</a></p>
            </div>
        </section>
    </form>

</body>
</html>
