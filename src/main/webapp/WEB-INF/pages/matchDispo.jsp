<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="matchs.titre"/></title>
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
        .match-card {
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
        .form-control, .form-select {
            background-color: #3B556D;
            color: #FFFFFF;
            border: none;
        }
        .form-control::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }
        .form-control:focus, .form-select:focus {
            background-color: #5FC2BA;
            color: #0B162C;
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
    <h1><i class="bi bi-trophy"></i> <s:text name="matchs.titre"/></h1>

    <!-- Lien de retour -->
    <div class="text-center my-3">
        <s:a action="index" cssClass="back-link"><i class="bi bi-arrow-left"></i> <s:text name="menu.retour"/></s:a>
    </div>

    <!-- Liste des matchs -->
    <s:iterator value="matches" var="match">
        <div class="match-card">
            <h4><i class="bi bi-people-fill"></i> <s:property value="#match.equipe1"/> <strong> VS </strong> <s:property value="#match.equipe2"/></h4>
            <p><strong><i class="bi bi-trophy-fill"></i> <s:text name="matchs.sport"/> :</strong> <s:property value="#match.sport"/></p>
            <p><strong><i class="bi bi-calendar-event"></i> <s:text name="matchs.date"/> :</strong> <s:property value="#match.quand"/></p>

            <s:url var="detailMatchURL" action="voirMatchDetails">
                <s:param name="idMatch" value="#match.idMatch"/>
            </s:url>
            <s:a href="%{#detailMatchURL}" class="btn btn-custom btn-sm"><i class="bi bi-eye"></i> <s:text name="matchs.details"/></s:a>
        </div>
    </s:iterator>

    <!-- Sélection de match -->
    <div class="mt-4">
        <s:form action="zingo">
            <div class="mb-3">
                <label class="form-label"><i class="bi bi-list-check"></i> <s:text name="matchs.selectionner"/> :</label>
                <s:select name="id" list="matches" listKey="idMatch" listValue="sport +' - '+equipe1 +' VS '+equipe2" cssClass="form-select"/>
            </div>
            <div class="d-grid">
                <button type="submit" class="btn btn-custom w-100"><i class="bi bi-check-circle"></i> <s:text name="matchs.valider"/></button>
            </div>
        </s:form>
    </div>

    <!-- Formulaire radio -->
    <div class="mt-4">
        <s:form action="lalag">
            <label class="form-label"><i class="bi bi-ui-radios"></i> <s:text name="matchs.choisir"/> :</label>
            <div class="mb-3">
                <s:radio name="id" list="matches" listKey="idMatch" listValue="sport+' - '+ equipe1 +' - '+equipe2" cssClass="form-check-input"/>
            </div>
            <div class="d-grid">
                <button type="submit" class="btn btn-custom w-100"><i class="bi bi-send"></i> <s:text name="matchs.confirmer"/></button>
            </div>
        </s:form>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
