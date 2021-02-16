
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SideMenu.aspx.cs" Inherits="SideMenu" %>

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
   <script type="text/javascript">
       var selector = '.nav-item li';

       $(selector).on('click', function () {
           $(selector).removeClass('active');
           $(this).addClass('active');
       });
   </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                
                            <li class="nav-item dropdown">
                                <a href="Dashboard.aspx" class="nav-link"><i class="fas fa-bullseye"></i><span>Dashboard</span></a>

                            </li>
                            <li class="menu-header">Control Panel</li>
                            <li class="nav-item "><a href="ProjectDetails.aspx" class="nav-link"><i class="fas fa-atom"></i><span>Project</span></a> </li>
                            <li><a class="nav-link" href="SiteDetails.aspx"><i class="fas fa-sitemap"></i><span>Multi-Site</span></a></li>
                            <li class="nav-item"><a href="InventoryManagement.aspx" class="nav-link"><i class="fab fa-hive"></i><span>Inventory</span></a> </li>
                            <li><a class="nav-link" href="UserManagement.aspx"><i class="fas fa-users-cog"></i><span>User Management</span></a></li>
                            <li class="menu-header">System</li>
                            <li><a class="nav-link" href="blank.html"><i class="fas fa-layer-group"></i><span>Grouping</span></a></li>
                            <li><a class="nav-link" href="NetworkManagement.aspx"><i class="fas fa-wifi"></i><span>Network</span></a></li>

                            <li class="menu-header">Automation</li>
                            <li><a class="nav-link" href="blank.html"><i class="fas fa-sliders-h"></i><span>Controller</span></a></li>
                            <li><a class="nav-link" href="blank.html"><i class="fab fa-stack-overflow"></i><span>Work Order</span></a></li>
                        </ul>
                    </aside>
        </div>
    </form>
</body>
</html>
