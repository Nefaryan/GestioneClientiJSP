<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<jsp:include page="head.jsp"></jsp:include>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

<div class="container">
    <h1 style="text-align: center">Elimina Customer</h1>
    <p>Inserisci l'id del cusotmer da eliminare</p>
    <form action="${pageContext.request.contextPath}/delete" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">Customer</label>
            <input type="number" name="id" class="form-control" id="id">
        </div>
        <button type="submit" class="btn btn-primary">Invia</button>
    </form>
</div>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
<jsp:include page="script.jsp"></jsp:include>