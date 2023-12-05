<%--
  Created by IntelliJ IDEA.
  User: myasu
  Date: 10/16/2023
  Time: 10:59 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<form action="add" method="post">
  <div class="mb-3">
    <label  class="form-label">Nom du produit</label>
    <input type="text" class="form-control" name="nom" placeholder="Nom" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Prix</label>
    <input type="number" class="form-control"  name="prix" placeholder="Prix">
  </div>
  <div class="mb-3">
    <label  class="form-label">Quantité</label>
    <input type="number" min="0" class="form-control" name="quantite" placeholder="Quantité">
  </div>

  <div class="mb-3">
    <label class="form-label">Selectionner la categorie </label>
    <select id="categorie" name="categorie">
      <c:forEach items="${categories}" var="p">
      <option value="${p.id}">${p.nom}</option>
      </c:forEach>
    </select>
  </div>

  <button type="submit" class="btn btn-primary" >Submit</button>

</form>


</body>
</html>
