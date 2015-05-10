<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Content Wrapper. Contains page content -->
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        All Bookings <small>by Travel Agent ${username}</small>
    </h1>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <!-- form start -->
                <div class="box-body">
                    <h4>Create a single booking</h4>

                    <table class="table table-hover" id="bookingsTable">
                        <tbody>
                            <tr>
                                <th>Agent</th>
                                <th>Booking Id</th>
                                <th>Customer Name</th>
                                <th>Package Information</th>
                                <th>From</th>
                                <th>To</th>
                            </tr>
                            <tr>
                                <td>SCIFY-AGENT</td>
                                <td>SF2023</td>
                                <td>Edgar Walker</td>
                                <td><i class="fa fa-plane"></i> ATHENS TO THESSALONIKI</td>
                                <td>20-May</td>
                                <td>1-Jul</td>
                            </tr>
                            <tr>
                                <td>SCIFY-AGENT</td>
                                <td>SF2024</td>
                                <td>Christian Woods</td>
                                <td><i class="fa fa-home"></i> ATHENS TO THESSALONIKI</td>
                                <td>21-May</td>
                                <td>2-Jul</td>
                            </tr>
                            <tr>
                                <td>SCIFY-AGENT</td>
                                <td>SF2025</td>
                                <td>Evelyn Vega</td>
                                <td><i class="fa fa-plane"></i> ATHENS TO THESSALONIKI</td>
                                <td>22-May</td>
                                <td>3-Jul</td>
                            </tr>
                            <tr>
                                <td>SCIFY-AGENT</td>
                                <td>SF2026</td>
                                <td>Bethany Lindsey</td>
                                <td><i class="fa fa-home"></i> ATHENS TO THESSALONIKI</td>
                                <td>23-May</td>
                                <td>4-Jul</td>
                            </tr>
                            <tr>
                                <td>SCIFY-AGENT</td>
                                <td>SF2027</td>
                                <td>Jeremy Powers</td>
                                <td><i class="fa fa-plane"></i> ATHENS TO THESSALONIKI</td>
                                <td>24-May</td>
                                <td>5-Jul</td>
                            </tr>
                            <tr>
                                <td>SCIFY-AGENT</td>
                                <td>SF2028</td>
                                <td>Daniel Murphy</td>
                                <td><i class="fa fa-home"></i> ATHENS TO THESSALONIKI</td>
                                <td>25-May</td>
                                <td>6-Jul</td>
                            </tr>
                            <tr>
                                <td>SCIFY-AGENT</td>
                                <td>SF2029</td>
                                <td>Glenda Saunders</td>
                                <td><i class="fa fa-plane"></i> ATHENS TO THESSALONIKI</td>
                                <td>26-May</td>
                                <td>7-Jul</td>
                            </tr>
                            <tr>
                                <td>SCIFY-AGENT</td>
                                <td>SF2030</td>
                                <td>Jorge Lloyd</td>
                                <td><i class="fa fa-home"></i> ATHENS TO THESSALONIKI</td>
                                <td>27-May</td>
                                <td>8-Jul</td>
                            </tr>
                            <tr>
                                <td>SCIFY-AGENT</td>
                                <td>SF2031</td>
                                <td>Lucia Hunt</td>
                                <td><i class="fa fa-plane"></i> ATHENS TO THESSALONIKI</td>
                                <td>28-May</td>
                                <td>9-Jul</td>
                            </tr>
                            <tr>
                                <td>SCIFY-AGENT</td>
                                <td>SF2032</td>
                                <td>Miranda Obrien</td>
                                <td><i class="fa fa-home"></i> ATHENS TO THESSALONIKI</td>
                                <td>29-May</td>
                                <td>10-Jul</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>