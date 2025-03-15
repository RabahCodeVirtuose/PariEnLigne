<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="parier.titre"/></title>
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
        .form-control, .form-check-input {
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
    <h2><i class="bi bi-coin"></i> <s:text name="parier.titre"/> <s:property value="match.equipe1"/> <strong>VS</strong> <s:property value="match.equipe2"/></h2>

    <div class="match-info">
        <ul class="list-unstyled">
            <li><strong><i class="bi bi-trophy-fill"></i> <s:text name="parier.sport"/> :</strong> <s:property value="match.sport"/></li>
            <li><strong><i class="bi bi-calendar-event"></i> <s:text name="parier.date"/> :</strong> <s:property value="match.quand"/></li>
            <li><strong><i class="bi bi-check-circle"></i> <s:text name="parier.resultat"/> :</strong> <s:property value="match.resultat"/></li>
        </ul>
    </div>

    <s:fielderror name="error" cssClass="alert alert-danger"/>

    <s:form action="parierSurCeMatch">
        <div class="mb-3">
            <label class="form-label"><i class="bi bi-award-fill"></i> <s:text name="parier.selectionEquipe"/> :</label>
            <s:radio name="equipeSelectionne" list="equipes"/>
        </div>

        <div class="mb-3">
            <label class="form-label"><i class="bi bi-cash-stack"></i> <s:text name="parier.montant"/> (€) :</label>
            <s:textfield name="montant" cssClass="form-control" key="parier.placeholderMontant"/>"/>
        </div>

        <div class="d-grid">
            <button type="submit" class="btn btn-custom w-100">
                <i class="bi bi-currency-euro"></i> <s:text name="parier.bouton"/>
            </button>
        </div>
    </s:form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
