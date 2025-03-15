<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="paris.titre"/></title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <style>
        body {
            background-color: #0B162C;
            color: #FFFFFF;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 50px;
            max-width: 700px;
            background-color: #1C2942;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.1);
        }
        h1 {
            text-align: center;
            font-weight: bold;
        }
        .bet-card {
            background-color: #3B556D;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 10px;
            box-shadow: 0px 0px 10px rgba(95, 194, 186, 0.5);
        }
        .btn-custom {
            background-color: #5FC2BA;
            color: #0B162C;
            font-weight: bold;
            border: none;
            transition: 0.3s;
        }
        .btn-custom:hover {
            background-color: #3B556D;
            color: #FFFFFF;
        }
        .back-link {
            color: #5FC2BA;
            text-decoration: none;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h1><i class="bi bi-coin"></i> <s:text name="paris.titre"/></h1>

    <!-- Lien de retour -->
    <div class="text-center my-3">
        <s:a action="index" cssClass="back-link"><i class="bi bi-arrow-left"></i> <s:text name="menu.retour"/></s:a>
    </div>

    <s:fielderror name="error" cssClass="alert alert-danger"/>

    <s:iterator value="paris" var="pari">
        <div class="bet-card">
            <h3><i class="bi bi-trophy-fill"></i> <s:property value="#pari.match.equipe1"/> <strong>VS</strong> <s:property value="#pari.match.equipe2"/></h3>
            <ul class="list-unstyled">
                <li><strong><i class="bi bi-award"></i> <s:text name="paris.sport"/> :</strong> <s:property value="#pari.match.sport"/></li>
                <li><strong><i class="bi bi-cash"></i> <s:text name="paris.montant"/> :</strong> <s:property value="#pari.montant"/></li>
                <li><strong><i class="bi bi-trophy"></i> <s:text name="paris.vainqueur"/> :</strong> <s:property value="#pari.vainqueur"/></li>
                <li><strong><i class="bi bi-check-circle"></i> <s:text name="paris.resultat"/> :</strong> <s:property value="#pari.resultat"/></li>
                <li><strong><i class="bi bi-piggy-bank"></i> <s:text name="paris.gain"/> :</strong> <s:property value="#pari.gain"/></li>
                <li><strong><i class="bi bi-calendar-event"></i> <s:text name="paris.date"/> :</strong> <s:property value="#pari.match.quand"/></li>
            </ul>

            <s:url var="annulerPariURL" action="annulerParis">
                <s:param name="id" value="#pari.idPari"/>
            </s:url>
            <s:a href="%{#annulerPariURL}" class="btn btn-danger btn-sm"><i class="bi bi-x-circle"></i> <s:text name="paris.annuler"/></s:a>
        </div>
    </s:iterator>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
