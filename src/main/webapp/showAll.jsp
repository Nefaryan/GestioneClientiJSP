<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>


<jsp:include page="head.jsp"></jsp:include>


<jsp:include page="navbar.jsp"></jsp:include>
<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Fiscal Code</th>
        <th>Anno di Nascita</th>
        <th>Mese di Nascita</th>
        <th>Giorno di Nascita</th>
        <th>Bilancio</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listaCustomer}" var="customer">
    <tr id="user-${customer.id}">
        <td>${customer.name}</td>
        <td>${customer.surname}</td>
        <td>${customer.fiscalCode}</td>
        <td>${customer.birthYear}</td>
        <td>${customer.birthMonth}</td>
        <td>${customer.birthDay}</td>
        <td>${customer.balance}</td>
        <td>
            <a href="/update" class="btn btn-primary">Modifica</a>
            <button class="btn btn-primary delete-btn" data-id="${customer.id}">Delete</button>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<jsp:include page="footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="script.jsp"></jsp:include>

<script>
    $(document).ready(function() {
        $('.delete-btn').click(function() {
            var customerId = $(this).data('id');
            var rowId = 'user-' + customerId;
            $.ajax({
                url: '${pageContext.request.contextPath}/delete?id=' + customerId,
                type: 'POST',
                success: function(response) {
                    $('#' + rowId).remove();
                },
                error: function(xhr, status, error) {
                }
            });
            return false;
        });
    });
</script>