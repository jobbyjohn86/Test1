<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AccountMenu.aspx.vb" Inherits="WebApplication2.AccountMenu" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My | App</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- FontAwesome 4.3.0 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link href="dist/css/skins/_all-skins.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body class="skin-green fixed">
    <div class="wrapper">
        <header class="main-header">
            <!-- Logo -->
            <a href="index2.html" class="logo"><b>my</b>APP</a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">

                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="dist/img/user_male2_160x160.png" class="user-image" alt="User Image" />
                                <span class="hidden-xs"><asp:Label ID="Label1" runat="server" /></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="dist/img/user_male2_160x160.png" class="img-circle" alt="User Image" />
                                    <p>
                                        <asp:Label ID="lblUserName" runat="server" />
                                        <small><asp:Label ID="lblUserRole" runat="server" /></small>
                                    </p>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-right">
                                        <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="dist/img/user_male2_160x160.png" class="img-circle" alt="User Image" />
                    </div>
                    <div class="pull-left info">
                        <p><asp:Label ID="lblSidebarUserName" runat="server" /></p>
                    </div>
                </div>
                <ul class="sidebar-menu">
                    <!--<li class="header">MAIN NAVIGATION</li>-->
                    <li>
                        <a href="DashBoard.aspx" id="dashboard" runat="server">
                            <i class="fa fa-dashboard"></i> <span>Dashboard</span> <!--<i class="fa fa-angle-left pull-right"></i>-->
                        </a>
                    </li>

                    <li class="active treeview">
                        <a href="#" id="account" runat="server">
                            <i class="fa fa-th"></i> <span>Accounts</span> <!--<small class="label pull-right bg-green">new</small>-->
                        </a>
                    </li>

                    <li>
                        <a href="TransactionMenu.html" id="transaction" runat="server">
                            <i class="fa fa-shopping-cart"></i> <span>Transaction</span> <!--<small class="label pull-right bg-green">new</small>-->
                        </a>
                    </li>
                    <li>
                        <a href="AnalysisMenu.html" id="analysis" runat="server">
                            <i class="fa fa-pie-chart"></i> <span>Analysis</span> <!--<small class="label pull-right bg-green">new</small>-->
                        </a>
                    </li>
                    <li>
                        <a href="SettingsMenu.html" id="settings" runat="server">
                            <i class="fa fa-cogs"></i> <span>Settings</span> <!--<small class="label pull-right bg-red ">new</small>-->
                        </a>
                    </li>
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- Right side column. Contains the navbar and content of the page -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1> Accounts<small>Menu</small></h1>
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="box-header with-border">
                    <h3 class="box-title">Ledger Statement</h3>
                    <div class="box-tools pull-right">
                        <button id ="ledgerStatement" runat="server"  type="button" class="btn btn-box-tool" >
                            <i class="fa fa-angle-right"></i>
                        </button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-header with-border">
                    <h3 class="box-title">Periodical Statement</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool">
                            <i class="fa fa-angle-right"></i>
                        </button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-header with-border">
                    <h3 class="box-title">Bank and Cash Book</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool">
                            <i class="fa fa-angle-right"></i>
                        </button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-header with-border">
                    <h3 class="box-title">Trial Balance</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool">
                            <i class="fa fa-angle-right"></i>
                        </button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-header with-border">
                    <h3 class="box-title">Balance Sheet</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool">
                            <i class="fa fa-angle-right"></i>
                        </button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-header with-border">
                    <h3 class="box-title">Profit and Loss</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool">
                            <i class="fa fa-angle-right"></i>
                        </button>
                    </div>
                </div>
                <!-- /.box-header -->
            </section>
        </div>
    </div><!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 3.1
        </div>
        <strong>Copyright &copy; 2017-2018 <a href="#">MyApp</a>.</strong> All rights reserved.
    </footer>
    </div><!-- ./wrapper -->
    <!-- jQuery 2.1.3 -->
    <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- jQuery UI 1.11.2 -->
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Morris.js charts -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="plugins/morris/morris.min.js" type="text/javascript"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
    <!-- jQuery Knob Chart -->
    <script src="plugins/knob/jquery.knob.js" type="text/javascript"></script>
    <!-- daterangepicker -->
    <script src="plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- datepicker -->
    <script src="plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <!--<script src="dist/js/demo.js" type="text/javascript"></script>-->
    <!-- ChartJS -->
    <script src="../../bower_components/Chart.js/Chart.js"></script>


</body>
</html>

