<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="acceuil.titre"/></title>
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
            max-width: 400px;
            background-color: #1C2942;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.1);
            text-align: center;
        }
        .form-control {
            background-color: #3B556D;
            color: #FFFFFF;
            border: none;
        }
        .form-control::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }
        .form-control:focus {
            background-color: #5FC2BA;
            color: #0B162C;
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
        .language-selector {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container">
    <h2><i class="bi bi-person-circle"></i> <s:text name="acceuil.bienvenue"/></h2>
    <p><s:text name="acceuil.texte"/></p>

    <s:fielderror name="error" cssClass="alert alert-danger"/>

    <s:form action="connexion">
        <div class="mb-3">
            <label class="form-label"><i class="bi bi-person-fill"></i> <s:text name="acceuil.pseudo"/></label>
            <s:textfield name="pseudo" key="acceuil.pseudo" cssClass="form-control" placeholder="%{getText('acceuil.pseudo')}"/>
        </div>
        <div class="mb-3">
            <label class="form-label"><i class="bi bi-lock-fill"></i> <s:text name="acceuil.password"/></label>
            <s:password name="password" key="acceuil.password" cssClass="form-control" placeholder="%{getText('acceuil.password')}"/>
        </div>
        <div class="d-grid">
            <s:submit value="%{getText('acceuil.bouton')}" cssClass="btn btn-custom w-100"/>
        </div>
    </s:form>

    <!-- Sélecteur de langue -->
    <div class="language-selector">
        <form id="langForm" method="get" action="">
            <label for="lang"><i class="bi bi-translate"></i> Choisissez une langue :</label>
            <select id="lang" name="request_locale" class="form-select mt-2" onchange="document.getElementById('langForm').submit();">
                <option value="fr" <s:if test='%{#parameters.request_locale == "fr"}'>selected</s:if>>🇫🇷 Français</option>
                <option value="en" <s:if test='%{#parameters.request_locale == "en"}'>selected</s:if>>🇬🇧 English</option>
                <option value="es" <s:if test='%{#parameters.request_locale == "es"}'>selected</s:if>>🇪🇸 Español</option>
                <option value="it" <s:if test='%{#parameters.request_locale == "it"}'>selected</s:if>>🇮🇹 Italiano</option>
                <option value="de" <s:if test='%{#parameters.request_locale == "de"}'>selected</s:if>>🇩🇪 Deutsch</option>
            </select>
        </form>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
