<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Login</title>
<style>
html, body {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100%;
    overflow-x: hidden; 
}

body {
    background-image: url("https://assets.bacancytechnology.com/main-boot-5/images/ecommerce-development/banner.jpg?v-1");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center center;
}

.login-container {
    margin-top: 6%;
    margin-bottom: 2%;
    width: 55%;
    max-width: 100%;
    margin-left: 7%; 
}


.login-logo {
    position: relative;
    margin-left: -41.5%;
}

.login-logo img {
    position: absolute;
    width: 20%;
    margin-top: 19%;
    background: #212f3c;
    border-radius: 4.5rem;
    padding: 5%;
    border: 2px solid #d4ac0d;
}

.login-form-1, .login-form-2 {
    padding: 9%;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
}

.login-form-1 {
    background: #17202a;
    border: 2px solid #d4ac0d; 
    border-radius: 10px; 
}

.login-form-1 h3, .login-form-2 h3 {
    text-align: center;
    margin-bottom: 12%;
    color: #fff;
}

.login-form-2 {
    background: #17202a; 
    border: 2px solid #d4ac0d; 
    border-radius: 10px; 
}

.btnSubmit {
    font-weight: 600;
    width: 50%;
    color: #282726;
    background-color: #fff;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    transition: background-color 0.3s ease, color 0.3s ease;
    cursor: pointer;
}

.btnSubmit:hover {
     background-color: #1d8348;
     color: #fdfefe;
}

.btnForgetPwd, .btnSignUp {
    color: #fff;
    font-weight: 600;
    text-decoration: none;
}

.btnForgetPwd:hover, .btnSignUp:hover {
            color: #1d8348;
}

.message {
    text-align: center;
    color: red;
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 20px;
}
.btnSignUp:hover,
.btnForgetPwd:hover {
    color: #1d8348;
    text-decoration: underline;
}


</style>
</head>
<body>

<div class="container login-container">

   

    <div class="row">
        <div class="col-md-6 login-form-1">
            <h3><i class="fa-solid fa-user"></i>&nbsp;Seller Login</h3>
            <form action="/login" method="post">
            
                <div class="form-group">
                    <input type="text" name="username" class="form-control" placeholder="Your username *" required />
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="Your Password *" required />
                </div>
                <div class="form-group">
                    <input type="submit" class="btnSubmit" value="Login" />
                </div>
                <div class="form-group">
                    <a href="signup.jsp" class="btnSignUp">Sign Up&nbsp;<i class="fa-solid fa-right-to-bracket"> </i></a>
                </div>
                <div class="form-group">
                    <a href="forgotPassword.jsp" class="btnForgetPwd">Forgot Password?</a>
                </div>
            </form>
        </div>
        <div class="col-md-6 login-form-2">
            <div class="login-logo">
                <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
            </div>
            <h3><i class="fa-solid fa-user"></i>&nbsp;Buyer Login</h3>
            <form action="/login" method="post">
                <div class="form-group">
                    <input type="text" name="username" class="form-control" placeholder="Your username *" required />
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="Your Password *" required />
                </div>
                <div class="form-group">
                    <input type="submit" class="btnSubmit" value="Login" />
                </div>
                <div class="form-group">
                    <a href="signup.jsp" class="btnSignUp">Sign Up &nbsp;<i class="fa-solid fa-right-to-bracket"> </i></a>
                </div>
                <div class="form-group">
                    <a href="forgotPassword.jsp" class="btnForgetPwd">Forgot Password?</a>
                </div>
            </form>
        </div>
    </div>
</div>
 <p style="color:red;">${error}</p> <!-- Display error message if any -->

</body>
</html>


   
