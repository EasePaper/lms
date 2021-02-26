<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CtrlMgmt.aspx.cs" Inherits="CtrlMgmt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Dashboard &mdash; LMS</title>

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
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>


    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/highcharts-more.js"></script>
    <script src="https://code.highcharts.com/modules/solid-gauge.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>

    <script src="Custom-js/CtrlMgmt.js"></script>

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




            var slider = document.getElementById("motionsensor");
            var output = document.getElementById("MotionValue");
            output.innerHTML = slider.value;

            slider.oninput = function () {
                output.innerHTML = this.value;
            }

            var motiontimeslider = document.getElementById("motiontimeslider");
            var MotionTime = document.getElementById("MotionTime");
            MotionTime.innerHTML = motiontimeslider.value;

            motiontimeslider.oninput = function () {
                MotionTime.innerHTML = this.value;
            }

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

    </script>
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
    <style>
        .highcharts-figure, .highcharts-data-table table {
            min-width: 310px;
            max-width: 800px;
            margin: 1em auto;
        }

        .highcharts-data-table table {
            font-family: Verdana, sans-serif;
            border-collapse: collapse;
            border: 1px solid #EBEBEB;
            margin: 10px auto;
            text-align: center;
            width: 100%;
            max-width: 500px;
        }

        .highcharts-data-table caption {
            padding: 1em 0;
            font-size: 1.2em;
            color: #555;
        }

        .highcharts-data-table th {
            font-weight: 600;
            padding: 0.5em;
        }

        .highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
            padding: 0.5em;
        }

        .highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
            background: #f8f8f8;
        }

        .highcharts-data-table tr:hover {
            background: #f1f7ff;
        }

        #button-bar {
            min-width: 310px;
            max-width: 800px;
            margin: 0 auto;
        }

        .highcharts-figure, .highcharts-data-table table {
            min-width: 380px;
            max-width: 600px;
            margin: 0 auto;
        }

        .highcharts-data-table table {
            font-family: Verdana, sans-serif;
            border-collapse: collapse;
            border: 1px solid #EBEBEB;
            margin: 10px auto;
            text-align: center;
            width: 100%;
            max-width: 500px;
        }

        .highcharts-data-table caption {
            padding: 1em 0;
            font-size: 1.2em;
            color: #555;
        }

        .highcharts-data-table th {
            font-weight: 600;
            padding: 0.5em;
        }

        .highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
            padding: 0.5em;
        }

        .highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
            background: #f8f8f8;
        }

        .highcharts-data-table tr:hover {
            background: #f1f7ff;
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

                <script>
                    function openCity(evt, cityName) {
                        var i, x, tablinks;
                        x = document.getElementsByClassName("city");
                        for (i = 0; i < x.length; i++) {
                            x[i].style.display = "none";
                        }
                        tablinks = document.getElementsByClassName("tablink");
                        for (i = 0; i < x.length; i++) {
                            tablinks[i].className = tablinks[i].className.replace(" w3-border-red", "");
                        }
                        document.getElementById(cityName).style.display = "block";
                        evt.currentTarget.firstElementChild.className += " w3-border-red";
                    }
                </script>

                <!-- Main Content -->
                <div class="main-content">
                    <div class="w3-row">
                        <a href="javascript:void(0)" onclick="openCity(event, 'Console');">
                            <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Console</div>
                        </a>
                        <a href="javascript:void(0)" onclick="openCity(event, 'Dimming');">
                            <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Dimming Profile</div>
                        </a>
                      <%--  <a href="javascript:void(0)" onclick="openCity(event, 'Batching');">
                            <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Batching</div>
                        </a>--%>
                    </div>

                    <div id="Console" class="w3-container city" style="display: none">
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



                                            <p class="text-uppercase text-muted small mb-2"><strong>Ticket Info</strong></p>

                                            <h5 class="font-weight-bold text-muted mb-0">15
                                            </h5>



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
                                            <h5 class="font-weight-bold text-muted mb-0">186</h5>
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
                            <!--Grid row-->

                            <div class="row">
                                <div class="col-lg-4 col-md-12 mb-4">


                                    <figure class="highcharts-figure">
                                        <div id="container"></div>

                                    </figure>
                                    <!-- Card -->

                                </div>
                                <div class="col-lg-4 col-md-12 mb-4">


                                    <figure class="highcharts-figure">
                                        <div id="containerpie"></div>

                                    </figure>
                                    <!-- Card -->

                                </div>
                                <div class="col-lg-4 col-md-12 mb-4">


                                    <figure class="highcharts-figure">
                                        <div id="containeractivity"></div>

                                    </figure>
                                    <!-- Card -->

                                </div>
                                <script>
                                    var chart = Highcharts.chart('container', {

                                        chart: {
                                            type: 'column'
                                        },

                                        title: {
                                            text: 'LMS Status chart'
                                        },

                                        subtitle: {
                                            text: 'Resize the frame or click buttons to change appearance'
                                        },

                                        legend: {
                                            align: 'right',
                                            verticalAlign: 'middle',
                                            layout: 'vertical'
                                        },

                                        xAxis: {
                                            categories: ['Apples', 'Oranges', 'Bananas'],
                                            labels: {
                                                x: -10
                                            }
                                        },

                                        yAxis: {
                                            allowDecimals: false,
                                            title: {
                                                text: 'Amount'
                                            }
                                        },

                                        series: [{
                                            name: 'Christmas Eve',
                                            data: [1, 4, 3]
                                        }, {
                                            name: 'Christmas Day before dinner',
                                            data: [6, 4, 2]
                                        }, {
                                            name: 'Christmas Day after dinner',
                                            data: [8, 4, 3]
                                        }],

                                        responsive: {
                                            rules: [{
                                                condition: {
                                                    maxWidth: 500
                                                },
                                                chartOptions: {
                                                    legend: {
                                                        align: 'center',
                                                        verticalAlign: 'bottom',
                                                        layout: 'horizontal'
                                                    },
                                                    yAxis: {
                                                        labels: {
                                                            align: 'left',
                                                            x: 0,
                                                            y: -5
                                                        },
                                                        title: {
                                                            text: null
                                                        }
                                                    },
                                                    subtitle: {
                                                        text: null
                                                    },
                                                    credits: {
                                                        enabled: false
                                                    }
                                                }
                                            }]
                                        }
                                    });

                                    Highcharts.setOptions({
                                        colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
                                            return {
                                                radialGradient: {
                                                    cx: 0.5,
                                                    cy: 0.3,
                                                    r: 0.7
                                                },
                                                stops: [
                                                    [0, color],
                                                    [1, Highcharts.color(color).brighten(-0.3).get('rgb')] // darken
                                                ]
                                            };
                                        })
                                    });

                                    // Build the chart
                                    Highcharts.chart('containerpie', {
                                        chart: {
                                            plotBackgroundColor: null,
                                            plotBorderWidth: null,
                                            plotShadow: false,
                                            type: 'pie'
                                        },
                                        title: {
                                            text: 'Tickets Info'
                                        },
                                        tooltip: {
                                            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                                        },
                                        accessibility: {
                                            point: {
                                                valueSuffix: '%'
                                            }
                                        },
                                        plotOptions: {
                                            pie: {
                                                allowPointSelect: true,
                                                cursor: 'pointer',
                                                dataLabels: {
                                                    enabled: false,
                                                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                                    connectorColor: 'silver'
                                                }
                                            }
                                        }, credits: {
                                            enabled: false
                                        },
                                        series: [{
                                            name: 'Share',
                                            data: [
                                                { name: 'Chrome', y: 61.41 },
                                                { name: 'Internet Explorer', y: 11.84 },
                                                { name: 'Firefox', y: 10.85 },
                                                { name: 'Edge', y: 4.67 },
                                                { name: 'Safari', y: 4.18 },
                                                { name: 'Other', y: 7.05 }
                                            ]
                                        }]
                                    });


                                    function renderIcons() {

                                        // Move icon
                                        if (!this.series[0].icon) {
                                            this.series[0].icon = this.renderer.path(['M', -8, 0, 'L', 8, 0, 'M', 0, -8, 'L', 8, 0, 0, 8])
                                                .attr({
                                                    stroke: '#303030',
                                                    'stroke-linecap': 'round',
                                                    'stroke-linejoin': 'round',
                                                    'stroke-width': 2,
                                                    zIndex: 10
                                                })
                                                .add(this.series[2].group);
                                        }
                                        this.series[0].icon.translate(
                                            this.chartWidth / 2 - 10,
                                            this.plotHeight / 2 - this.series[0].points[0].shapeArgs.innerR -
                                            (this.series[0].points[0].shapeArgs.r - this.series[0].points[0].shapeArgs.innerR) / 2
                                        );

                                        // Exercise icon
                                        if (!this.series[1].icon) {
                                            this.series[1].icon = this.renderer.path(
                                                ['M', -8, 0, 'L', 8, 0, 'M', 0, -8, 'L', 8, 0, 0, 8,
                                                    'M', 8, -8, 'L', 16, 0, 8, 8]
                                            )
                                                .attr({
                                                    stroke: '#ffffff',
                                                    'stroke-linecap': 'round',
                                                    'stroke-linejoin': 'round',
                                                    'stroke-width': 2,
                                                    zIndex: 10
                                                })
                                                .add(this.series[2].group);
                                        }
                                        this.series[1].icon.translate(
                                            this.chartWidth / 2 - 10,
                                            this.plotHeight / 2 - this.series[1].points[0].shapeArgs.innerR -
                                            (this.series[1].points[0].shapeArgs.r - this.series[1].points[0].shapeArgs.innerR) / 2
                                        );

                                        // Stand icon
                                        if (!this.series[2].icon) {
                                            this.series[2].icon = this.renderer.path(['M', 0, 8, 'L', 0, -8, 'M', -8, 0, 'L', 0, -8, 8, 0])
                                                .attr({
                                                    stroke: '#303030',
                                                    'stroke-linecap': 'round',
                                                    'stroke-linejoin': 'round',
                                                    'stroke-width': 2,
                                                    zIndex: 10
                                                })
                                                .add(this.series[2].group);
                                        }

                                        this.series[2].icon.translate(
                                            this.chartWidth / 2 - 10,
                                            this.plotHeight / 2 - this.series[2].points[0].shapeArgs.innerR -
                                            (this.series[2].points[0].shapeArgs.r - this.series[2].points[0].shapeArgs.innerR) / 2
                                        );
                                    }

                                    Highcharts.chart('containeractivity', {

                                        chart: {
                                            type: 'solidgauge',
                                            height: '110%',
                                            events: {
                                                render: renderIcons
                                            }
                                        },

                                        title: {
                                            text: 'Activity',
                                            style: {
                                                fontSize: '24px'
                                            }
                                        },

                                        tooltip: {
                                            borderWidth: 0,
                                            backgroundColor: 'none',
                                            shadow: false,
                                            style: {
                                                fontSize: '16px'
                                            },
                                            valueSuffix: '%',
                                            pointFormat: '{series.name}<br><span style="font-size:2em; color: {point.color}; font-weight: bold">{point.y}</span>',
                                            positioner: function (labelWidth) {
                                                return {
                                                    x: (this.chart.chartWidth - labelWidth) / 2,
                                                    y: (this.chart.plotHeight / 2) + 15
                                                };
                                            }
                                        },

                                        pane: {
                                            startAngle: 0,
                                            endAngle: 360,
                                            background: [{ // Track for Move
                                                outerRadius: '112%',
                                                innerRadius: '88%',
                                                backgroundColor: Highcharts.color(Highcharts.getOptions().colors[0])
                                                    .setOpacity(0.3)
                                                    .get(),
                                                borderWidth: 0
                                            }, { // Track for Exercise
                                                outerRadius: '87%',
                                                innerRadius: '63%',
                                                backgroundColor: Highcharts.color(Highcharts.getOptions().colors[1])
                                                    .setOpacity(0.3)
                                                    .get(),
                                                borderWidth: 0
                                            }, { // Track for Stand
                                                outerRadius: '62%',
                                                innerRadius: '38%',
                                                backgroundColor: Highcharts.color(Highcharts.getOptions().colors[2])
                                                    .setOpacity(0.3)
                                                    .get(),
                                                borderWidth: 0
                                            }]
                                        }, credits: {
                                            enabled: false
                                        },

                                        yAxis: {
                                            min: 0,
                                            max: 100,
                                            lineWidth: 0,
                                            tickPositions: []
                                        },

                                        plotOptions: {
                                            solidgauge: {
                                                dataLabels: {
                                                    enabled: false
                                                },
                                                linecap: 'round',
                                                stickyTracking: false,
                                                rounded: true
                                            }
                                        },

                                        series: [{
                                            name: 'Light',
                                            data: [{
                                                color: Highcharts.getOptions().colors[0],
                                                radius: '112%',
                                                innerRadius: '88%',
                                                y: 80
                                            }]
                                        }, {
                                            name: 'Pole',
                                            data: [{
                                                color: Highcharts.getOptions().colors[1],
                                                radius: '87%',
                                                innerRadius: '63%',
                                                y: 65
                                            }]
                                        }, {
                                            name: 'Enery Saver',
                                            data: [{
                                                color: Highcharts.getOptions().colors[2],
                                                radius: '62%',
                                                innerRadius: '38%',
                                                y: 50
                                            }]
                                        }]
                                    });
                                </script>

                            </div>
                            <div class="row">
                                <select class="form-control col-lg-2 col-md-2 mb-6" style="margin-right: 5px;">
                                    <option>Select Project </option>
                                </select>
                                <select class="form-control col-lg-2 col-md-2 mb-6" style="margin-right: 5px;">
                                    <option>Select Site </option>
                                </select>
                                <select class="form-control col-lg-2 col-md-2 mb-6" style="margin-right: 5px;">
                                    <option>Select Group </option>
                                </select>

                                <select class="form-control col-lg-2 col-md-2 mb-6" style="margin-right: 5px;">
                                    <option>Select Status </option>
                                </select>

                                <select class="form-control col-lg-2 col-md-2 mb-6" style="margin-right: 5px;">
                                    <option>Select Filter </option>
                                </select>
                            </div>
                            <br />
                            <div class="row">
                                <table class="table table-responsive">
                                    <thead>
                                        <tr>
                                            <th>
                                                <div class="dropdown">
                                                    <a class="" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-ellipsis-v"></i>
                                                    </a>
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                        <a class="dropdown-item" href="#">Brightness</a>
                                                        <a class="dropdown-item" href="#">Group</a>
                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#tablemodal" onclick="ChangeContentModal(0);">Reset</a>
                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#tablemodal" onclick="ChangeContentModal(1);">Restart</a>
                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#tablemodal" onclick="ChangeContentModal(2);">Delete</a>
                                                    </div>
                                                </div>
                                            </th>
                                            <th>Lamp</th>
                                            <th>Area</th>
                                            <th>Road</th>
                                            <th>Voltage</th>
                                            <th>Current	Power</th>
                                            <th>Lighting Time</th>
                                            <th>Current Str</th>
                                            <th>Wireless module Address</th>
                                            <th>Terminal time</th>

                                            <th>Online/Offline</th>
                                            <th>Brightness</th>
                                            <th>Group Name</th>
                                            <th>Status</th>
                                            <th>Motion Sensor</th>
                                            <th>Motion Brightness</th>
                                            <th>Motion Duration	Status</th>
                                            <th>Last Reset</th>
                                            <th>Last Restart</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" class="" /></td>
                                            <td>SL001</td>

                                            <td>Guindy</td>
                                            <td>Main</td>
                                            <td>5V</td>
                                            <td>5amp</td>
                                            <td>2 hrs</td>
                                            <td>-</td>
                                            <td>LoRa</td>
                                            <td>06:00AM</td>
                                            <td>Online</td>
                                            <td>30%</td>
                                            <td>East Block</td>
                                            <td>Active</td>
                                            <td>On</td>
                                            <td>90%</td>
                                            <td>15s</td>
                                            <td>Today</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" class="" /></td>
                                            <td>SL002</td>

                                            <td>Guindy</td>
                                            <td>Main</td>
                                            <td>5V</td>
                                            <td>5amp</td>
                                            <td>3 hrs</td>
                                            <td>-</td>
                                            <td>LoRa</td>
                                            <td>05:45AM</td>
                                            <td>Online</td>
                                            <td>35%</td>
                                            <td>East Block</td>
                                            <td>Active</td>
                                            <td>On</td>
                                            <td>90%</td>
                                            <td>15s</td>
                                            <td>Today</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" class="" /></td>
                                            <td>SL003</td>

                                            <td>Guindy</td>
                                            <td>Main</td>
                                            <td>5V</td>
                                            <td>5amp</td>
                                            <td>6 hrs</td>
                                            <td>-</td>
                                            <td>LoRa</td>
                                            <td>06:00AM</td>
                                            <td>Online</td>
                                            <td>50%</td>
                                            <td>East Block</td>
                                            <td>Active</td>
                                            <td>On</td>
                                            <td>100%</td>
                                            <td>30s</td>
                                            <td>Today</td>
                                            <td>-</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </section>

                    </div>

                    <div id="Dimming" class="w3-container city" style="display: none">
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-md-2">
                                <aside id="sidebar-wrapper">
                                    <ul class="sidebar-menu" style="list-style: none;">
                                        <li class="menu-header">Profiles <a href="#" style="float: right; color: #00e500;"><i class="fas fa-plus"></i></a></li>
                                        <li class="nav-item active"><a href="#" class="nav-link"><span>Default</span></a> </li>

                                    </ul>
                                </aside>
                            </div>
                            <div class="col-md-5">
                                <h4 class="alignheading"><span>Profile</span>
                                </h4>
                                <div class="panel panel-default" style="margin-top: 40px;">
                                    <div class="panel-body">
                                        <div>
                                            <div class="form-group">
                                                <input class="form-control isrequired " type="text" placeholder="Profile Name" />
                                            </div>
                                            <div class="form-group">
                                                <select class="form-control">
                                                    <option>Select Group</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label class="form-check-label" style="margin-bottom: 0px !important;">
                                                    Start Date</label>
                                                <input class="form-control " type="date" />
                                            </div>
                                            <div class="form-group">
                                                <label class="form-check-label" style="margin-bottom: 0px !important;">
                                                    Start Time</label>
                                                <input class="form-control " type="time" required />
                                            </div>
                                            <div class="form-group">
                                                <label class="form-check-label" style="margin-bottom: 0px !important;">
                                                    End Date</label>
                                                <input class="form-control " type="date" />
                                            </div>
                                            <div class="form-group">
                                                <label class="form-check-label" style="margin-bottom: 0px !important;">
                                                    End Time</label>
                                                <input class="form-control " type="time" />
                                            </div>
                                        </div>

                                        <div class="form-group" style="display: flex; padding-top: 5px;">
                                            <label class="form-check-label" for="motion" style="margin-bottom: 0px !important; font-weight: 600; font-size: 15px;">
                                                Motion Sensor</label>
                                            <div class="form-check form-switch">
                                                <center> 
                                                <input type="checkbox" id="switch" 
						class="checkbox"  onchange="motionSensor()" /> 
                                                    <label for="switch" class="toggle"> 
                                                    </label>
                                                </center>
                                            </div>

                                        </div>
                                        <div id="motionsensordiv" style="border-style: solid; border-color: #f1f1f1; padding: 5px; border-width: 3px; border-radius: 5px">
                                            <div class="form-group">
                                                <div class="slidecontainer" style="display: inline-flex; width: 100%;">
                                                    <label class="form-check-label" style="width: 40%">
                                                        Dimming Level</label>

                                                    <input type="range" min="1" max="100" value="50" class="slider" id="motionsensor" />
                                                    <p style="text-align: center; margin-bottom: 0px; margin-top: 0px; margin-left: 10px;"><span id="MotionValue"></span></p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="slidecontainer" style="display: inline-flex; width: 100%;">
                                                    <label class="form-check-label" style="width: 40%">
                                                        Duration (secs)</label>
                                                    <input type="range" min="0" max="300" value="50" class="slider" id="motiontimeslider" />
                                                    <p style="text-align: center; margin-bottom: 0px; margin-top: 0px; margin-left: 10px;"><span id="MotionTime"></span></p>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>




                            <div class="col-md-5">
                                <div class="panel panel-default">
                                    <div class="panel-body" style="padding-top: 20px;">
                                        <div class="form-group" style="display: inline-flex; width: 100%">
                                            <h5 class="alignheading"><span>Dimming</span>
                                            </h5>
                                            <div style="text-align: end; width: 100%">
                                                <label class="form-check-label " style="font-weight: 600; font-size: 15px; padding-right: 15px;">
                                                    Activate</label>

                                                <center style="float: right"> 
        <input type="checkbox" id="switch1"
                    class="checkbox" /> 
        <label for="switch1" class="toggle"> 
        </label> 
    </center>
                                            </div>
                                        </div>
                                        <div class="form-group" style="display: inline-flex; width: 100%;">

                                            <div class="slidecontainer" style="display: inline-flex; width: 100%;">
                                                <label class="form-check-label" style="width: 40%">
                                                    Brightness</label>
                                                <input type="range" min="0" max="100" value="50" class="slider" id="dimslider" />
                                                <p style="margin-bottom: 0px; margin-top: 0px; margin-left: 10px;"><span id="dimvalue"></span></p>
                                            </div>
                                        </div>

                                        <div class="form-group" style="display: inline-flex; width: 100%;">
                                            <label class="form-check-label " for="motion" style="padding-right: 15px;">
                                                Energy Saver</label>
                                            <div class="form-check form-switch" style="width: 100%; display: contents;">
                                                <input type="checkbox" id="switch3"
                                                    class="checkbox" onchange="energySaver()" />
                                                <label for="switch3" class="toggle">
                                                </label>
                                            </div>
                                        </div>

                                    </div>
                                    <div id="energySaver" style="border-style: solid; border-color: #f1f1f1; padding: 5px; border-width: 3px; border-radius: 5px">
                                        <div class="form-group" style="margin-bottom: auto;">
                                            <label class="form-check-label col-md-3 col-lg-3">
                                                Time</label>
                                            <span class="col-md-1 col-lg-1"></span>
                                            <label class="form-check-label col-md-3 col-lg-3 ">
                                                Lamp</label>
                                            <label class="form-check-label col-md-3 col-lg-3">
                                                Offset(mins)</label>

                                        </div>
                                        <div class="form-group" style="display: inline-flex; width: 100%;">
                                            <input class="form-control col-md-3 col-lg-3" type="time" />
                                            <span class="col-md-1 col-lg-1"></span>
                                            <input class="form-control col-md-2 col-lg-2" type="number" style="padding-left: 10px;" />
                                            <span class="col-md-1 col-lg-1"></span>
                                            <input class="form-control col-md-2 col-lg-2" type="number" style="padding-left: 10px; margin-left: 20px;" />
                                        </div>
                                        <div class="form-group" style="display: inline-flex; width: 100%;">
                                            <input class="form-control col-md-3 col-lg-3" type="time" />
                                            <span class="col-md-1 col-lg-1"></span>
                                            <input class="form-control col-md-2 col-lg-2" type="number" style="padding-left: 10px;" />
                                            <span class="col-md-1 col-lg-1"></span>

                                        </div>
                                        <div class="form-group" style="display: inline-flex; width: 100%;">
                                            <input class="form-control col-md-3 col-lg-3" type="time" />
                                            <span class="col-md-1 col-lg-1"></span>
                                            <input class="form-control col-md-2 col-lg-2" type="number" style="padding-left: 10px;" />
                                            <span class="col-md-1 col-lg-1"></span>

                                        </div>
                                        <div class="form-group" style="display: inline-flex; width: 100%;">
                                            <input class="form-control col-md-3 col-lg-3" type="time" />
                                            <span class="col-md-1 col-lg-1"></span>
                                            <input class="form-control col-md-2 col-lg-2" type="number" style="padding-left: 10px;" />
                                            <span class="col-md-1 col-lg-1"></span>

                                        </div>
                                        <div class="form-group" style="display: inline-flex; width: 100%;">
                                            <input class="form-control col-md-3 col-lg-3" type="time" />
                                            <span class="col-md-1 col-lg-1"></span>
                                            <input class="form-control col-md-2 col-lg-2" type="number" style="padding-left: 10px;" />
                                            <span class="col-md-1 col-lg-1"></span>

                                        </div>
                                        <div class="form-group " style="display: inline-flex; width: 100%;">
                                            <input class="form-control col-md-3 col-lg-3" type="time" />
                                            <span class="col-md-1 col-lg-1"></span>
                                            <input class="form-control col-md-2 col-lg-2" type="number" style="padding-left: 10px;" />
                                            <span class="col-md-1 col-lg-1"></span>
                                            <input class="form-control col-md-2 col-lg-2" type="number" style="padding-left: 10px; margin-left: 20px;" />
                                        </div>
                                        <div style="display: inline-flex; width: 100%">
                                            <label class="form-check-label" style="width: 50%">
                                                &nbsp;After energy saver activated</label>
                                            <div id="myProgress">
                                                <div id="myBar"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group " style="text-align: center; width: 100%;">
                                <a href="#" class="btn btn-Custom0 btn-xs" id="myWish" onclick="myAlertTop()">Add <i class="fas fa-plus"></i></a>&nbsp;&nbsp;
                                                   <a href="#" class="btn btn-Custom1 btn-xs">Delete <i class="fas fa-trash"></i></a>
                            </div>

                        </div>

                    </div>

                 
                </div>


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
        <div class="myAlert-top alert alert-success">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Success!</strong> added Sucessfully.
        </div>


        <div class="modal fade" id="deletegroup" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="Heading">Delete this Group</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>

                    </div>
                    <div class="modal-body">
                        Are you sure you want to delete this Group Details?

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
        
        <div class="modal fade" id="tablemodal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="tblHeader">Delete this entry</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-remove" aria-hidden="true"></span></button>

                    </div>
                    <div class="modal-body">
                        <p id="tblConfirmMsg">
                        Are you sure you want to delete this Lamp Details?</p>

                    </div>
                    <div class="modal-footer ">
                        <button type="button" class="btn btn-Custom1" data-dismiss="modal">Ok <i class="fa fa-check" aria-hidden="true"></i></button>
                        <button type="button" class="btn btn-Custom0" data-dismiss="modal">Cancel <i class="fa fa-times" aria-hidden="true"></i></button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <script>
            function ChangeContentModal(id) {
                if (id == '0') {
                    document.getElementById("tblHeader").innerHTML = "Reset";
                    document.getElementById("tblConfirmMsg").innerHTML = " Are you sure you want to Reset this Details?";

                }
                if (id == '1') {
                    document.getElementById("tblHeader").innerHTML = "Restart";
                    document.getElementById("tblConfirmMsg").innerHTML = " Are you sure you want to Restart this Details?";
                }
                if (id == '2') {
                    document.getElementById("tblHeader").innerHTML = "Delete";
                    document.getElementById("tblConfirmMsg").innerHTML = " Are you sure you want to delete this Details?";
                }
            }
        </script>

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
    ipt>
</body>
</html>
