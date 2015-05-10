<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Content Wrapper. Contains page content -->
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Dashboard
    </h1>
</section>

<!-- Main content -->
<section class="content">
    <!-- Info boxes -->
    <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa fa-plane"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">Total Flights</span>
                    <span class="info-box-number">1890</span>
                </div><!-- /.info-box-content -->
            </div><!-- /.info-box -->
        </div><!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-red"><i class="fa fa-ship"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">Cruises</span>
                    <span class="info-box-number">1500</span>
                </div><!-- /.info-box-content -->
            </div><!-- /.info-box -->
        </div><!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>

        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-green"><i class="fa fa-bus"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">Bus Tours</span>
                    <span class="info-box-number">760</span>
                </div><!-- /.info-box-content -->
            </div><!-- /.info-box -->
        </div><!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="fa fa-rocket"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">Space Rocket Tours</span>
                    <span class="info-box-number">2,000</span>
                </div><!-- /.info-box-content -->
            </div><!-- /.info-box -->
        </div><!-- /.col -->
    </div><!-- /.row -->

    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Monthly Recap Report</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-8">
                            <p class="text-center">
                                <strong>Bookings: 1 Jan, 2014 - 30 Jul, 2014</strong>
                            </p>
                            <div class="chart">
                                <!-- Sales Chart Canvas -->
                                <canvas id="salesChart" height="180"></canvas>
                            </div><!-- /.chart-responsive -->
                        </div><!-- /.col -->
                        <div class="col-md-4">
                            <p class="text-center">
                                <strong>Your Bookings / Total Bookings</strong>
                            </p>
                            <div class="progress-group">
                                <span class="progress-text">Flights</span>
                                <span class="progress-number"><b>566</b>/1890</span>
                                <div class="progress sm">
                                    <div class="progress-bar progress-bar-aqua" style="width: 30%"></div>
                                </div>
                            </div><!-- /.progress-group -->
                            <div class="progress-group">
                                <span class="progress-text">Cruises</span>
                                <span class="progress-number"><b>600</b>/1500</span>
                                <div class="progress sm">
                                    <div class="progress-bar progress-bar-red" style="width: 40%"></div>
                                </div>
                            </div><!-- /.progress-group -->
                            <div class="progress-group">
                                <span class="progress-text">Bus Tours</span>
                                <span class="progress-number"><b>230</b>/760</span>
                                <div class="progress sm">
                                    <div class="progress-bar progress-bar-green" style="width: 25%"></div>
                                </div>
                            </div><!-- /.progress-group -->
                            <div class="progress-group">
                                <span class="progress-text">Space Rocket Tours</span>
                                <span class="progress-number"><b>1,500</b>/2,000</span>
                                <div class="progress sm">
                                    <div class="progress-bar progress-bar-yellow" style="width: 75%"></div>
                                </div>
                            </div><!-- /.progress-group -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- ./box-body -->
                <div class="box-footer">
                    <div class="row">
                        <div class="col-sm-3 col-xs-6">
                            <div class="description-block border-right">
                                <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 17%</span>
                                <h5 class="description-header">$35,210.43</h5>
                                <span class="description-text">TOTAL REVENUE</span>
                            </div><!-- /.description-block -->
                        </div><!-- /.col -->
                        <div class="col-sm-3 col-xs-6">
                            <div class="description-block border-right">
                                <span class="description-percentage text-yellow"><i class="fa fa-caret-left"></i> 0%</span>
                                <h5 class="description-header">$10,390.90</h5>
                                <span class="description-text">TOTAL COST</span>
                            </div><!-- /.description-block -->
                        </div><!-- /.col -->
                        <div class="col-sm-3 col-xs-6">
                            <div class="description-block border-right">
                                <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 20%</span>
                                <h5 class="description-header">$24,813.53</h5>
                                <span class="description-text">TOTAL PROFIT</span>
                            </div><!-- /.description-block -->
                        </div><!-- /.col -->
                        <div class="col-sm-3 col-xs-6">
                            <div class="description-block">
                                <span class="description-percentage text-red"><i class="fa fa-caret-down"></i> 18%</span>
                                <h5 class="description-header">1200</h5>
                                <span class="description-text">GOAL COMPLETIONS</span>
                            </div><!-- /.description-block -->
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.box-footer -->
            </div><!-- /.box -->
        </div><!-- /.col -->
    </div><!-- /.row -->

    <!-- Main row -->
    <div class="row">
        <!-- Left col -->
        <div class="col-md-12">
            <!-- MAP & BOX PANE -->
            <div class="box box-success">
                <div class="box-header with-border">
                    <h3 class="box-title">Most Visited Places</h3>
                </div><!-- /.box-header -->
                <div class="box-body no-padding">
                    <div class="row">
                        <div class="col-md-12 col-sm-11">
                            <div class="pad">
                                <!-- Map will be created here -->
                                <div id="world-map-markers" style="height: 325px;"></div>
                            </div>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div>
        <div class="col-md-8">

            <!-- TABLE: LATEST ORDERS -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Latest Bookings</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table no-margin">
                            <thead>
                                <tr>
                                    <th>Booking ID</th>
                                    <th>Info</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><a href="#">BOO9842</a></td>
                                    <td><i class="fa fa-plane"></i> Athens, Greece <strong>TO</strong> Paris, France | <i class="fa fa-user"></i> Edgar Walker | <i class="fa fa-calendar"></i> 12/02/2015 - 16/05/2015</td>
                                    <td><span class="label label-success">Completed</span></td>
                                </tr>
                                <tr>
                                    <td><a href="#">BOO1848</a></td>
                                    <td><i class="fa fa-plane"></i> Thessaloniki, Greece <strong>TO</strong> London, UK | <i class="fa fa-user"></i> Lucia Hunt | <i class="fa fa-calendar"></i> 20/10/2015 - 28/10/2015</td>
                                    <td><span class="label label-warning">Pending</span></td>
                                </tr>
                                <tr>
                                    <td><a href="#">BOO7429</a></td>
                                    <td><i class="fa fa-ship"></i> Nicosia, Cyprus <strong>TO</strong> Athens, Greece | <i class="fa fa-user"></i> Jorge Lloyd | <i class="fa fa-calendar"></i> 20/02/2015</td>
                                    <td><span class="label label-danger">Canceled</span></td>
                                </tr>
                                <tr>
                                    <td><a href="#">BOO7429</a></td>
                                    <td><i class="fa fa-ship"></i> Athens, Greece <strong>TO</strong> Paris, France | <i class="fa fa-user"></i> Daniel Murphy | <i class="fa fa-calendar"></i> 12/02/2015 - 16/05/2015</td>
                                    <td><span class="label label-success">Completed</span></td>
                                </tr>
                                <tr>
                                    <td><a href="#">BOO1848</a></td>
                                    <td><i class="fa fa-bus"></i> Athens, Greece <strong>TO</strong> Chania, Greece | <i class="fa fa-user"></i> Glenda Saunders | <i class="fa fa-calendar"></i> 05/03/2015 - 02/06/2015</td>
                                    <td><span class="label label-success">Completed</span></td>
                                </tr>
                                <tr>
                                    <td><a href="#">BOO7429</a></td>
                                    <td><i class="fa fa-plane"></i> Athens, Greece <strong>TO</strong> Paris, France | <i class="fa fa-user"></i> Edgar Walker | <i class="fa fa-calendar"></i> 12/02/2015 - 16/05/2015</td>
                                    <td><span class="label label-warning">Pending</span></td>
                                </tr>
                                <tr>
                                    <td><a href="#">BOO9842</a></td>
                                    <td><i class="fa fa-rocket"></i> Athens, Greece, Earth <strong>TO</strong> Aries | <i class="fa fa-user"></i> Miranda Obrien | <i class="fa fa-calendar"></i> 12/02/2015 - 16/05/2015</td>
                                    <td><span class="label label-success">Completed</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div><!-- /.table-responsive -->
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col -->


        <div class="col-md-4">


            <!-- PRODUCT LIST -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Most Desired Packages</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <ul class="products-list product-list-in-box">
                        <li class="item">
                            <div class="product-img">
                                <i class="fa fa-plane fa-4x"></i>
                            </div>
                            <div class="product-info">
                                <a href="#" class="product-title">Athens, Greece - Paris, France <span class="label label-success pull-right">$1800</span></a>
                                <span class="product-description">
                                    City of love and macarons. Can YOU resist?
                                </span>
                            </div>
                        </li><!-- /.item -->
                        <li class="item">
                            <div class="product-img">
                                <i class="fa fa-ship fa-4x"></i>
                            </div>
                            <div class="product-info">
                                <a href="#" class="product-title">Athens - Chania <span class="label label-success pull-right">$700</span></a>
                                <span class="product-description">
                                    Picturesque streets, deep blue seas and <br/> raki.  
                                </span>
                            </div>
                        </li><!-- /.item -->
                        <li class="item">
                            <div class="product-img">
                                <i class="fa fa-bus fa-4x"></i>
                            </div>
                            <div class="product-info">
                                <a href="#" class="product-title">Athens - Thessaloniki <span class="label label-success pull-right">$350</span></a>
                                <span class="product-description">
                                    The most classic trip just became awesome. 
                                </span>
                            </div>
                        </li><!-- /.item -->
                        <li class="item">
                            <div class="product-img">
                                <i class="fa fa-rocket fa-4x"></i>
                            </div>
                            <div class="product-info">
                                <a href="#" class="product-title">Earth-Aries <span class="label label-success pull-right">$52000</span></a>
                                <span class="product-description">
                                    An experience you will never forget. <br/>Currently only selling one-way tickets.
                                </span>
                            </div>
                        </li><!-- /.item -->
                    </ul>
                </div><!-- /.box-body -->
            </div><!-- /.box -->




        </div><!-- /.col -->
    </div><!-- /.row -->
</section><!-- /.content -->

