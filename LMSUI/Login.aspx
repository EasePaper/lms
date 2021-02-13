<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Primary Meta Tags -->
    <title>Smart Street Management System</title>





    <link href="css/login.css" rel="stylesheet" />

 
   
</head>
<body class="bg-soft" >
    <form id="form1" runat="server">
        <main>

            <!-- Section -->
            <section class="vh-lg-100 d-flex align-items-center">
                <div class="container">
                
                    <div class="row justify-content-center form-bg-image" data-background-lg="assets/img/illustrations/signin.svg">
                        <div class="col-12 d-flex align-items-center justify-content-center">
                            <div class="signin-inner my-3 my-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                                 <div class="text-center text-md-center mb-4 mt-md-0">
                                    <h1 class="mb-0 h5">Smart Street Management System</h1>
                                </div>
                                <div class="text-center text-md-center mb-4 mt-md-0">
                                    <h1 class="mb-0 h3">Sign in</h1>
                                </div>
                                <form action="#" class="mt-4">
                                    <!-- Form -->
                                    <div class="form-group mb-4">
                                        <label for="email">Email</label>
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon1"><span class="fas fa-envelope"></span></span>
                                            <input type="text" class="form-control" placeholder="Username" id="Username" autofocus required="required">
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <div class="form-group">
                                        <!-- Form -->
                                        <div class="form-group mb-4">
                                            <label for="password">Password</label>
                                            <div class="input-group">
                                                <span class="input-group-text" id="basic-addon2"><span class="fas fa-unlock-alt"></span></span>
                                                <input type="password" placeholder="Password" class="form-control" id="password" required>
                                            </div>
                                        </div>
                                        <!-- End of Form -->
                                        <div class="d-flex justify-content-between align-items-center mb-4">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck5">
                                                <label class="form-check-label" for="defaultCheck5">
                                                    Remember me
                                           
                                                </label>
                                            </div>
                                            <div><a href="#" class="small text-right">Forgot password?</a></div>
                                        </div>
                                    </div>
                                    <a href="Dashboard.aspx" type="submit" class="btn btn-block btn-primary" id="frmSubmit" runat="server" >Sign in</a>
                                </form>
                               
                            
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </form>
</body>
</html>

