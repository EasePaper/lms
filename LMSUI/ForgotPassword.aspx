<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Primary Meta Tags -->
    <title>Smart Street Management System</title>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="//code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <link href="css/login.css" rel="stylesheet" />
    <script src="Custom-js/Login.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">



</head>
<body class="bg-soft">
    <form id="form1" runat="server">
        <main>

            <!-- Section -->
            <section class="vh-lg-100 bg-soft d-flex align-items-center">
                <div class="container">
                    <div class="row justify-content-center form-bg-image">
                        <p class="text-center"><a href="Login.aspx" class="text-gray-700"><i class="fas fa-angle-left me-2" > &nbsp; </i>     Back to log in</a></p>
                        <div class="col-12 d-flex align-items-center justify-content-center">
                            <div class="signin-inner my-3 my-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                                <h1 class="h3">Forgot your password?</h1>
                                <p class="mb-4">Don't fret! Just type in your email and we will send you a code to reset your password!</p>
                                <form action="#">
                                    <!-- Form -->
                                    <div class="mb-4">
                                        <label for="email">Your Email</label>
                                        <div class="input-group">
                                            <input type="email" class="form-control" id="email" required autofocus>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <button type="submit" class="btn btn-block btn-primary">Recover password</button>
                                </form>
                                <div class="d-flex justify-content-center align-items-center mt-4">
                                    <span class="font-weight-normal">Go back to the
                                   
                                        <a href="./sign-in.html" class="font-weight-bold">login page</a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </form>
</body>
</html>

