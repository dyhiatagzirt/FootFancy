<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>FootFancy - Panier</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            color: #333;
        }
        header {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            text-align: center;
        }
        nav ul {
            list-style: none;
            padding: 0;
        }
        nav ul li {
            display: inline;
            margin-right: 10px;
        }
        nav a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }
        main {
            padding: 20px;
            margin-top: 20px;
            background: white;
            width: 80%;
            margin: 20px auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 100px auto;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f8f8f8;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .btn {
            padding: 8px 16px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        .btn:hover {
            background-color: #218838;
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
    <h1>Votre panier</h1>
    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}/">Accueil</a></li>
            <li><a href="${pageContext.request.contextPath}/displayBasket">Panier</a></li>
        </ul>
    </nav>
</header>
<main>
    <h2>Articles sélectionnés</h2>
    <table>
        <thead>
            <tr>
                <th>Article</th>
                <th>Image</th>
                <th>Taille</th>
                <th>Quantité</th>
                <th>Prix</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:set var="totalPrice" value="0" />
            <c:forEach var="basketItem" items="${shoesInBasket}">
                <tr>
                    <td>${basketItem.shoes.shoes.name}</td>
                    <td><img src="images/${basketItem.shoes.shoes.imagePath}" alt="${basketItem.shoes.shoes.name}" style="width: 100px; height: auto;"></td>
                    <td>${basketItem.shoes.size}</td>
                    <td>${basketItem.quantity}</td>
                    <td>${basketItem.shoes.shoes.price} €</td>
                    <td>
                        <form action="removeFromBasket" method="post">
                            <input type="hidden" name="basketId" value="${basketItem.id}">
                            <button type="submit" class="btn">Retirer</button>
                        </form>
                    </td>
                </tr>
                <c:set var="totalPrice" value="${totalPrice + (basketItem.shoes.shoes.price * basketItem.quantity)}" />
            </c:forEach>
        </tbody>
        <tfoot>
            <tr>
                <th colspan="4">Prix total :</th>
                <th>${totalPrice} €</th>
                <th><a href="${pageContext.request.contextPath}/payement?totalPrice=${totalPrice}" class="btn">Passer à la caisse</a></th>
               </tr>
        </tfoot>
    </table>
</main>
<footer>
    <p>&copy; 2024 FootFancy. Dyhia TAGZIRT</p>
</footer>
</body>
</html>
