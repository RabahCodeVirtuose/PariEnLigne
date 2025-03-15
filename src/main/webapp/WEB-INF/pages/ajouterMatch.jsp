<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="ajouter.titre"/></title>
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
        h1 {
            text-align: center;
            font-weight: bold;
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
    <h1><i class="bi bi-clipboard-plus"></i> <s:text name="ajouter.titre"/></h1>
    <p class="text-center"><s:text name="ajouter.bienvenue"/> <strong><s:property value="utilisateur.login"/></strong></p>

    <div class="text-center my-3">
        <s:a action="index" cssClass="back-link"><i class="bi bi-arrow-left"></i> <s:text name="menu.retour"/></s:a>
    </div>

    <s:fielderror name="error" cssClass="alert alert-danger"/>

    <s:form action="ajouterMathyous">
        <div class="mb-3">
            <label class="form-label"><i class="bi bi-trophy-fill"></i> <s:text name="ajouter.sport"/></label>
            <s:textfield name="sport" key="ajouter.sport" cssClass="form-control" placeholder="%{getText('ajouter.sport.placeholder')}"/>
        </div>
        <div class="mb-3">
            <label class="form-label"><i class="bi bi-people-fill"></i> <s:text name="ajouter.fstequipe"/></label>
            <s:textfield name="equipe1" key="ajouter.fstequipe" cssClass="form-control" placeholder="%{getText('ajouter.fstequipe.placeholder')}"/>
        </div>
        <div class="mb-3">
            <label class="form-label"><i class="bi bi-people-fill"></i> <s:text name="ajouter.ndequipe"/></label>
            <s:textfield name="equipe2" key="ajouter.ndequipe" cssClass="form-control" placeholder="%{getText('ajouter.ndequipe.placeholder')}"/>
        </div>

        <div class="d-grid">
            <s:submit value="%{getText('ajouter.bouton')}" cssClass="btn btn-custom w-100"/>
        </div>
    </s:form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
