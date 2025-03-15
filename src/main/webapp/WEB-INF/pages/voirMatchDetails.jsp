<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="match.detailsTitre"/></title>
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
            max-width: 600px;
            background-color: #1C2942;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.1);
        }
        h2 {
            text-align: center;
            font-weight: bold;
        }
        .match-info {
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
    <h2><i class="bi bi-trophy"></i> <s:text name="match.detailsTitre"/></h2>

    <div class="match-info">
        <h3><i class="bi bi-people-fill"></i> <s:property value="match.equipe1"/> <strong>VS</strong> <s:property value="match.equipe2"/></h3>
        <ul class="list-unstyled">
            <li><strong><i class="bi bi-trophy-fill"></i> <s:text name="match.sport"/> :</strong> <s:property value="match.sport"/></li>
            <li><strong><i class="bi bi-calendar-event"></i> <s:text name="match.date"/> :</strong> <s:property value="match.quand"/></li>
            <li><strong><i class="bi bi-check-circle"></i> <s:text name="match.resultat"/> :</strong> <s:property value="match.resultat"/></li>
        </ul>
    </div>

    <div class="text-center mt-3">
        <s:a action="parierSurCeMatchOuvrirPage" cssClass="btn btn-custom">
            <i class="bi bi-cash-coin"></i> <s:text name="match.boutonParier"/>
        </s:a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
