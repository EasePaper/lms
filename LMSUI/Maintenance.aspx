<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Maintenance.aspx.cs" Inherits="ProjectDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Maintenance &mdash; LMS</title>

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
                            <div class="row">
                                <div class="col-md-12">
                                        <h4>Maintanance    
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

                                                        <p class="text-uppercase text-muted small mb-2"><strong>Total Tickets</strong></p>
                                                        <h5 class="font-weight-bold text-muted mb-0">898
                                                        </h5>
                                                        <hr />
                                                        <p class="text-uppercase small mb-2"><strong>Open Tickets</strong></p>
                                                        <h5 class="font-weight-bold mb-0">252
           
                                                            <small class="text-success ml-2">
                                                                <i class="fas fa-arrow-up fa-sm pr-1"></i>24.98%</small>
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



                                                        <p class="text-uppercase text-muted small mb-2"><strong>Unassigned Tickets</strong></p>
                                                        <h5 class="font-weight-bold text-muted mb-0">86
                                                        </h5>

                                                        <hr>

                                                        <p class="text-uppercase small mb-2"><strong>Fault resolved</strong></p>
                                                        <h5 class="font-weight-bold mb-0">646
           
                                                            <small class="text-success ml-2">
                                                                <i class="fas fa-arrow-up fa-sm pr-1"></i>75.82%</small>
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



                                                        <p class="text-uppercase text-muted small mb-2"><strong>Average SLA Time</strong></p>
                                                        <h5 class="font-weight-bold text-muted mb-0">1.5 hours
                                                        </h5>
                                                        <hr>
                                                        <p class="text-uppercase small mb-2"><strong>Failed SLA</strong></p>
                                                        <h5 class="font-weight-bold mb-0">23
           
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
                                    <section class="section">
                                        <div class="container col-md-12 col-lg-12" id="col">
                                            <div class="row" id="ticketmng">
                                                <div class="col-md-12">
                                                    
                                                    <!--Section: Block Content-->
                                                    <p data-placement="top" data-toggle="Ad Project" title="Add" style="float: right; float: right; display: inline-flex; margin-bottom: 15px;">
                                                        <div class="dropdown">
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="#">Filter 1</a>
                                                                <a class="dropdown-item" href="#">Filter 2</a>
                                                                <a class="dropdown-item" href="#">Filter 3</a>
                                                            </div>
                                                        </div>
                                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" data-title="Edit" data-toggle="modal" data-target="#add">New Ticket <i class="fas fa-plus"></i></a>
                                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                                    </p>
                                                    <div class="table-responsive">
                                                        <table id="mytable" class="table table-bordred table-striped">
                                                            <thead>
                                                                <th>ID</th>
                                                                <th>Type</th>
                                                                <th>Sub Ticket Type</th>
                                                                <th>Description</th>
                                                                <th>Saved Replies </th>
                                                                <th>Priority</th>
                                                                <th>Tags</th>
                                                                <th>Project</th>
                                                                <th>Site</th>
                                                                <th>Pole</th>
                                                                <th>Lamp</th>
                                                                <th>GPS</th>
                                                                <th>Team</th>
                                                                <th>Technician</th>
                                                                <th>Status</th>
                                                                <th>Sub Status</th>
                                                                <th>Comments</th>
                                                                <th>Attachments</th>

                                                                <th>Edit</th>
                                                                <th>Delete</th>
                                                            </thead>
                                                            <tbody>

                                                                <tr>
                                                                   <td>JT00000001</td>
                                                                    <td>Fault</td>
                                                                    <td>Light</td>
                                                                    <td>Not active</td>
                                                                    <td>Checki...</td>
                                                                    <td>High</td>
                                                                    <td>East_Block</td>
                                                                    <td>Anna Univ</td>
                                                                    <td>Guindy</td>
                                                                    <td>JP1006</td>
                                                                    <td>JL656</td>
                                                                    <td>27.26°N,77.47°E</td>
                                                                    <td>Lighting</td>
                                                                    <td>Mr.Raj</td>
                                                                    <td>Open</td>
                                                                    <td>NA</td>
                                                                    <td>Fuse failure</td>
                                                                    <td>-</td>

                                                                    <td>
                                                                        <p data-placement="top" data-toggle="tooltip" title="Edit">
                                                                            <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#add"><i class="fas fa-edit"></i></a>
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

        <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="">New Ticket</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>

                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Ticket ID" />
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Subticket Type</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Description" />
                                </div>
                                
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Project</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Pole</option>
                                    </select>
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
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Priority</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Tags" />
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Type</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Saved Replies</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Ticket Comments" />
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Site</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Lamp</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Technician</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Sub Status</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="GPS" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Attachments" />
                                </div>
                            </div>
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


    <!-- Template JS File -->
    <script src="../assets/js/scripts.js"></script>
    <script src="../assets/js/custom.js"></script>
</body>
</html>
