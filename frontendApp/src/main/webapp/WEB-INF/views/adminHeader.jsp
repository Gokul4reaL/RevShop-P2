<%@page errorPage="/error.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="../css/home-style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .navbar-dark .navbar-nav .nav-link, 
        .navbar-dark .navbar-brand,
        .navbar-dark .navbar-text {
            color: #ffcc00;
        }
        .navbar-dark .navbar-nav .nav-link:hover,
        .navbar-dark .navbar-nav .nav-link:focus {
            color: white; /* Accent color */
            background-color: #145a32;
            border-radius: 8px;
        }
        .navbar {
            background-color: #1c2833;
        }
        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
        }
        .topnav {
            background-color: #1c2833;
            padding: 10px;
        }
        .topnav a {
            color: #ffcc00;
            text-decoration: none;
            padding: 10px 20px;
            display: inline-block;
        }
        .topnav a:hover {
            color: white; /* Accent color */
            background-color: #145a32;
            border-radius: 8px;
        }
        .topnav h2 {
            color: #ffcc00;
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
                        <a class="nav-link" href="#">Add New Product <i class='fas fa-plus-square'></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">All Products & Edit Products <i class='fab fa-elementor'></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Product Review&nbsp;<i class='fas fa-comment-alt'></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Orders Received <i class="fas fa-archive"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Cancel Orders <i class='fas fa-window-close'></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Delivered Orders <i class='fas fa-dolly'></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="color:red;">Notification <i class="fa-solid fa-bell"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/logout">Logout <i class='fas fa-share-square'></i></a>
                    </li>
                </ul>
              
            </div>
        </div>
    </nav>

    <!-- Bootstrap Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>