<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>FootFancy - Erreur</title>
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
            width: 60%;
            margin: 20px auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        .error-message {
            background-color: #f8d7da;
            color: #721c24;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
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
    <h1>Erreur survenue</h1>
    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}/">Accueil</a></li>
            <li><a href="${pageContext.request.contextPath}/displayBasket">Panier</a></li>
        </ul>
    </nav>
</header>
<main>
    <p>Une erreur est survenue lors du traitement de votre demande. Veuillez consulter les détails ci-dessous :</p>
    <div class="error-message">
        <%
        // Afficher le message d'erreur passé depuis le servlet ou un autre JSP
        String errorMessage = (String) request.getAttribute("error");
        if (errorMessage == null || errorMessage.isEmpty()) {
            errorMessage = "Aucun message d'erreur spécifique disponible.";
        }
        %>
        <p><%=errorMessage%></p>
    </div>
    <a href="index.jsp">Retour à la page d'accueil</a>
</main>
<footer>
    <p>&copy; 2024 FootFancy. Dyhia TAGZIRT</p>
</footer>
</body>
</html>
