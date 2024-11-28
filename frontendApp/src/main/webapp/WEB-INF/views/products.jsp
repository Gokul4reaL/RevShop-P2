<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #283747; /* Set background color */
            color: #ffffff; /* Set text color */
        }
        h2 {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 30px;
        }
        table {
            margin: auto;
            width: 80%;
            background-color: #17202a; /* Table background */
            border-radius: 8px;
            overflow: hidden;
        }
        th {
            background-color: #34495e; /* Header background */
            color: #ffffff; /* Header text color */
            padding: 15px;
        }
        td {
            padding: 15px;
            color:white;
            border-bottom: 1px solid #7f8c8d; /* Row separator color */
        }
        tr:hover {
            background-color: #2c3e50; /* Row hover color */
        }
        .table-responsive {
            margin: 20px 0;
        }
    </style>
</head>
<body>

<h2>Products</h2>
<div class="table-responsive">
    <table class="table table-striped table-hover">
        <thead>
            <tr>
                <th>Product ID</th>
                <th>Product Title</th>
                <th>Category</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td>${product.productId}</td>
                    <td>${product.productTitle}</td>
                    <td>${product.category.categoryTitle}</td> <!-- Correct access -->
                    <td>${product.priceUnit}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
