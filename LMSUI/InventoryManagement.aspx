<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InventoryManagement.aspx.cs" Inherits="InventoryManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Inventory &mdash; LMS</title>

    <!-- General CSS Files -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">


    <script src="https://kit.fontawesome.com/1497d0decf.js" crossorigin="anonymous"></script>


    <link href="css/JQmap.css" rel="stylesheet" />
    <link href="css/weather-icons.css" rel="stylesheet" />
    <link href="css/icons-wind.css" rel="stylesheet" />
    <link href="css/Summernote.css" rel="stylesheet" />
    <!-- Template CSS -->
    <link rel="stylesheet" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/components.css" />
    <link href="css/Global.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div id="app">
            <div class="main-wrapper">
                <div class="navbar-bg"></div>
                <nav class="navbar navbar-expand-lg main-navbar">
                    <ul class="navbar-nav mr-3">
                        <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
                        <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li>
                    </ul>
                    <ul class="navbar-nav navbar-right">


                        <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                            <i class="fas fa-user-circle" style="font-size: 20px;"></i>&nbsp;&nbsp;
                            <div class="d-sm-none d-lg-inline-block">Hi, Admin</div>
                        </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <div class="dropdown-title">Last Logged in 5 min ago</div>
                                <a href="features-profile.html" class="dropdown-item has-icon">
                                    <i class="fas fa-user-circle"></i>Account
                                </a>

                                <div class="dropdown-divider"></div>
                                <a href="Login.aspx" class="dropdown-item has-icon text-danger">
                                    <i class="fas fa-sign-out-alt"></i>Logout
                                </a>
                            </div>
                        </li>
                    </ul>
                </nav>
                <div class="main-sidebar">
                    <aside id="sidebar-wrapper">
                        <div class="sidebar-brand">
                            <a href="#">
                                <img src="img/Jmax.png" class="imgmax" /></a>
                        </div>
                        <div class="sidebar-brand sidebar-brand-sm">
                            <a href="#">
                                <img src="img/Jmin.png" class="imgmin" /></a>
                        </div>
                        <ul class="sidebar-menu">
                            <li class="menu-header">Dashboard</li>

                            <li class="nav-item">
                                <a href="Dashboard.aspx" class="nav-link"><i class="fas fa-bullseye"></i><span>Dashboard</span></a>

                            </li>
                            <li class="menu-header">Control Panel</li>
                            <li class="nav-item "><a href="ProjectDetails.aspx" class="nav-link"><i class="fas fa-atom"></i><span>Project</span></a> </li>
                            <li><a class="nav-link" href="SiteDetails.aspx"><i class="fas fa-sitemap"></i><span>Multi-Site</span></a></li>
                            <li class="nav-item active"><a href="InventoryManagement.aspx" class="nav-link"><i class="fab fa-hive"></i><span>Inventory</span></a> </li>
                            <li><a class="nav-link" href="#"><i class="fas fa-users-cog"></i><span>User Management</span></a></li>
                            <li class="menu-header">System</li>
                            <li><a class="nav-link" href="#"><i class="fas fa-layer-group"></i><span>Grouping</span></a></li>
                            <li><a class="nav-link" href="#"><i class="fas fa-wifi"></i><span>Network</span></a></li>

                            <li class="menu-header">Automation</li>
                            <li><a class="nav-link" href="#"><i class="fas fa-sliders-h"></i><span>Controller</span></a></li>
                            <li><a class="nav-link" href="#"><i class="fab fa-stack-overflow"></i><span>Work Order</span></a></li>
                        </ul>
                    </aside>
                </div>
                <!-- Main Content -->
                <div class="main-content">
                    <section class="section">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Pole">Pole Info</a></li>
                                        <li><a data-toggle="tab" href="#Lamp">Lamp Info</a></li>

                                    </ul>

                                    <div class="tab-content">
                                        <div id="Pole" class="tab-pane fade in active">
                                            <h3>Lamp</h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                        </div>
                                        <div id="Lamp" class="tab-pane fade">
                                            <h3>Lamp 1</h3>
                                            <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <footer class="main-footer">
                    <div class="footer-left">
                        Copyright &copy; 2021
                        <div class="bullet"></div>
                        Design By <a href="https://Easepaper.in/">Easepaper</a>
                    </div>
                    <div class="footer-right">
                        2.3.0
       
                    </div>
                </footer>
            </div>
        </div>




    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

    <script src="../assets/js/stisla.js"></script>

    <!-- JS Libraies -->
    <script src="js/sparkline.js"></script>
    <script src="js/Chart.js"></script>
    <script src="js/jquery-vmap.js"></script>
    <script src="js/jqueryMap.js"></script>
    <script src="js/SummerNote.js"></script>
    <script src="js/JqueryChoco.js"></script>
    <!-- Template JS File -->
    <script src="../assets/js/scripts.js"></script>
    <script src="../assets/js/custom.js"></script>

</body>
</html>
