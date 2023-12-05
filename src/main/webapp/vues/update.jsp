<%--
  Created by IntelliJ IDEA.
  User: myasu
  Date: 10/15/2023
  Time: 11:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>

</head>
<body>
<form method="post" action="save" >
    <div class="mb-3">
        <label  class="form-label">ID</label>
        <input type="number" class="form-control" name="id" readonly value="${pr.id}">
    </div>
    <div class="mb-3">
        <label  class="form-label">Nom du produit</label>
        <input type="text" class="form-control" name="nom" value="${pr.nom}">
    </div>
    <div class="mb-3">
        <label  class="form-label">Prix</label>
        <input type="number" class="form-control"  name="prix" value="${pr.prix}">
    </div>
    <div class="mb-3">
        <label  class="form-label">Quantité</label>
        <input type="number" min="0" class="form-control" name="quantite" value="${pr.quantite}">
    </div>

    <div class="mb-3">
        <label class="form-label">Selectionner la categorie </label>
        <select id="categorie" name="categorie">
            <c:forEach items="${categories}" var="p">
                <c:if test="${p.nom == pr.categorie.nom}">
                    <option selected  value="${p.id}">${p.nom}</option>
                </c:if>
                <c:if test="${p.nom != pr.categorie.nom}">
                    <option  value="${p.id}">${p.nom}</option>
                </c:if>
            </c:forEach>
        </select>
    </div>


    <button type="submit" class="btn btn-primary" >Submit</button>
</form>

</body>
</html>
