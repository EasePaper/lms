<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CtrlMgmt.aspx.cs" Inherits="CtrlMgmt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <title></title>
    <link href="css/Global.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="//code.jquery.com/ui/1.9.2/jquery-ui.js"></script>

    <script type="text/javascript">
        $(function () {
            $("#sidemenu").load("SideMenu.aspx");
            //$("#navbar").load("NavMenu.aspx");
        });
    </script>

    <style type="text/css">
        @media only screen and (max-width: 800px) {
            /* Force table to not be like tables anymore */
            #no-more-tables table,
            #no-more-tables thead,
            #no-more-tables tbody,
            #no-more-tables th,
            #no-more-tables td,
            #no-more-tables tr {
                display: block;
            }

                /* Hide table headers (but not display: none;, for accessibility) */
                #no-more-tables thead tr {
                    position: absolute;
                    top: -9999px;
                    left: -9999px;
                }

            #no-more-tables tr {
                border: 1px solid #ccc;
            }

            #no-more-tables td {
                /* Behave  like a "row" */
                border: none;
                border-bottom: 1px solid #eee;
                position: relative;
                padding-left: 50%;
                white-space: normal;
                text-align: left;
            }

                #no-more-tables td:before {
                    /* Now like a table header */
                    position: absolute;
                    /* Top/left values mimic padding */
                    top: 6px;
                    left: 6px;
                    width: 45%;
                    padding-right: 10px;
                    white-space: nowrap;
                    text-align: left;
                    font-weight: bold;
                }

                /*
Label the data
*/
                #no-more-tables td:before {
                    content: attr(data-title);
                }
        }
    </style>

    <style type="text/css">
        .card-stats .card-body {
            padding: 1rem 1.5rem;
        }

        .card-stats {
            border-radius: 1rem !important;
        }

        .rounded-circle {
            border-radius: 50% !important;
        }

        .icon {
            width: 3rem;
            height: 3rem;
        }

            .icon i {
                font-size: 2.25rem;
            }

        .icon-shape {
            display: inline-flex;
            padding: 12px;
            text-align: center;
            border-radius: 50%;
            align-items: center;
            justify-content: center;
        }

            .icon-shape i {
                font-size: 1.25rem;
            }

        .order-card {
            color: #fff !important;
        }

        .bg-c-blue {
            background: linear-gradient(45deg,#4099ff,#73b4ff) !important;
        }

        .bg-c-green {
            background: linear-gradient(45deg,#2ed8b6,#59e0c5) !important;
        }

        .bg-c-yellow {
            background: linear-gradient(45deg,#FFB64D,#ffcb80) !important;
        }

        .bg-c-pink {
            background: linear-gradient(45deg,#FF5370,#ff869a) !important;
        }

        .bg-c-teal {
            background: linear-gradient(45deg,#2ed8b6,#59e0c5) !important;
        }

        /*tbody {
            display: block;
            height: 200px;
            overflow: auto;
        }

            thead, tbody tr {
                display: table;
                width: 100%;
                table-layout: fixed;
            }*/
    </style>
    <script type="text/javascript">
        function toggle_full_screen() {
            if ((document.fullScreenElement && document.fullScreenElement !== null) || (!document.mozFullScreen && !document.webkitIsFullScreen)) {
                if (document.documentElement.requestFullScreen) {
                    document.documentElement.requestFullScreen();
                }
                else if (document.documentElement.mozRequestFullScreen) { /* Firefox */
                    document.documentElement.mozRequestFullScreen();
                }
                else if (document.documentElement.webkitRequestFullScreen) {   /* Chrome, Safari & Opera */
                    document.documentElement.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);
                }
                else if (document.msRequestFullscreen) { /* IE/Edge */
                    document.documentElement.msRequestFullscreen();
                }
            }
            else {
                if (document.cancelFullScreen) {
                    document.cancelFullScreen();
                }
                else if (document.mozCancelFullScreen) { /* Firefox */
                    document.mozCancelFullScreen();
                }
                else if (document.webkitCancelFullScreen) {   /* Chrome, Safari and Opera */
                    document.webkitCancelFullScreen();
                }
                else if (document.msExitFullscreen) { /* IE/Edge */
                    document.msExitFullscreen();
                }
            }
            toggle_max_screen_icon();
        }
        function toggle_max_screen_icon() {
            var element = document.getElementById("fullscreen");
            if (element.classList.contains("fa-arrows-alt"))
                element.classList.replace("fa-arrows-alt", "fa-compress-arrows-alt");
            else
                element.classList.replace("fa-compress-arrows-alt", "fa-arrows-alt");
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
                        <div class="container-fluid">

                            <div class="row">
                                <div class="col-lg-2 col-md-2 col-6 mb-3">
                                    <span class="col">Project</span>
                                    <select class="form-control d-inline-block py-0 px-2" style="height: 2rem">
                                        <option>Select Project</option>
                                    </select>
                                </div>

                                <div class="col-lg-2 col-md-2 col-6 mb-3">
                                    <span class="col">Site</span>
                                    <select class="form-control d-inline-block py-0 px-2" style="height: 2rem">
                                        <option>Select Site</option>
                                    </select>
                                </div>

                                <div class="col-lg-2 col-md-2 col-6 mb-3">
                                    <span class="col">Road</span>
                                    <select class="form-control d-inline-block py-0 px-2" style="height: 2rem">
                                        <option>Select Road</option>
                                    </select>
                                </div>

                                <div class="col-lg-2 col-md-2 col-6 mb-3">
                                    <span class="col">Group</span>
                                    <select class="form-control d-inline-block py-0 px-2" style="height: 2rem">
                                        <option>Select Group</option>
                                    </select>
                                </div>

                                <div class="col-lg-2 col-md-2 col-6 mb-3">
                                    <span class="col">Status</span>
                                    <select class="form-control d-inline-block py-0 px-2" style="height: 2rem">
                                        <option>Select Status</option>
                                        <option>Online</option>
                                        <option>Offline</option>
                                        <option>Service</option>
                                    </select>
                                </div>


                                <div class="col-md-2 order-first order-sm-first order-md-last order-lg-last order-xl-last">
                                    <div class="row justify-content-end">
                                        <button class="btn btn-Custom0 btn-xs fa-pull-right mx-1 mb-2" id="dropdownMenuButton9" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" disabled><i class="fa fa-pie-chart"></i></button>
                                        <button class="btn btn-Custom0 btn-xs fa-pull-right mx-1 mb-2" id="dropdownMenuButton10" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" disabled><i class="fa fa-map-marker"></i></button>
                                        <button class="btn btn-Custom0 btn-xs fa-pull-right mx-1 mb-2" id="dropdownMenuButton11" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="toggle_full_screen();"><i id="fullscreen" class="fa fa-arrows-alt"></i></button>
                                    </div>
                                </div>
                            </div>

                            <!--Grid row-->
                            <div class="row mt-3">
                                <div class="col-xl-3 col-lg-6">
                                    <div class="card card-stats bg-c-blue shadow">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <h6 class="card-title text-white text-uppercase mb-0">Total Projects</h6>
                                                    <span class="h3 font-weight-bold text-white mb-0">5,089</span>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
                                                        <i class="fas fa-sitemap"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="mt-3 mb-0 text-muted text-sm">
                                                <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>3.48%</span>
                                                <span class="text-nowrap text-white">5 Minutes ago</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6">
                                    <div class="card card-stats bg-c-green shadow">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <h6 class="card-title text-uppercase text-white mb-0">Active Lamps</h6>
                                                    <span class="h3 font-weight-bold text-white mb-0">2,356</span>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
                                                        <i class="fas fa-lightbulb"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="mt-3 mb-0 text-muted text-sm">
                                                <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i>3.48%</span>
                                                <span class="text-nowrap text-white">5 Seconds ago</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6">
                                    <div class="card card-stats bg-c-pink shadow">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <h6 class="card-title text-uppercase text-white mb-0">Open Ticket</h6>
                                                    <span class="h3 font-weight-bold text-white mb-0">924</span>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="icon icon-shape bg-success text-white rounded-circle shadow">
                                                        <i class="fas fa-ticket-alt"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="mt-3 mb-0 text-white text-sm">
                                                <span class="text-warning mr-2"><i class="fas fa-arrow-down"></i>1.10%</span>
                                                <span class="text-nowrap">Since yesterday</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6">
                                    <div class="card card-stats bg-c-yellow shadow">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <h6 class="card-title text-uppercase text-white mb-0">Pending Orders</h6>
                                                    <span class="h3 font-weight-bold text-white mb-0">186</span>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="icon icon-shape bg-info text-white rounded-circle shadow">
                                                        <i class="fas fa-clipboard-list"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="mt-3 mb-0 text-white text-sm">
                                                <span class="text-success mr-2"><i class="fas fa-arrow-up"></i>12%</span>
                                                <span class="text-nowrap">Since last month</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Grid row-->

                            <div class="row">
                                <div class="col-md-3 col-sm-12 mb-2">
                                    <input class="form-control form-control-sm" type="search" placeholder="Search" id="example-search-input" />
                                </div>

                                <div class="col-md-8 col-sm-12 input-group mb-3">
                                    <div class="row">
                                        <%--<div class="pl-1">
                                            <button class="btn btn-Custom0 btn-xs fa-pull-right"><i class="fa fa-filter"></i></button>
                                        </div>
                                        <div class="pl-1">
                                            <button class="btn btn-Custom0 btn-xs fa-pull-right"><i class="fa fa-filter"></i></button>
                                        </div>
                                        <div class="pl-1">
                                            <button class="btn btn-Custom0 btn-xs fa-pull-right"><i class="fa fa-filter"></i></button>
                                        </div>
                                        <div class="pl-1">
                                            <button class="btn btn-Custom0 btn-xs fa-pull-right"><i class="fa fa-filter"></i></button>
                                        </div>
                                        <div class="pl-1">
                                            <button class="btn btn-Custom0 btn-xs fa-pull-right"><i class="fa fa-filter"></i></button>
                                        </div>
                                        <div class="pl-1">
                                            <button class="btn btn-Custom0 btn-xs fa-pull-right"><i class="fa fa-filter"></i></button>
                                        </div>
                                        <div class="pl-1">
                                            <button class="btn btn-Custom0 btn-xs fa-pull-right"><i class="fa fa-filter"></i></button>
                                        </div>
                                        <div class="pl-1">
                                            <button class="btn btn-Custom0 btn-xs fa-pull-right"><i class="fa fa-filter"></i></button>
                                        </div>--%>
                                        <div class="col">
                                            <div data-placement="top" data-toggle="Ad Project" title="" style="float: right; display: inline-flex;">
                                                <div class="dropdown">
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                        <a class="dropdown-item" href="#">Filter 1</a>
                                                        <a class="dropdown-item" href="#">Filter 2</a>
                                                        <a class="dropdown-item" href="#">Filter 3</a>
                                                    </div>
                                                </div>
                                                <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                                <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                                <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                                <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                                <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                                <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton6" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                                <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton7" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                                <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton8" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col table-responsive">
                                    <table class="table table-Condensed table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">PoleID</th>
                                                <th scope="col">Access PointID</th>
                                                <th scope="col">Pole Name</th>
                                                <th scope="col">Light Status</th>
                                                <th scope="col">Light Level</th>
                                                <th scope="col">Lighting Time</th>
                                                <th scope="col">Installation Status</th>
                                                <th scope="col">Light Serial No</th>
                                                <th scope="col">Device No</th>
                                                <th scope="col">Battery Level(%)</th>
                                                <th scope="col">Brightness</th>
                                                <th scope="col">Charging Status</th>
                                                <th scope="col">Schedule Name</th>
                                            </tr>
                                        </thead>

                                        <tbody style="background-color: #fff;">
                                            <tr>
                                                <td >SL001</td>
                                                <td>Guindy</td>
                                                <td>Main</td>
                                                <td><i class="far fa-lightbulb text-warning"></i></td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 90%;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">90%</div>
                                                    </div>
                                                </td>
                                                <td>2 hrs</td>
                                                <td><i class="fas fa-check-circle text-success"></i></td>
                                                <td>LoRa</td>
                                                <td>06:00AM</td>
                                                <td>Online</td>
                                                <td>30%</td>
                                                <td><i class="fas fa-charging-station text-success"></i></td>
                                                <td>Active</td>
                                            </tr>
                                            <tr>
                                                <td ">SL002</td>
                                                <td>Guindy</td>
                                                <td>Main</td>
                                                <td><i class="fas fa-lightbulb text-warning"></i></td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 40%;" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">40%</div>
                                                    </div>
                                                </td>
                                                <td>3 hrs</td>
                                                <td><i class="fas fa-exclamation-circle text-danger"></i></td>
                                                <td>LoRa</td>
                                                <td>05:45AM</td>
                                                <td>Online</td>
                                                <td>35%</td>
                                                <td><i class="fas fa-charging-station text-danger"></i></td>
                                                <td>Active</td>
                                            </tr>
                                            <tr>
                                                <td >SL003</td>
                                                <td>Guindy</td>
                                                <td>Main</td>
                                                <td><i class="fas fa-lightbulb text-warning"></i></td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 65%;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">65%</div>
                                                    </div>
                                                </td>
                                                <td>6 hrs</td>
                                                <td><i class="fas fa-times-circle text-warning"></i></td>
                                                <td>LoRa</td>
                                                <td>06:00AM</td>
                                                <td>Online</td>
                                                <td>50%</td>
                                                <td><i class="fas fa-charging-station text-danger"></i></td>
                                                <td>Active</td>
                                            </tr>
                                            <tr>
                                                <td>SL003</td>
                                                <td>Guindy</td>
                                                <td>Main</td>
                                                <td><i class="fas fa-lightbulb text-warning"></i></td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 65%;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">65%</div>
                                                    </div>
                                                </td>
                                                <td>6 hrs</td>
                                                <td><i class="fas fa-times-circle text-warning"></i></td>
                                                <td>LoRa</td>
                                                <td>06:00AM</td>
                                                <td>Online</td>
                                                <td>50%</td>
                                                <td><i class="fas fa-charging-station text-danger"></i></td>
                                                <td>Active</td>
                                            </tr>
                                            <tr>
                                                <td>SL003</td>
                                                <td>Guindy</td>
                                                <td>Main</td>
                                                <td><i class="fas fa-lightbulb text-warning"></i></td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 65%;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">65%</div>
                                                    </div>
                                                </td>
                                                <td>6 hrs</td>
                                                <td><i class="fas fa-times-circle text-warning"></i></td>
                                                <td>LoRa</td>
                                                <td>06:00AM</td>
                                                <td>Online</td>
                                                <td>50%</td>
                                                <td><i class="fas fa-charging-station text-danger"></i></td>
                                                <td>Active</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--Grid row-->

                            <!--New-->
                            <!--Grid row-->
                            <div class="row">
                                <!--Grid column-->
                                <div class="col-md-2 col-6 mb-2">
                                    <!-- Card -->
                                    <div class="card text-left shadow rounded">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col px-0">
                                                    <h6 class="text-uppercase text-black-50 mb-0">Network</h6>
                                                </div>
                                                <div class="col-auto px-0">
                                                    <div class="icon icon-shape bg-primary text-white rounded-circle shadow" style="width: 1.6rem; height: 1.6rem">
                                                        <i class="fas fa-wifi fa-xs" style="font-size: .8rem;"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <%-- <p class="text-uppercase small mb-2"><strong>Total Projects</strong></p>
                                            <h5 class="font-weight-bold mb-0">3
                                                <small class="text-success ml-2">
                                                    <i class="fas fa-arrow-up fa-sm pr-1"></i>13,48%</small>
                                            </h5>--%>
                                        </div>
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item text-danger d-flex justify-content-between align-items-center font-weight-bold py-0">Critical <span class="text-danger">14</span></li>
                                            <li class="list-group-item text-primary d-flex justify-content-between align-items-center font-weight-bold py-0">Major <span class="text-primary">14</span></li>
                                            <li class="list-group-item text-info d-flex justify-content-between align-items-center font-weight-bold py-0">Minor <span class="text-info">14</span></li>
                                            <li class="list-group-item text-warning d-flex justify-content-between align-items-center font-weight-bold py-0">Warning <span class="text-warning">14</span></li>
                                        </ul>
                                    </div>
                                    <!-- Card -->
                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-md-2 col-6 mb-2">
                                    <!-- Card -->
                                    <div class="card shadow rounded">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col px-0">
                                                    <h6 class="text-uppercase text-black-50 mb-0 ">Gateway</h6>
                                                </div>
                                                <div class="col-auto px-0">
                                                    <div class="icon icon-shape bg-info text-white rounded-circle shadow" style="width: 1.6rem; height: 1.6rem">
                                                        <i class="fas fa-project-diagram fa-xs" style="font-size: .8rem;"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <%-- <p class="text-uppercase small mb-2"><strong>Total Projects</strong></p>
                                            <h5 class="font-weight-bold mb-0">3
                                                <small class="text-success ml-2">
                                                    <i class="fas fa-arrow-up fa-sm pr-1"></i>13,48%</small>
                                            </h5>--%>
                                        </div>
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item text-danger d-flex justify-content-between align-items-center font-weight-bold py-0">Critical <span class="text-danger">14</span></li>
                                            <li class="list-group-item text-primary d-flex justify-content-between align-items-center font-weight-bold py-0">Major <span class="text-primary">14</span></li>
                                            <li class="list-group-item text-info d-flex justify-content-between align-items-center font-weight-bold py-0">Minor <span class="text-info">14</span></li>
                                            <li class="list-group-item text-warning d-flex justify-content-between align-items-center font-weight-bold py-0">Warning <span class="text-warning">14</span></li>
                                        </ul>
                                    </div>
                                    <!-- Card -->
                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-md-2 col-6 mb-2">
                                    <!-- Card -->
                                    <div class="card shadow rounded">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col px-0">
                                                    <h6 class="text-uppercase text-black-50 mb-0 ">Sensors</h6>
                                                </div>
                                                <div class="col-auto px-0">
                                                    <div class="icon icon-shape bg-dark text-white rounded-circle shadow" style="width: 1.6rem; height: 1.6rem">
                                                        <i class="fas fa-thermometer-three-quarters fa-xs" style="font-size: .8rem;"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <%-- <p class="text-uppercase small mb-2"><strong>Total Projects</strong></p>
                                            <h5 class="font-weight-bold mb-0">3
                                                <small class="text-success ml-2">
                                                    <i class="fas fa-arrow-up fa-sm pr-1"></i>13,48%</small>
                                            </h5>--%>
                                        </div>
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item text-danger d-flex justify-content-between align-items-center font-weight-bold py-0">Critical <span class="text-danger">14</span></li>
                                            <li class="list-group-item text-primary d-flex justify-content-between align-items-center font-weight-bold py-0">Major <span class="text-primary">14</span></li>
                                            <li class="list-group-item text-info d-flex justify-content-between align-items-center font-weight-bold py-0">Minor <span class="text-info">14</span></li>
                                            <li class="list-group-item text-warning d-flex justify-content-between align-items-center font-weight-bold py-0">Warning <span class="text-warning">14</span></li>
                                        </ul>
                                    </div>
                                    <!-- Card -->
                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-md-2 col-6 mb-2">
                                    <!-- Card -->
                                    <div class="card shadow rounded">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col px-0">
                                                    <h6 class="text-uppercase text-black-50 mb-0 ">Alerts</h6>
                                                </div>
                                                <div class="col-auto px-0">
                                                    <div class="icon icon-shape bg-danger text-white rounded-circle shadow" style="width: 1.6rem; height: 1.6rem">
                                                        <i class="fas fa-exclamation-circle fa-xs" style="font-size: .8rem;"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <%-- <p class="text-uppercase small mb-2"><strong>Total Projects</strong></p>
                                            <h5 class="font-weight-bold mb-0">3
                                                <small class="text-success ml-2">
                                                    <i class="fas fa-arrow-up fa-sm pr-1"></i>13,48%</small>
                                            </h5>--%>
                                        </div>
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item text-danger d-flex justify-content-between align-items-center font-weight-bold py-0">Critical <span class="text-danger">14</span></li>
                                            <li class="list-group-item text-primary d-flex justify-content-between align-items-center font-weight-bold py-0">Major <span class="text-primary">14</span></li>
                                            <li class="list-group-item text-info d-flex justify-content-between align-items-center font-weight-bold py-0">Minor <span class="text-info">14</span></li>
                                            <li class="list-group-item text-warning d-flex justify-content-between align-items-center font-weight-bold py-0">Warning <span class="text-warning">14</span></li>
                                        </ul>
                                    </div>
                                    <!-- Card -->
                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-md-2 col-6 mb-2">
                                    <!-- Card -->
                                    <div class="card shadow rounded">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col px-0">
                                                    <h6 class="text-uppercase text-black-50 mb-0 ">Service</h6>
                                                </div>
                                                <div class="col-auto px-0">
                                                    <div class="icon icon-shape bg-warning text-white rounded-circle shadow" style="width: 1.6rem; height: 1.6rem">
                                                        <i class="fas fa-tools fa-xs" style="font-size: .8rem;"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <%-- <p class="text-uppercase small mb-2"><strong>Total Projects</strong></p>
                                            <h5 class="font-weight-bold mb-0">3
                                                <small class="text-success ml-2">
                                                    <i class="fas fa-arrow-up fa-sm pr-1"></i>13,48%</small>
                                            </h5>--%>
                                        </div>
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item text-danger d-flex justify-content-between align-items-center font-weight-bold py-0">Critical <span class="text-danger">14</span></li>
                                            <li class="list-group-item text-primary d-flex justify-content-between align-items-center font-weight-bold py-0">Major <span class="text-primary">14</span></li>
                                            <li class="list-group-item text-info d-flex justify-content-between align-items-center font-weight-bold py-0">Minor <span class="text-info">14</span></li>
                                            <li class="list-group-item text-warning d-flex justify-content-between align-items-center font-weight-bold py-0">Warning <span class="text-warning">14</span></li>
                                        </ul>
                                    </div>
                                    <!-- Card -->
                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-md-2 col-6 mb-2">
                                    <!-- Card -->
                                    <div class="card shadow rounded">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col px-0">
                                                    <h6 class="text-uppercase text-black-50 mb-0 ">Battery</h6>
                                                </div>
                                                <div class="col-auto px-0">
                                                    <div class="icon icon-shape bg-success text-white rounded-circle shadow" style="width: 1.6rem; height: 1.6rem">
                                                        <i class="fas fa-car-battery fa-xs" style="font-size: .8rem;"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <%-- <p class="text-uppercase small mb-2"><strong>Total Projects</strong></p>
                                            <h5 class="font-weight-bold mb-0">3
                                                <small class="text-success ml-2">
                                                    <i class="fas fa-arrow-up fa-sm pr-1"></i>13,48%</small>
                                            </h5>--%>
                                        </div>
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item text-danger d-flex justify-content-between align-items-center font-weight-bold py-0">Critical <span class="text-danger">14</span></li>
                                            <li class="list-group-item text-primary d-flex justify-content-between align-items-center font-weight-bold py-0">Major <span class="text-primary">14</span></li>
                                            <li class="list-group-item text-info d-flex justify-content-between align-items-center font-weight-bold py-0">Minor <span class="text-info">14</span></li>
                                            <li class="list-group-item text-warning d-flex justify-content-between align-items-center font-weight-bold py-0">Warning <span class="text-warning">14</span></li>
                                        </ul>
                                    </div>
                                    <!-- Card -->
                                </div>
                                <!--Grid column-->

                            </div>
                            <!--Grid row-->
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
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
        <script src="../assets/js/stisla.js"></script>


        <!-- Template JS File -->
        <script src="../assets/js/scripts.js"></script>
        <script src="../assets/js/custom.js"></script>
    </form>
</body>
</html>
