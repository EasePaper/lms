<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Config.aspx.cs" Inherits="Config" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Configuration &mdash; LMS</title>

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
    <script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="//code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#sidemenu").load("SideMenu.aspx");
            //$("#navbar").load("NavMenu.aspx");

        });
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
                                <a href="UserAccount.aspx" class="dropdown-item has-icon">
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
                <div class="main-sidebar" id="sidemenu">
                </div>
                <!-- Main Content -->
                <div class="main-content">
                    <section class="section">
                        <div class="container col-md-11 col-lg-11">
                            <div class="row" style="padding-bottom:30px;">
                                <div class="col-md-12">
                                    <h4>Configuration</h4>
                                </div>
                            </div>
                            <div class="row" style="padding-bottom:30px;">
                                <div class="col-xl-6 col-lg-6 col-sm-6 mb-3">
                                    <h5 class="alignheading"><span>Ticket Type</span></h5>
                                    <p data-placement="top" data-toggle="Ad Project" title="Add" style="float: right; float: right; display: inline-flex; margin-bottom: 15px;">
                                        <div class="dropdown">
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Filter 1</a>
                                                <a class="dropdown-item" href="#">Filter 2</a>
                                                <a class="dropdown-item" href="#">Filter 3</a>
                                            </div>
                                        </div>
                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" data-title="Edit" data-toggle="modal" data-target="#addtickettype">Add Ticket Type <i class="fas fa-plus"></i></a>
                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                    </p>
                                    <div class="table-responsive">
                                        <table id="mytable" class="table table-bordred table-striped">
                                            <thead>
                                                <th>Code</th>
                                                <th>Description</th>
                                                <th>Status</th>
                                                <th>Edit</th>
                                                <th>Delete</th>
                                            </thead>
                                            <tbody>

                                                <tr>

                                                    <td>Sample</td>
                                                    <td>Sample</td>
                                                    <td>Enable</td>
                                                    <td>
                                                        <p data-placement="top" data-toggle="tooltip" title="Edit">
                                                            <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#addtickettype"><i class="fas fa-edit"></i></a>
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
                                <div class="col-xl-6  col-lg-6 col-sm-6 mb-3"  style="padding-left:50px;">
                                    <h5 class="alignheading"><span>Ticket Sub Type</span></h5>
                                    <p data-placement="top" data-toggle="Ad Project" title="Add" style="float: right; float: right; display: inline-flex; margin-bottom: 15px;">
                                        <div class="dropdown">
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Filter 1</a>
                                                <a class="dropdown-item" href="#">Filter 2</a>
                                                <a class="dropdown-item" href="#">Filter 3</a>
                                            </div>
                                        </div>
                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" data-title="Edit" data-toggle="modal" data-target="#addticketsubtype">Add Ticket Sub Type <i class="fas fa-plus"></i></a>
                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                    </p>
                                    <div class="table-responsive">
                                        <table id="mytable" class="table table-bordred table-striped">
                                            <thead>
                                                <th>Code</th>
                                                <th>Description</th>
                                                <th>Status</th>
                                                <th>Edit</th>

                                                <th>Delete</th>
                                            </thead>
                                            <tbody>

                                                <tr>

                                                    <td>Sample</td>
                                                    <td>Sample</td>
                                                    <td>Enable</td>
                                                    <td>
                                                        <p data-placement="top" data-toggle="tooltip" title="Edit">
                                                            <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#addticketsubtype"><i class="fas fa-edit"></i></a>
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

                            <div class="row" style="padding-bottom:30px;">
                                <div class="col-xl-6 col-lg-6 col-sm-6 mb-3">
                                    <h5 class="alignheading"><span>Ticket Saved Reply</span></h5>
                                    <p data-placement="top" data-toggle="Ad Project" title="Add" style="float: right; float: right; display: inline-flex; margin-bottom: 15px;">
                                        <div class="dropdown">
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Filter 1</a>
                                                <a class="dropdown-item" href="#">Filter 2</a>
                                                <a class="dropdown-item" href="#">Filter 3</a>
                                            </div>
                                        </div>
                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" data-title="Edit" data-toggle="modal" data-target="#addticketsavedreply">Add Ticket Saved Reply <i class="fas fa-plus"></i></a>
                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                    </p>
                                    <div class="table-responsive">
                                        <table id="mytable" class="table table-bordred table-striped">
                                            <thead>
                                                <th>Name</th>
                                                <th>Reply</th>
                                                <th>Team</th>
                                                <th>Status</th>

                                                <th>Edit</th>

                                                <th>Delete</th>
                                            </thead>
                                            <tbody>

                                                <tr>

                                                    <td>Sample</td>
                                                    <td>Sample</td>
                                                    <td>Sample</td>
                                                    <td>Sample</td>
                                                    <td>
                                                        <p data-placement="top" data-toggle="tooltip" title="Edit">
                                                            <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#addticketsavedreply"><i class="fas fa-edit"></i></a>
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
                                <div class="col-xl-6  col-lg-6 col-sm-6 mb-3"  style="padding-left:50px;">
                                    <h5 class="alignheading"><span>Ticket Status</span></h5>
                                    <p data-placement="top" data-toggle="Ad Project" title="Add" style="float: right; float: right; display: inline-flex; margin-bottom: 15px;">
                                        <div class="dropdown">
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Filter 1</a>
                                                <a class="dropdown-item" href="#">Filter 2</a>
                                                <a class="dropdown-item" href="#">Filter 3</a>
                                            </div>
                                        </div>
                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" data-title="Edit" data-toggle="modal" data-target="#addticketstatus">Add Ticket Status <i class="fas fa-plus"></i></a>
                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                    </p>
                                    <div class="table-responsive">
                                        <table id="mytable" class="table table-bordred table-striped">
                                            <thead>
                                                <th>Status</th>
                                                <th>Description</th>
                                                <th>Status</th>

                                                <th>Edit</th>

                                                <th>Delete</th>
                                            </thead>
                                            <tbody>

                                                <tr>

                                                    <td>Sample</td>
                                                    <td>Sample</td>
                                                    <td>Sample</td>

                                                    <td>
                                                        <p data-placement="top" data-toggle="tooltip" title="Edit">
                                                            <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#addticketstatus"><i class="fas fa-edit"></i></a>
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

                            <div class="row" style="padding-bottom:30px;">
                                <div class="col-xl-6 col-lg-6 col-sm-6 mb-3">
                                    <h5 class="alignheading"><span>Ticket Team</span></h5>
                                    <p data-placement="top" data-toggle="Ad Project" title="Add" style="float: right; float: right; display: inline-flex; margin-bottom: 15px;">
                                        <div class="dropdown">
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Filter 1</a>
                                                <a class="dropdown-item" href="#">Filter 2</a>
                                                <a class="dropdown-item" href="#">Filter 3</a>
                                            </div>
                                        </div>
                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" data-title="Edit" data-toggle="modal" data-target="#addticketteam">Add Ticket Team <i class="fas fa-plus"></i></a>
                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                    </p>
                                    <div class="table-responsive">
                                        <table id="mytable" class="table table-bordred table-striped">
                                            <thead>
                                                <th>Team Name</th>
                                                <th>Email</th>
                                                <th>Description</th>
                                                <th>Status</th>

                                                <th>Edit</th>

                                                <th>Delete</th>
                                            </thead>
                                            <tbody>

                                                <tr>

                                                    <td>Sample</td>
                                                    <td>Sample</td>
                                                    <td>Sample</td>
                                                    <td>Sample</td>

                                                    <td>
                                                        <p data-placement="top" data-toggle="tooltip" title="Edit">
                                                            <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#addticketteam"><i class="fas fa-edit"></i></a>
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
                                <div class="col-xl-6  col-lg-6 col-sm-6 mb-3"  style="padding-left:50px;">
                                    <h5 class="alignheading"><span>Ticket Labels</span></h5>
                                    <p data-placement="top" data-toggle="Ad Project" title="Add" style="float: right; float: right; display: inline-flex; margin-bottom: 15px;">
                                        <div class="dropdown">
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Filter 1</a>
                                                <a class="dropdown-item" href="#">Filter 2</a>
                                                <a class="dropdown-item" href="#">Filter 3</a>
                                            </div>
                                        </div>
                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" data-title="Edit" data-toggle="modal" data-target="#addticketlabel">Add Ticket Labels <i class="fas fa-plus"></i></a>
                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                    </p>
                                    <div class="table-responsive">
                                        <table id="mytable" class="table table-bordred table-striped">
                                            <thead>
                                                <th>Label</th>
                                                <th>Description</th>
                                                <th>Status</th>

                                                <th>Edit</th>

                                                <th>Delete</th>
                                            </thead>
                                            <tbody>

                                                <tr>

                                                    <td>Sample</td>
                                                    <td>Sample</td>
                                                    <td>Sample</td>

                                                    <td>
                                                        <p data-placement="top" data-toggle="tooltip" title="Edit">
                                                            <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#addticketlabel"><i class="fas fa-edit"></i></a>
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

                            <!-- row ends-->
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

        <div class="modal fade" id="addtickettype" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="">Add Ticket Type</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>

                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Code" />
                        </div>
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Description" />
                        </div>
                        <div class="form-group">
                            <select class="form-control">
                                <option>Select Status</option>
                            </select>
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

        <div class="modal fade" id="addticketsubtype" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="">Add Ticket Sub Type</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>

                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Code" />
                        </div>
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Description" />
                        </div>
                        <div class="form-group">
                            <select class="form-control">
                                <option>Select Status</option>
                            </select>
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

        <div class="modal fade" id="addticketsavedreply" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="">Add Ticket Saved Reply</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>

                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Name" />
                        </div>
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Reply" />
                        </div>
                        <div class="form-group">
                            <select class="form-control">
                                <option>Select Team</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control">
                                <option>Select Status</option>
                            </select>
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

        <div class="modal fade" id="addticketstatus" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="">Add Ticket Status</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>

                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Status" />
                        </div>
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Description" />
                        </div>
                        <div class="form-group">
                            <select class="form-control">
                                <option>Select Status</option>
                            </select>
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

        <div class="modal fade" id="addticketteam" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="">Add Ticket Team</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>

                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Team Name" />
                        </div>
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Email" />
                        </div>
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Description" />
                        </div>
                        <div class="form-group">
                            <select class="form-control">
                                <option>Select Status</option>
                            </select>
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

        <div class="modal fade" id="addticketlabel" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="">Add Ticket Label</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>

                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Label Name" />
                        </div>
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Description" />
                        </div>
                        <div class="form-group">
                            <select class="form-control">
                                <option>Select Status</option>
                            </select>
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
                        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>

                    </div>
                    <div class="modal-body">
                        Are you sure you want to delete this Project Details?

                   
                    </div>
                    <div class="modal-footer ">
                        <button type="button" class="btn btn-Custom0" data-dismiss="modal">Yes <i class="fa fa-check" aria-hidden="true"></i></button>
                        <button type="button" class="btn btn-Custom1" data-dismiss="modal">No <i class="fa fa-times" aria-hidden="true"></i></button>
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


    <!-- Template JS File -->
    <script src="../assets/js/scripts.js"></script>
    <script src="../assets/js/custom.js"></script>
</body>
</html>
