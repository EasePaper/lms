﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SiteDetails.aspx.cs" Inherits="SiteDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Projects &mdash; LMS</title>

    <!-- General CSS Files -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">


    <script src="https://kit.fontawesome.com/1497d0decf.js" crossorigin="anonymous"></script>
    [

    <link href="css/JQmap.css" rel="stylesheet" />
    <link href="css/weather-icons.css" rel="stylesheet" />
    <link href="css/icons-wind.css" rel="stylesheet" />
    <link href="css/Summernote.css" rel="stylesheet" />
    <!-- Template CSS -->
    <link rel="stylesheet" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/components.css" />
    <link href="css/Global.css" rel="stylesheet" />
    <script type="text/javascript">
        function update() {

            $('#edit').modal('hide');
        }
    </script>
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
                            <li class="nav-item dropdown ">
                                <a href="Dashboard.aspx" class="nav-link"><i class="fas fa-bullseye"></i><span>Dashboard</span></a>

                            </li>
                            <li class="menu-header">Control Panel</li>
                            <li class="nav-item "><a href="ProjectDetails.aspx" class="nav-link"><i class="fas fa-atom"></i><span>Project</span></a> </li>
                            <li class="nav-item active"><a href="SiteDetails.aspx"><i class="fas fa-sitemap"></i><span>Multi-Site</span></a></li>
                            <li class="nav-item dropdown"><a href="#" class="nav-link"><i class="fab fa-hive"></i><span>Inventory</span></a> </li>
                            <li><a class="nav-link" href="blank.html"><i class="fas fa-users-cog"></i><span>User Management</span></a></li>
                            <li class="menu-header">System</li>
                            <li><a class="nav-link" href="blank.html"><i class="fas fa-layer-group"></i><span>Grouping</span></a></li>
                            <li><a class="nav-link" href="blank.html"><i class="fas fa-wifi"></i><span>Network</span></a></li>

                            <li class="menu-header">Automation</li>
                            <li><a class="nav-link" href="blank.html"><i class="fas fa-sliders-h"></i><span>Controller</span></a></li>
                            <li><a class="nav-link" href="blank.html"><i class="fab fa-stack-overflow"></i><span>Work Order</span></a></li>
                        </ul>
                    </aside>
                </div>
                <!-- Main Content -->
                <div class="main-content">
                    <section class="section">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <h4 class="alignheading"><span>Multi-Site Information    </span>
                                    </h4>
                                    <!--Section: Block Content-->


                                    <p data-placement="top" data-toggle="Ad Project" title="Add" style="float: right;">
                                        <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#addSite">Add Site <i class="fas fa-plus"></i></a>
                                    </p>
                                    <div class="table-responsive">
                                        <table id="mytable" class="table table-bordred table-striped">
                                            <thead>
                                                <th>Name</th>
                                                <th>Address</th>
                                                <th>Area</th>
                                                <th>District</th>
                                                <th>State</th>
                                                <th>Country</th>
                                                <th>Time Zone</th>
                                                <th>Project</th>
                                                <th>Edit</th>

                                                <th>Delete</th>

                                            </thead>
                                            <tbody>

                                                <tr>

                                                    <td>Sample</td>
                                                    <td>Sample</td>

                                                    <td>Sample</td>
                                                    <td>Sample</td>

                                                    <td>Sample</td>
                                                    <td>Sample</td>

                                                    <td>Sample</td>
                                                    <td>Sample</td>

                                                    <td>
                                                        <p data-placement="top" data-toggle="tooltip" title="Edit">
                                                            <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#addSite"><i class="fas fa-edit"></i></a>
                                                        </p>
                                                    </td>
                                                    <td>
                                                        <p data-placement="top" data-toggle="tooltip" title="Delete">
                                                            <a href="#" class="btn btn-Custom1 btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete"><i class="fas fa-trash"></i></a>
                                                        </p>
                                                    </td>
                                                </tr>
                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <h4 class="alignheading"><span>Road Information    </span>
                                    </h4>
                                    <!--Section: Block Content-->


                                    <p data-placement="top" data-toggle="Ad Project" title="Add" style="float: right;">
                                        <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#addroad">Add Road <i class="fas fa-plus"></i></a>
                                    </p>
                                    <div class="table-responsive">
                                        <table id="mytable" class="table table-bordred table-striped">
                                            <thead>
                                                <th>Road Name</th>
                                                <th>Site Name</th>
                                                <th>Edit</th>
                                                <th>Delete</th>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Road 1</td>
                                                    <td>Guindy</td>
                                                    <td>
                                                        <p data-placement="top" data-toggle="tooltip" title="Edit">
                                                            <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#addroad"><i class="fas fa-edit"></i></a>
                                                        </p>
                                                    </td>
                                                    <td>
                                                        <p data-placement="top" data-toggle="tooltip" title="Delete">
                                                            <a href="#" class="btn btn-Custom1 btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete"><i class="fas fa-trash"></i></a>
                                                        </p>
                                                    </td>
                                                </tr>
                                            </tbody>

                                        </table>
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

        <div class="modal fade" id="addSite" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                        <h4 class="modal-title custom_align" id="Headings">Add Site</h4>
                    </div>
                    <div class="modal-body">

                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Name" />
                        </div>
                        <div class="form-group">

                            <input class="form-control " type="text" placeholder="Area" />
                        </div>
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="District" />
                        </div>
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="State" />
                        </div>
                        <div class="form-group">
                          <select class="form-control">
                                <option>India</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control">
                                <option>Select Timezone</option>
                            </select>
                        </div>
                        <div class="form-group">
                             <select class="form-control">
                                <option>Select Project</option>
                            </select>
                        </div>

                    </div>
                    <div class="modal-footer modalcenter">
                        <button type="button" class="btn btn-Custom0 " data-dismiss="modal">Update <i class="fa fa-check" aria-hidden="true"></i></button>
                    </div>
        </div>
        <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

        <div class="modal fade" id="addroad" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                        <h4 class="modal-title custom_align" id="">Add Project</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Road Name" />
                        </div>
                        <div class="form-group">

                            <input class="form-control " type="text" placeholder="Road Details" />
                        </div>

                    </div>
                    <div class="modal-footer modalcenter">
                        <button type="button" class="btn btn-Custom0 " data-dismiss="modal">Add <i class="fas fa-plus"></i></button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>



        <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
                    </div>
                    <div class="modal-body">
                        Are you sure you want to delete this Site Details?

                    </div>
                    <div class="modal-footer ">
                        <button type="button" class="btn btn-Custom1" data-dismiss="modal"><i class="fa fa-check" aria-hidden="true"></i>Yes</button>
                        <button type="button" class="btn btn-Custom0" data-dismiss="modal"><i class="fa fa-times" aria-hidden="true"></i>No</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
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
