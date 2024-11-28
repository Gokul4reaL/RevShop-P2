
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Shopping Website</title>
    <link rel="stylesheet" href="css/home-style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .navbar-dark .navbar-nav .nav-link, 
        .navbar-dark .navbar-brand,
        .navbar-dark .navbar-text,
        .navbar-dark .nav-link {
            color: #ffcc00;
        }
        .navbar-dark .navbar-nav .nav-link:hover,
        .navbar-dark .navbar-nav .nav-link:focus {
            color: white; /* Accent color */
             background-color: #145a32;
             border-radius: 8px;
        }
    </style>
</head>
<body>

<!-- Bootstrap Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="home.jsp"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home Page <i class="fa fa-institution"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">My Cart <i class='fas fa-cart-arrow-down'></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">My Orders <i class='fab fa-elementor'></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Change Details <i class="fa fa-edit"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Review <i class='fas fa-comment-alt'></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Favourite <i class="fas fa-heart"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About <i class="fa fa-address-book"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout <i class='fas fa-share-square'></i></a>
                </li>
            </ul>
           
            <form class="d-flex" action="searchHome.jsp" method="post">
                <input class="form-control me-2" type="search" placeholder="Search category" aria-label="Search" name="search">
                <button class="btn btn-outline-success" type="submit"><i class="fa fa-search"></i></button>
            </form>
        </div>
    </div>
</nav>

<br>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

<h1> Shubham Kumar </h1>
</body>
</html>
