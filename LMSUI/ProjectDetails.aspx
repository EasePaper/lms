<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProjectDetails.aspx.cs" Inherits="ProjectDetails" %>

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
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>Projects    
                                        </h4>
                                    <!--Section: Block Content-->
                                    <section class="paddingcls">

                                        <!--Grid row-->
                                        <div class="row">

                                            <!--Grid column-->
                                            <div class="col-lg-4 col-md-12 mb-4">

                                                <!-- Card -->
                                                <div class="card">

                                                    <div class="card-body">

                                                        <p class="text-uppercase text-muted small mb-2"><strong>Total Projects</strong></p>
                                                        <h5 class="font-weight-bold text-muted mb-0">3
          </h5>
                                                        <hr />
                                                        <p class="text-uppercase small mb-2"><strong>Active Lamps</strong></p>
                                                        <h5 class="font-weight-bold mb-0">456
           
                                                            <small class="text-success ml-2">
                                                                <i class="fas fa-arrow-up fa-sm pr-1"></i>13,48%</small>
                                                        </h5>




                                                    </div>

                                                </div>
                                                <!-- Card -->

                                            </div>
                                            <!--Grid column-->

                                            <!--Grid column-->
                                            <div class="col-lg-4 col-md-6 mb-4">

                                                <!-- Card -->
                                                <div class="card">

                                                    <div class="card-body">



                                                        <p class="text-uppercase text-muted small mb-2"><strong>Total Sites</strong></p>
                                                        <h5 class="font-weight-bold text-muted mb-0">15
          </h5>

                                                        <hr>

                                                        <p class="text-uppercase small mb-2"><strong>Pole Installed</strong></p>
                                                        <h5 class="font-weight-bold mb-0">534
           
                                                            <small class="text-success ml-2">
                                                                <i class="fas fa-arrow-up fa-sm pr-1"></i>23,58%</small>
                                                        </h5>


                                                    </div>

                                                </div>
                                                <!-- Card -->

                                            </div>
                                            <!--Grid column-->

                                            <!--Grid column-->
                                            <div class="col-lg-4 col-md-6 mb-4">

                                                <!-- Card -->
                                                <div class="card">

                                                    <div class="card-body">



                                                        <p class="text-uppercase text-muted small mb-2"><strong>Total Orders</strong></p>
                                                        <h5 class="font-weight-bold text-muted mb-0">186
          </h5>
                                                        <hr>
                                                        <p class="text-uppercase small mb-2"><strong>Unresolved Orders</strong></p>
                                                        <h5 class="font-weight-bold mb-0">55
           
                                                            <small class="text-danger ml-2">
                                                                <i class="fas fa-arrow-down fa-sm pr-1"></i>23,58%</small>
                                                        </h5>



                                                    </div>

                                                </div>
                                                <!-- Card -->

                                            </div>
                                            <!--Grid column-->

                                        </div>
                                        <!--Grid row-->

                                    </section>
                                    <!--Section: Block Content-->

                                    <p data-placement="top" data-toggle="Ad Project" title="Add" style="float: right;">
                                        <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#add">Add <i class="fas fa-plus"></i></a>
                                    </p>
                                    <div class="table-responsive">
                                        <table id="mytable" class="table table-bordred table-striped">
                                            <thead>
                                                <th>Project Name</th>
                                                <th>Details</th>

                                                <th>Edit</th>

                                                <th>Delete</th>
                                            </thead>
                                            <tbody>

                                                <tr>

                                                    <td>Chennai</td>
                                                    <td>Metro City</td>

                                                    <td>
                                                        <p data-placement="top" data-toggle="tooltip" title="Edit">
                                                            <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><i class="fas fa-edit"></i></a>
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

        <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="Headings">Edit Project</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>
                        
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Chennai" />
                        </div>
                        <div class="form-group">

                            <input class="form-control " type="text" placeholder="Metro City" />
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

        <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="">Add Project</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>
                        
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Project Name" />
                        </div>
                        <div class="form-group">

                            <input class="form-control " type="text" placeholder="Details" />
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
                      <button type="button" class="btn btn-Custom1" data-dismiss="modal">Yes <i class="fa fa-check" aria-hidden="true"></i></button>
                        <button type="button" class="btn btn-Custom0" data-dismiss="modal">No <i class="fa fa-times" aria-hidden="true"></i></button>
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
