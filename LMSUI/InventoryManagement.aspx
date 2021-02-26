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
    <!-- Template CSS -->
    <link rel="stylesheet" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/components.css" />
    <link href="css/Global.css" rel="stylesheet" />
    <script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="//code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#sidemenu").load("SideMenu.aspx");
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $("#sidemenu").load("SideMenu.aspx");

            //$("#navbar").load("NavMenu.aspx");
            $("#energySaver :input").attr("disabled", true);
        });

        $(function () {
            $("#sidemenu").load("SideMenu.aspx");

            //$("#navbar").load("NavMenu.aspx");
            $("#motionSensor :input").attr("disabled", true);
        });



        $(document).ready(function () {

            var dimslider = document.getElementById("dimslider");
            var dimvalue = document.getElementById("dimvalue");
            dimvalue.innerHTML = dimslider.value;

            dimslider.oninput = function () {
                dimvalue.innerHTML = this.value;
            }


            var energyslider = document.getElementById("energyslider");
            var energyvalue = document.getElementById("energyvalue");
            energyvalue.innerHTML = energyslider.value;

            energyslider.oninput = function () {
                energyvalue.innerHTML = this.value;
            }

        });
        function myAlertTop() {
            $(".myAlert-top").show();
            setTimeout(function () {
                $(".myAlert-top").hide();
            }, 2000);
        }

        function ChangeContent(id) {
            if (id == '0')
                document.getElementById("delBody").innerHTML = "Are you sure you want to delete these Pole Details?";
            if (id == '1')
                document.getElementById("delBody").innerHTML = "Are you sure you want to delete this Pole Details?";
        }
        function ChangeContentLamp(id) {
            if (id == '0')
                document.getElementById("deleteLamp").innerHTML = "Are you sure you want to delete these Lamp Details?";
            if (id == '1')
                document.getElementById("deleteLamp").innerHTML = "Are you sure you want to delete this Lamp Details?";
        }
        function mapPoleandLamps(values) {

            if (values == '0') {
                document.getElementById("mappolelampHeader").innerHTML = "Map Pole to Road";
                document.getElementById("selectPole").style.display = "none";

            }
            if (values == '1') {
                document.getElementById("mappolelampHeader").innerHTML = "Map Lamp to Pole";
                document.getElementById("selectPole").style.display = "Block";
                
            }
        }
        

    </script>
    <style type="text/css">
        .nav-tabs {
            border-bottom: none !important;
        }

            .nav-tabs .nav-item .nav-link.active {
                color: #1c314c !important;
                border-color: #1c314c !important;
                border-top-color: #f4f6f9 !important;
                border-left-color: #f4f6f9 !important;
                border-right-color: #f4f6f9 !important;
            }

            .nav-tabs .nav-item .nav-link {
                color: #78828a !important;
            }
    </style>
    <style type="text/css">
        svg {
            overflow: hidden;
            vertical-align: middle;
            width: 85%;
        }

        #myProgress {
            margin-top: 5px;
            width: 40%;
            background-color: #ddd;
            height: 10px;
            border-radius: 20px;
            margin-left: 5px;
        }

        #myBar {
            width: 20%;
            height: 10px;
            background-color: #00E500;
            text-align: center;
            line-height: 10px;
            color: #f4f6f9;
            border-radius: 20px;
            font-size: 12px;
            font-family: helvetica;
        }

        .nav-tabs {
            border-bottom: none !important;
        }

            .nav-tabs .nav-item .nav-link.active {
                color: #78828a !important;
                border-color: #78828a !important;
                border-top-color: #f4f6f9 !important;
                border-left-color: #f4f6f9 !important;
                border-right-color: #f4f6f9 !important;
            }

            .nav-tabs .nav-item .nav-link {
                color: #78828a !important;
            }

        h1 {
            color: green;
        }

        .toggle.ios, .toggle-on.ios, .toggle-off.ios {
            border-radius: 20px;
        }

            .toggle.ios .toggle-handle {
                border-radius: 20px;
            }

        .toggle-off {
            background-color: #d19734;
        }

        h1 {
            color: green;
        }

        /* toggle in label designing */
        .toggle {
            position: relative;
            display: inline-block;
            width: 40px;
            height: 19px;
            background-color: #D19734;
            border-radius: 20px;
            border: 1px gray;
        }

            /* After slide changes */
            .toggle:after {
                content: '';
                position: absolute;
                width: 18px;
                height: 15px;
                border-radius: 50%;
                background-color: #f4f6f9;
                top: 2px;
                left: 2px;
                transition: all 0.5s;
            }

        /* Checkbox cheked effect */
        .checkbox:checked + .toggle::after {
            left: 20px;
        }

        /* Checkbox cheked toggle label bg color */
        .checkbox:checked + .toggle {
            background-color: #40BD92;
        }

        /* Checkbox vanished */
        .checkbox {
            display: none;
        }
        /*Chrome*/
        input[type=range] {
            -webkit-appearance: none;
            margin: 12px 0;
            width: 100%;
        }

            input[type=range]:focus {
                outline: none;
            }

            input[type=range]:disabled {
                background: #dddddd;
            }

            input[type=range]::-webkit-slider-runnable-track {
                width: 100%;
                height: 4px;
                cursor: pointer;
                animate: 0.2s;
                background: #65cae7;
                border-radius: 25px;
            }

            input[type=range]::-webkit-slider-thumb {
                height: 20px;
                width: 20px;
                border-radius: 50%;
                background: #f4f6f9;
                box-shadow: 0 0 6px 0 rgba(0,0,0, 2);
                cursor: pointer;
                -webkit-appearance: none;
                margin-top: -8px;
            }

            input[type=range]:focus::-webkit-slider-runnable-track {
                background: #65cae7;
            }

        .range-wrap {
            width: 500px;
            position: relative;
        }

        .range-value {
            position: absolute;
            top: -50%;
        }

            .range-value span {
                width: 50px;
                height: 24px;
                line-height: 24px;
                text-align: center;
                background: #40BD92;
                font-size: 12px;
                font-family: helvetica, Helvetica, sans-serif;
                display: block;
                position: absolute;
                left: 50%;
                transform: translate(-50%, 0);
                border-radius: 15px;
            }

                .range-value span:before {
                    content: "";
                    position: absolute;
                    width: 0;
                    height: 0;
                    border-top: 3px solid #40BD92;
                    border-left: 6px solid transparent;
                    border-right: 6px solid transparent;
                    top: 100%;
                    left: 50%;
                    margin-left: -5px;
                    margin-top: 0px;
                }

        .form-check-label {
            margin-bottom: 0px;
        }

        .form-group {
            margin-bottom: 0px;
        }

        .toggle-on.btn, .btn-primary, .btn-primary.disabled, .btn-primary, .btn-primary.disabled {
            box-shadow: 0 2px 6px #40bd92;
            background-color: #40bd92;
            border-color: #40bd92;
        }

            .btn-primary, .btn-primary.disabled {
                box-shadow: 0 2px 6px #40bd92;
                background-color: #40bd92;
                border-color: #40bd92;
            }

        .toggle-off.btn {
            padding-left: 24px;
            background-color: #d19734;
        }

        .btn-primary:active, .btn-primary:hover, .btn-primary.disabled:active, .btn-primary.disabled:hover {
            background-color: #40bd92 !important;
            border-color: #40bd92 !important;
        }

        .btn-primary:active, .btn-primary:hover, .btn-primary.disabled:active, .btn-primary.disabled:hover {
            color: #fff;
            background-color: #40bd92 !important;
            border-color: #40bd92 !important;
        }

        .btn-primary:not(:disabled):not(.disabled).active, .btn-primary:not(:disabled):not(.disabled):active, .show > .btn-primary.dropdown-toggle {
            color: #fff;
            background-color: #40bd92 !important;
            border-color: #40bd92 !important;
        }

        .w3-border-red, .w3-hover-border-red:hover {
            border-color: #78828a !important;
            color: #78828a;
        }
    </style>
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
                                    <!-- Tabs navs -->
                                    <section>


                                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                                            <li class="nav-item ">
                                                <a class="nav-link active" id="pole-tab" data-toggle="tab" href="#pole" role="tab" aria-controls="pole" aria-selected="true">Pole Info</a>

                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link " id="lamp-tab" data-toggle="tab" href="#lamp" role="tab" aria-controls="lamp" aria-selected="false">Lamp Info</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content" id="myTabContent">
                                            <div class="tab-pane fade active show" id="pole" role="tabpanel" aria-labelledby="home-tab">
                                                <div class="col-md-12">
                                                    <h4 class="alignheading"><span>Pole Information   </span>
                                                    </h4>
                                                    <!--Section: Block Content-->


                                                    <p data-placement="top" data-toggle="Ad Project" title="Add" style="float: right; float: right; display: inline-flex; margin-bottom: 15px;">
                                                        <div class="dropdown">
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="#">Filter 1</a>
                                                                <a class="dropdown-item" href="#">Filter 2</a>
                                                                <a class="dropdown-item" href="#">Filter 3</a>
                                                            </div>
                                                        </div>
                                                        <button type="button" class="btn btn-Custom0 btn-xs fa-pull-right" data-toggle="modal" data-target="#myModal1" style="margin-right: 5px;">Add Multiple Pole <i class="fas fa-plus"></i></button>
                                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" data-title="Edit" data-toggle="modal" data-target="#addPole" style="margin-right: 5px;">Add Pole <i class="fas fa-plus"></i></a>
                                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>

                                                    </p>
                                                    <div class="table-responsive">
                                                        <table id="mytable" class="table table-bordred table-striped">
                                                            <thead>
                                                                <th>
                                                                    <div class="dropdown">
                                                                        <a class="" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-ellipsis-v"></i>
                                                                        </a>
                                                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#mapPoletoRoad" onclick="mapPoleandLamps(0);">Map Pole to Road</a>
                                                                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#deletepole" onclick="ChangeContent(0);">Delete</a>

                                                                        </div>
                                                                    </div>
                                                                </th>
                                                                <th>Serial No</th>

                                                                <th>Project</th>
                                                                <th>Site</th>
                                                                <th>Road</th>
                                                                <th>Pole Name</th>
                                                                <th>Latitude</th>
                                                                <th>Longitude</th>

                                                                <th>Lamp Post Materials</th>
                                                                <th>Lamp-Post Diameter(mm)</th>

                                                                <th>Lamp-post Length(m)</th>
                                                                <th>Lamp-post Type</th>

                                                                <th>Edit</th>

                                                                <th>Delete</th>

                                                            </thead>
                                                            <tbody>

                                                                <tr>
                                                                    <td>
                                                                        <input type="checkbox" class="" /></td>
                                                                    <td>JSP001</td>
                                                                    <td>Anna Univ</td>
                                                                    <td>Guindy</td>
                                                                    <td>Entrance</td>
                                                                    <td>Pole 1</td>
                                                                    <td>75.2635 N</td>


                                                                    <td>56.5464 E</td>

                                                                    <td>Steel</td>
                                                                    <td>300mm</td>
                                                                    <td>12m</td>
                                                                    <td>Streetlight</td>

                                                                    <td>
                                                                        <p data-placement="top" data-toggle="tooltip" title="Edit">
                                                                            <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#addPole"><i class="fas fa-edit"></i></a>
                                                                        </p>
                                                                    </td>
                                                                    <td>
                                                                        <p data-placement="top" data-toggle="tooltip" title="Delete">
                                                                            <a href="#" class="btn btn-Custom1 btn-xs" data-title="Delete" data-toggle="modal" data-target="#deletepole" onclick="ChangeContent(1);"><i class="fas fa-trash"></i></a>
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                            </tbody>

                                                        </table>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="tab-pane fade " id="lamp" role="tabpanel" aria-labelledby="contact-tab">
                                                <div class="col-md-12">
                                                    <h4 class="alignheading"><span>Lamp Information   </span>
                                                    </h4>
                                                    <!--Section: Block Content-->

                                                    <p data-placement="top" data-toggle="Ad Project" title="Add" style="float: right; float: right; display: inline-flex; margin-bottom: 15px;">
                                                        <div class="dropdown">
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="#">Filter 1</a>
                                                                <a class="dropdown-item" href="#">Filter 2</a>
                                                                <a class="dropdown-item" href="#">Filter 3</a>
                                                            </div>
                                                        </div>
                                                        <button type="button" class="btn btn-Custom0 btn-xs  fa-pull-right" data-toggle="modal" data-target="#myModal1" style="margin-right: 5px;">Add Multiple Lamp <i class="fas fa-plus"></i></button>
                                                        <a href="#" class="btn btn-Custom0 btn-xs  fa-pull-right" data-title="Edit" data-toggle="modal" data-target="#addlamp" style="margin-right: 5px;">Add Lamp <i class="fas fa-plus"></i></a>
                                                        <a href="#" class="btn btn-Custom0 btn-xs fa-pull-right" id="dropdownMenuButton2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 5px; margin-bottom: 10px;"><i class="fas fa-filter"></i></a>
                                                    </p>
                                                    <div class="table-responsive">
                                                        <table id="mytable" class="table table-bordred table-striped">
                                                            <thead>
                                                                <th>
                                                                    <div class="dropdown">
                                                                        <a class="" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-ellipsis-v"></i>
                                                                        </a>
                                                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#lampinfo">Brightness</a>
                                                                            <a class="dropdown-item" href="#">Group</a>
                                                                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#mapPoletoRoad" onclick="mapPoleandLamps(1);">Map Lamp to Pole</a>
                                                                        
                                                                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#deletelamp" onclick="ChangeContentLamp(0);">Delete</a>
                                                                        
                                                                        </div>
                                                                    </div>
                                                                </th>
                                                                <th>Project</th>
                                                                <th>Site</th>
                                                                <th>Road</th>
                                                                <th>MAC ID</th>
                                                                <th>Pole Name</th>
                                                                <th>Light Type</th>
                                                                <th>Equipment Type</th>
                                                                <%--<th>Load Type</th>--%>
                                                                <%--<th>Load Power(W)</th>--%>
                                                                <th>Network</th>
                                                                <%--<th>Protocol Type</th>--%>
                                                                <th>Wireless Module Address</th>
                                                                <%--<th>Battery Type</th>--%>
                                                                <%--<th>Protocol Type</th>--%>
                                                                <th>Battery Capacity(Ah)</th>
                                                                <%--<th>Solar Panel Type</th>--%>
                                                                <%--<th>Solar Panel Power(W)</th>--%>
                                                                <th>Edit</th>

                                                                <th>Delete</th>

                                                            </thead>
                                                            <tbody>

                                                                <tr>
                                                                    <td>
                                                                        <input type="checkbox" class="" /></td>
                                                                    <td>Anna Univ</td>
                                                                    <td>Guindy</td>
                                                                    <td>Entrance</td>
                                                                    <td>JL454354S</td>
                                                                    <td>Pole 1</td>
                                                                    <td>LED</td>
                                                                    <td>Solar</td>
                                                                    <td>LoRa</td>
                                                                    <td>10.46.565.45</td>
                                                                    <td>100</td>

                                                                    <td>
                                                                        <p data-placement="top" data-toggle="tooltip" title="Edit">
                                                                            <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#addlamp"><i class="fas fa-edit"></i></a>
                                                                        </p>
                                                                    </td>
                                                                    <td>
                                                                        <p data-placement="top" data-toggle="tooltip" title="Delete">
                                                                            <a href="#" class="btn btn-Custom1 btn-xs" data-title="Delete" data-toggle="modal" data-target="#deletelamp" onclick="ChangeContentLamp(1);"><i class="fas fa-trash"></i></a>
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                                  <tr>
                                                                    <td>
                                                                        <input type="checkbox" class="" /></td>
                                                                     <td>Anna Univ</td>
                                                                    <td>Guindy</td>
                                                                    <td>Entrance</td>
                                                                    <td>JL645645S</td>
                                                                    <td>Pole 2</td>
                                                                    <td>LED</td>
                                                                    <td>Solar</td>
                                                                    <td>LoRa</td>
                                                                    <td>10.46.565.45</td>
                                                                    <td>100</td>

                                                                    <td>
                                                                        <p data-placement="top" data-toggle="tooltip" title="Edit">
                                                                            <a href="#" class="btn btn-Custom0 btn-xs" data-title="Edit" data-toggle="modal" data-target="#addlamp"><i class="fas fa-edit"></i></a>
                                                                        </p>
                                                                    </td>
                                                                    <td>
                                                                        <p data-placement="top" data-toggle="tooltip" title="Delete">
                                                                            <a href="#" class="btn btn-Custom1 btn-xs" data-title="Delete" data-toggle="modal" data-target="#deletelamp" onclick="ChangeContentLamp(1);"><i class="fas fa-trash"></i></a>
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
                                    <!-- Tabs content -->



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
        <div class="modal fade" id="addPole" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="Headings">Add Pole</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>

                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Serial No" />
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Site</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Pole Name" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Longitude" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Lamp-Post Diameter(mm)" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Lamp-post Type" />
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Project </option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Road </option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Latitude" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Lamp Post Materials" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Lamp-post Length(m)" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalcenter">
                        <button type="button" class="btn btn-Custom0 " data-dismiss="modal">Add <i class="fas fa-plus" aria-hidden="true"></i></button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <div class="modal fade" id="deletepole" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">

                        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>
                    </div>
                    <div class="modal-body">
                        <p id="delBody">Are you sure you want to delete this Pole Details?</p>

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

        <div class="modal fade" id="addlamp" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align">Add Lamp</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>

                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="MAC ID" />
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Site</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Pole</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Equipment Type" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Load Power(W)" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Protocol Type" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Battery Type" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Solar Panel Type" />
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Project</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Road</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option>Select Light Type</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Load Type" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Network *" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Wireless Module Address *" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Battery Capacity(Ah)" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control " type="text" placeholder="Solar Panel Power(W)" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalcenter">
                        <button type="button" class="btn btn-Custom0 " data-dismiss="modal">Add <i class="fa fa-plus" aria-hidden="true"></i></button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <div class="modal fade" id="mapPoletoRoad" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="mappolelampHeader">Map</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>
                    </div>
                    <div class="modal-body">

                        <div class="form-group">
                            <%--<label class="form-check-label">Project</label>--%>
                      
                            <select class="form-control">
                                <option>Select Project</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <%--<label class="form-check-label">Road</label>--%>
                       
                            <select class="form-control">
                                <option>Select Road</option>
                            </select>
                            </div>
                            <div class="form-group">
                         <%--       <label class="form-check-label">Road</label>--%>
                           
                            <select class="form-control">
                                <option>Select Site</option>
                            </select>
                        </div>
                           <div class="form-group" id="selectPole">
                         <%--       <label class="form-check-label">Road</label>--%>
                           
                            <select class="form-control">
                                <option>Select Pole</option>
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
        <div class="modal fade" id="lampinfo" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align">Modify Brightness</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="form-check-label" >Brightness</label>
                                </div>
                                <div class="form-group">
                                    <label class="form-check-label" >Override Profile</label>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group" style="display: inline-flex; width: 100%;">
                                    <div class="slidecontainer" style="display: inline-flex; width: 100%;">                                        
                                        <input type="range" min="0" max="100" value="50" class="slider" id="dimslider" />
                                        <p style="margin-bottom: 0px; margin-top: 0px; margin-left: 10px;"><span id="dimvalue"></span></p>
                                    </div>
                                </div>
                                <div class="form-group" style="display: inline-flex; width: 100%;">
                                    <div class="slidecontainer" style="display: inline-flex; width: 100%;">                                       
                                        <div class="form-check form-switch" style="display: contents;">
                                            <input type="checkbox" id="switch3" class="checkbox" />
                                            <label for="switch3" class="toggle"></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
        <div class="modal fade" id="deletelamp" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align">Delete this entry</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>

                    </div>
                    <div class="modal-body">
                        <p id="deleteLamp">
                        Are you sure you want to delete this Lamp Details?</p>

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

        <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel">Upload your CSV</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                    </div>
                    <div class="modal-body">
                        <h6 class="modal-title custom_align">Upload the CSV file with the Lamp info you want to import</h6>
                        <br />
                        <h6 class="modal-title custom_align">Your file must follow the CSV form.Don't have it? </h6>
                        <a href="#">Download CSV template</a>
                        <br />
                        <div class="form-group">
                            <div style="position: relative; display: inline-flex">
                                <a class='btn btn-Custom0' href='javascript:;'>Choose File...
            <input type="file" id="fileupload" style='position: absolute; z-index: 2; top: 0; left: 0; filter: alpha(opacity=0); -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)"; opacity: 0; background-color: transparent; color: transparent;' name="file_source" size="40" onchange="enableControl();">
                                </a>
                                &nbsp;
        <span class='label label-info' id="upload-file-info" style="padding-top: 10px; padding-right: 10px;"></span>
                                <button type="button" class="close" id="btnclose" onclick="resetFile();" style="display: none;"><span aria-hidden="true">&times;</span></button>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">

                        <button type="button" class="btn btn-Custom0 btn-next">Continue</button>
                        <button type="button" class="btn btn-Custom0" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal  Popup 2 -->
        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel1">CSV File Report</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                    </div>
                    <div class="modal-body">
                        <h6>Review the results of your file upload and fix anything that needs attention</h6>
                        <table id="mytable" class="table table-bordred table-striped">
                            <thead>
                                <th>Items</th>
                                <th>Number of Items</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>New Poles</td>
                                    <td>4</td>
                                </tr>
                                <tr>
                                    <td>Existing Poles</td>
                                    <td>4</td>
                                </tr>
                                <tr style="background-color: #f5f5f5;">
                                    <td>Total</td>
                                    <td>4</td>
                                </tr>
                                <tr>
                                    <td>Poles to Import</td>
                                    <td>4</td>
                                </tr>

                            </tbody>
                        </table>

                    </div>
                    <div class="modal-footer">

                        <button type="button" class="btn btn-Custom0 btn-next">Import Pole</button>
                        <%--<button type="button" class="btn btn-default btn-prev">Prev</button>--%>
                        <button type="button" class="btn btn-Custom0" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal  Popup 3 -->
        <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel">Completed</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                    </div>
                    <div class="modal-body">
                        <h4>Import Complete</h4>
                        <h6>Filter by "Last Imported" to see the pole you've just imported to your Inventory.</h6>
                    </div>
                    <div class="modal-footer">
                        <%--<button type="button" class="btn btn-default btn-prev">Prev</button>--%>
                        <button type="button" class="btn btn-Custom0 btn-next" style="text-align: center">Done !</button>
                        <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
                    </div>
                </div>
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
    <script>
        $("div[id^='myModal']").each(function () {

            var currentModal = $(this);

            //click next
            currentModal.find('.btn-next').click(function () {
                currentModal.modal('hide');
                currentModal.closest("div[id^='myModal']").nextAll("div[id^='myModal']").first().modal('show');
            });

            //click prev
            currentModal.find('.btn-prev').click(function () {
                currentModal.modal('hide');
                currentModal.closest("div[id^='myModal']").prevAll("div[id^='myModal']").first().modal('show');
            });

        });
        function enableControl() {
            var html = $("#fileupload").val();
            $("#upload-file-info").html(html);
            document.getElementById("btnclose").style.display = "block";
        }
        function resetFile() {
            $("#fileupload").val('');
            $("#upload-file-info").val('');
            document.getElementById("upload-file-info").innerHTML = "";
        }
      
    </script>
</body>
</html>
