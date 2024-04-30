<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>FootFancy - Confirmation</title>
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
            text-align: center;
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
    <h1>Confirmation de commande</h1>
    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}/">Accueil</a></li>
            <li><a href="${pageContext.request.contextPath}/displayBasket">Panier</a></li>
        </ul>
    </nav>
</header>
<main>
    <p>Votre commande a été passée avec succès !</p>
    <p>Merci de faire vos achats chez FootFancy.</p>
</main>
<footer>
    <p>&copy; 2024 FootFancy. Dyhia TAGZIRT</p>
</footer>
</body>
</html>
