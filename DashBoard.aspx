<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DashBoard.aspx.vb" Inherits="WebApplication2.DashBoard" %>
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
<%--    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="plugins/morris/morris.min.js" type="text/javascript"></script>--%>
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
    <%--<script src="dist/js/pages/dashboard.js" type="text/javascript"></script>--%>
    <!-- AdminLTE for demo purposes -->
    <!--<script src="dist/js/demo.js" type="text/javascript"></script>-->

    <!-- ChartJS -->
    <script src="plugins/chartjs/Chart.js"></script>

</head>
<body class="skin-green fixed">
    <div class="wrapper">
        <header class="main-header">
            <!-- Logo -->
            <a href="#" class="logo">
                <img src="dist/img/profile-icon.png" class="user-image" alt="User Image" />   
                <b>m</b>APP
            </a>
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
                                <span class="hidden-xs"><asp:Label ID="lblUserNameMenu" runat="server" /></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="dist/img/user_male2_160x160.png" class="img-circle" alt="User Image" />
                                    <p><asp:Label ID="lblUserName" runat="server" />
                                        <small><asp:Label ID="lblUserRole" runat="server" /></small>
                                    </p>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-right">
                                        <a href="Login.aspx" class="btn btn-default btn-flat">Sign out</a>
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
                        <a href="#"><i class="fa fa-circle text-success"></i><asp:Label ID="lblSideBarUserDesig" runat="server" /></a>
                    </div>
                </div>
                <ul class="sidebar-menu">
                    <!--<li class="header">MAIN NAVIGATION</li>-->
                    <li class="active treeview">
                        <a href="#" id="dashboard" runat ="server" >
                            <i class="fa fa-dashboard"></i> <span>Dashboard</span> <!--<i class="fa fa-angle-left pull-right"></i>-->
                        </a>
                    </li>
                    
                    <li>
                        <a href="AccountMenu.aspx" id="account" runat="server" >
                            <i class="fa fa-th"></i> <span>Accounts</span> <!--<small class="label pull-right bg-green">new</small>-->
                        </a>
                    </li>

                    <li>
                        <a href="TransactionMenu.html" id="transaction" runat ="server" >
                            <i class="fa fa-shopping-cart"></i> <span>Transaction</span> <!--<small class="label pull-right bg-green">new</small>-->
                        </a>
                    </li>
                    <li>
                        <a href="AnalysisMenu.html" id="analysis" runat ="server" >
                            <i class="fa fa-pie-chart"></i> <span>Analysis</span> <!--<small class="label pull-right bg-green">new</small>-->
                        </a>
                    </li>
                    <li>
                        <a href="SettingsMenu.html" id="settings" runat ="server" >
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
                <h1> Dashboard<small>Control panel</small></h1>
            </section>
            <!-- Main content -->
            <section class="content">
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col-lg-3 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-aqua">
                            <div class="inner">
                                <h3><asp:Label ID="lblBoxValue1" runat="server" /></h3>
                                <asp:Label ID="lblBoxText1" runat="server" />
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div><!-- ./col -->
                    <div class="col-lg-3 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-green">
                            <div class="inner">
                                <h3><asp:Label ID="lblBoxValue2" runat="server" /></h3>
                                <asp:Label ID="lblBoxText2" runat="server" />
                                <%--<h3>53<sup style="font-size: 20px">%</sup></h3>--%>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div><!-- ./col -->
                    <div class="col-lg-3 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-yellow">
                            <div class="inner">
                                  <h3><asp:Label ID="lblBoxValue3" runat="server" /></h3>
                                  <asp:Label ID="lblBoxText3" runat="server" />
                            </div>
                            <div class="icon">
                                <i class="ion ion-person-add"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div><!-- ./col -->
                    <div class="col-lg-3 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-red">
                            <div class="inner">
                               <h3><asp:Label ID="lblBoxValue4" runat="server" /></h3>
                               <asp:Label ID="lblBoxText4" runat="server" />
                            </div>
                            <div class="icon">
                                <i class="ion ion-pie-graph"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div><!-- ./col -->
                </div><!-- /.row -->
             
                <div class="box-footer">
                  <div class="row">
                    <div class="col-sm-3 col-xs-6">
                      <div class="description-block border-right">
                        <span class="description-percentage text-green"><i class="fa fa-caret-up"></i><asp:Label ID="lblBox1T" runat="server" /></span>
                        <h5 class="description-header"><asp:Label ID="lblBox1M" runat="server" /></h5>
                        <span class="description-text"><asp:Label ID="lblBox1B" runat="server" /></span>
                      </div><!-- /.description-block -->
                    </div><!-- /.col -->
                    <div class="col-sm-3 col-xs-6">
                      <div class="description-block border-right">
                         <span class="description-percentage text-green"><i class="fa fa-caret-up"></i><asp:Label ID="lblBox2T" runat="server" /></span>
                        <h5 class="description-header"><asp:Label ID="lblBox2M" runat="server" /></h5>
                        <span class="description-text"><asp:Label ID="lblBox2B" runat="server" /></span>
                      </div><!-- /.description-block -->
                    </div><!-- /.col -->
                    <div class="col-sm-3 col-xs-6">
                      <div class="description-block border-right">
                         <span class="description-percentage text-green" id="profitUp" runat ="server">
                             <i class="fa fa-caret-up"></i><asp:Label ID="lblBox3Tup" runat="server" /></span>
                           <span class="description-percentage text-red" id="profitDown" runat ="server">
                             <i class="fa fa-caret-down"></i><asp:Label ID="lblBox3Tdn" runat="server" /></span>
                        <h5 class="description-header"><asp:Label ID="lblBox3M" runat="server" /></h5>
                        <span class="description-text"><asp:Label ID="lblBox3B" runat="server" /></span>
                      </div><!-- /.description-block -->
                    </div><!-- /.col -->

                  
                    <div class="col-sm-3 col-xs-6">
                      <div class="description-block">
                        <span class="description-percentage text-red"><i class="fa fa-caret-down"></i><asp:Label ID="lblBox4T" runat="server" /></span>
                        <h5 class="description-header"><asp:Label ID="lblBox4M" runat="server" /></h5>
                        <span class="description-text"><asp:Label ID="lblBox4B" runat="server" /></span>
                      </div><!-- /.description-block -->
                    </div>
                  </div><!-- /.row -->

         <!-- Main content -->
   
  </div>
<!-- /.content-wrapper -->
            </section><!-- /.content -->
          <section class="content">
          <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
              <!-- Info Boxes Style 2 -->
              <div class="info-box bg-yellow">
                <span class="info-box-icon"><i class="ion ion-ios-pricetag-outline"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Inventory</span>  
                    <span class="info-box-number">
                        <asp:Label ID="lblInventoryValue" runat="server" />
                    </span>
                  <div class="progress">
                      <asp:Label ID="lblInvProgVal" runat="server" />
                    <%--<div class="progress-bar" style="width: 1000%"></div>--%>
                  </div>
                    <asp:Label ID="lblInvProgDesc" runat="server" />
                  <%--<span class="progress-description">50% Increase in 30 Days</span>--%>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
                </div>
             <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box bg-green">
                <span class="info-box-icon"><i class="ion ion-ios-information-outline "></i></span><%-- ion ion-ios-heart-outline--%>
                <div class="info-box-content">
                  <span class="info-box-text">Account</span>
                  <span class="info-box-number"><asp:Label ID="lblAccValue" runat="server" /></span>
                  <div class="progress">
                      <asp:Label ID="lblAccProgVal" runat="server" />
                    <%--<div class="progress-bar" style="width: 20%"></div>--%>
                  </div>
                  <span class="progress-description"><asp:Label ID="lblAccProgDesc" runat="server" />
                  </span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
                 </div>
                <div class="clearfix visible-sm-block"></div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box bg-red">
                <span class="info-box-icon"><i class="ion ion-ios-cart-outline"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Sales</span>
                  <span class="info-box-number"><asp:Label ID="lblSalesVal" runat="server" /></span>
                  <div class="progress">
                      <asp:Label ID="lblSaleProgVal" runat="server" />
                    <%--<div class="progress-bar" style="width: 70%"></div>--%>
                  </div>
                  <span class="progress-description">
                   <asp:Label ID="lblSaleProgDesc" runat="server" />
                  </span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
                </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box bg-aqua">
                <span class="info-box-icon"><i class="ion ion-ios-briefcase-outline"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Purchase</span>
                  <span class="info-box-number"><asp:Label ID="lblPurcVal" runat="server" /></span>
                  <div class="progress">
                      <asp:Label ID="lblPurcProgVal" runat="server" />
                    <%--<div class="progress-bar" style="width: 40%"></div>--%>
                  </div>
                  <span class="progress-description">
                    <asp:Label ID="lblPurcProgDesc" runat="server" />
                  </span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
        </div>
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
   

   
</body>
</html>