<%@ page import="com.footfancy.beans.Shoes"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>FootFancy - Accueil</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

         header {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            text-align: center;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin-right: 20px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
        }

        main {
            padding: 20px;
        }

        h2 {
            color: #333;
        }

        .shoe-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin-bottom: 100px
        }

        .shoe {
            margin: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            width: 300px;
        }

        .shoe img {
            width: 100%;
            height: auto;
        }

        .shoe h3 {
            margin: 10px 0;
            font-size: 18px;
        }

        .shoe p {
            margin: 10px 0;
        }

        .shoe input[type="number"] {
            width: 50px;
        }

        .shoe button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            margin : 5px
        }

        .shoe button:hover {
            background-color: #555;
        }
        
        footer {
            text-align: center;
            padding: 10px 0;	
            background-color: #007BFF;
            color: white;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
<header>
    <h1>Bienvenue chez FootFancy</h1>
    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}/">Accueil</a></li>
            <li><a href="${pageContext.request.contextPath}/displayBasket">Panier</a></li>
        </ul>
    </nav>
</header>
<main>
    <h2>Chaussures disponibles</h2>
    
    <section class="shoe-list">
        <c:forEach var="shoe" items="${shoesList}">
            <div class="shoe">
                <form action="addToBasket" method="POST">
                    <img src="images/${shoe.imagePath}" alt="${shoe.name}" style="width:100px; height:auto;">
                    <h3>${shoe.name} - ${shoe.brand}</h3>
                    <p>Prix : ${shoe.price} €</p>
                    Taille : <input type="number" name="size" required min="${shoe.sizeMin}" max="${shoe.sizeMax}">
                    Quantité : <input type="number" name="quantity" required min="1" value="1">
                    <input type="hidden" name="shoeId" value="${shoe.id}">
                    <button type="submit">Ajouter au panier</button>
                </form>
            </div>
        </c:forEach>
    </section>
   
</main>
<footer>
    <p>&copy; 2024 FootFancy. Dyhia TAGZIRT</p>
</footer>
</body>
</html>
