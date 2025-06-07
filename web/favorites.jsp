<%-- 
    Document   : favorites
    Created on : 2 Jun, 2025, 3:29:29 PM
    Author     : leina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Favorites</title>
    <link rel="shortcut icon" href="image/icon.png" type="image/x-icon">
    <style>
        body {
            font-family: sans-serif;
            background-color: #f8f8f8;
            padding: 30px;
        }
        .favorite-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
            gap: 20px;
        }
        .box {
            background: #fff;
            border-radius: 10px;
            padding: 15px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .box img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 8px;
        }
        .btn {
            margin-top: 10px;
            padding: 8px 16px;
            background-color: #e74c3c;
            color: white;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>

<h2>Your Favorite Items ❤️</h2>
<div class="favorite-container" id="favContainer"></div>

<script>
function loadFavorites() {
    const container = document.getElementById("favContainer");
    const favorites = JSON.parse(sessionStorage.getItem("favorites") || "[]");

    if (favorites.length === 0) {
        container.innerHTML = "<p style='text-align:center;'>No favorites added yet.</p>";
        return;
    }

    container.innerHTML = "";
    favorites.forEach((item, index) => {
        const div = document.createElement("div");
        div.className = "box";
        const imgPath = item.img.startsWith("image/") ? item.img : "image/" + item.img;
        div.innerHTML = `
            <img src="\${imgPath}" alt="\${item.name}" />
            <h3>\${item.name}</h3>
            <p><strong>Price:</strong> ₹\${item.price}</p>
            <button class="btn" onclick="removeFavorite(\${index})">Remove</button>
        `;
        container.appendChild(div);
    });
}

function removeFavorite(index) {
    let favorites = JSON.parse(sessionStorage.getItem("favorites") || "[]");
    favorites.splice(index, 1);
    sessionStorage.setItem("favorites", JSON.stringify(favorites));
    loadFavorites();
}

window.onload = loadFavorites;
</script>

</body>
</html>
