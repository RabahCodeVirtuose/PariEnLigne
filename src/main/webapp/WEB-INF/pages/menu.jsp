<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="menu.titre"/></title>
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
            margin-top: 80px;
            max-width: 500px;
            background-color: #1C2942;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.1);
        }
        h1, h3 {
            text-align: center;
            font-weight: bold;
        }
        .list-group-item {
            background-color: #3B556D;
            color: #FFFFFF;
            border: none;
            transition: 0.3s;
        }
        .list-group-item:hover {
            background-color: #5FC2BA;
            color: #0B162C;
        }
        .admin-section {
            margin-top: 20px;
            border-top: 2px solid #5FC2BA;
            padding-top: 15px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1><i class="bi bi-list-task"></i> <s:text name="menu.bienvenue"/></h1>
    <h3><i class="bi bi-menu-button-wide"></i> <s:text name="menu.titre"/></h3>

    <s:fielderror name="error" cssClass="alert alert-danger"/>

    <div class="list-group">
        <s:a action="voirLesMatch" cssClass="list-group-item list-group-item-action">
            <i class="bi bi-eye"></i> <s:text name="menu.voirMatch"/>
        </s:a>
        <s:a action="voirMesParis" cssClass="list-group-item list-group-item-action">
            <i class="bi bi-cash-coin"></i> <s:text name="menu.paris"/>
        </s:a>
        <s:a action="deconnexion" cssClass="list-group-item list-group-item-action text-danger">
            <i class="bi bi-box-arrow-right"></i> <s:text name="menu.deconnecter"/>
        </s:a>

        <s:if test="utilisateur.isAdmin">
            <div class="admin-section">
                <h4><i class="bi bi-gear"></i> <s:text name="menu.admin"/></h4>
                <s:a action="ajouterMatch" cssClass="list-group-item list-group-item-action bg-warning text-dark">
                    <i class="bi bi-plus-circle"></i> <s:text name="menu.ajouterMatch"/>
                </s:a>
            </div>
        </s:if>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
