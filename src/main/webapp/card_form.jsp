<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>FootFancy - Paiement</title>
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
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form {
	display: flex;
	flex-direction: column;
	width: 300px;
	margin-bottom: 100px
}

label {
	margin-bottom: 5px;
}

input[type="text"], input[type="number"], button {
	padding: 10px;
	margin-bottom: 10px;
}

button {
	background-color: #28a745;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

button:hover {
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
		<h1>Saisissez les Détails de Paiement</h1>
		<nav>
			<ul>
				<li><a href="${pageContext.request.contextPath}/">Accueil</a></li>
				<li><a href="${pageContext.request.contextPath}/displayBasket">Panier</a></li>
			</ul>
		</nav>
	</header>
	<main>
		<form action="processPayment" method="post">
			<label for="totalPrice">Prix Total à Payer :</label> <input
				type="text" id="totalPrice" name="totalPrice" value="${totalPrice}"
				readonly><br> <label for="cardNumber">Numéro de
				Carte:</label> <input type="text" id="cardNumber" name="cardNumber" required><br>
			<label for="ownerName">Nom du Titulaire:</label> <input type="text"
				id="ownerName" name="ownerName" required><br> <label
				for="cvc">CVC:</label> <input type="text" id="cvc" name="cvc"
				required><br> <label for="expirationDate">Date
				d'Expiration (MM/AA):</label> <input type="text" id="expirationDate"
				name="expirationDate" required><br>
			<button type="submit">Soumettre le Paiement</button>
		</form>
	</main>
	<footer>
		<p>&copy; 2024 FootFancy. Dyhia TAGZIRT</p>
	</footer>
</body>
</html>
