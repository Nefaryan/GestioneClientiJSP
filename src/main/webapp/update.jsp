<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<jsp:include page="head.jsp"></jsp:include>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

<div class="container">
    <form action="${pageContext.request.contextPath}/update" method="post">
        <h1 style="align-items: center">Aggiornamento Utente</h1>
        <p>Insersci l'id dell'utente e i dati per l'aggiornamento</p>
        <div>
            <label for="id" class="form-label">ID</label>
            <input type="number" name="id" class="form-control" id="id">
            <div class="form-group">
                <label for="name">Nome</label>
                <input type="text" class="form-control" id="name" name="name"
                       placeholder="Inserisci il nome" required>
            </div>
            <div class="form-group">
                <label for="surname">Cognome</label>
                <input type="text" class="form-control" id="surname" name="surname"
                       placeholder="Inserisci il cognome" required>
            </div>
            <div class="form-group">
                <label for="fiscalCode">Codice Fiscale</label>
                <input type="text" class="form-control" id="fiscalCode" name="fiscalCode"
                       placeholder="Inserisci il codice fiscale" required>
            </div>
            <div class="form-group">
                <label for="birthYear">Anno di Nascita</label>
                <input type="text" class="form-control" id="birthYear" name="birthYear" placeholder="YYYY" required>
            </div>
            <div class="form-group">
                <label for="birthMonth">Mese di Nascita</label>
                <input type="text" class="form-control" id="birthMonth" name="birthMonth" placeholder="MM" required>
            </div>
            <div class="form-group">
                <label for="birthDay">Giorno di Nascita</label>
                <input type="text" class="form-control" id="birthDay" name="birthDay" placeholder="DD" required>
            </div>
            <div class="form-group">
                <label for="balance">Saldo</label>
                <input type="text" class="form-control" id="balance" name="balance"
                       placeholder="Inserisci il saldo" required>
            </div>
            <button type="submit" class="btn btn-primary">Invia</button>
        </div>
    </form>
</div>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
<jsp:include page="script.jsp"></jsp:include>