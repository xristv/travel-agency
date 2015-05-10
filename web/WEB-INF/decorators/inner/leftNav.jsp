<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <img src="<c:url value='/resources/theme/dist/img/logo.png' />" />
        </div>
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">WELCOME <c:out value="${sessionScope.username}" /> <span class="pull-right">LOGOUT</span></li>
            <li class="active treeview">
                <a href="<c:url value='/'/>">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span> 
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-calendar"></i>
                    <span>My Bookings</span>  <i class="fa fa-angle-right pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<c:url value='/bookings/new'/>"><i class="fa fa-circle-o"></i> New Booking</a></li>
                    <li><a href="<c:url value='/bookings/'/>"><i class="fa fa-circle-o"></i> View All Bookings</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Statistics</a></li>
                </ul>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-users"></i> <span>Customers</span>
                </a>
            </li>
           <li>
                <a href="#">
                    <i class="fa fa-calendar"></i> <span>Calendar</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-folder"></i> <span>Other stuff</span>
                </a>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>