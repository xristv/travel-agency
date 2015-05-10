<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Content Wrapper. Contains page content -->
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        New Booking
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
                   <label>Select a Travel Package</label>
                    <div class="form-group travelPackages">
                        <c:forEach items="${travelPackages}" var="tp">
                            <label>
                                <input type="radio" name="travelPackages" id="${tp.id}" value="${tp.id}"/>
                                <c:choose>
                                    <c:when test="${tp.type=='Flight'}"><i class="fa fa-plane"></i></c:when>
                                    <c:when test="${tp.type=='Cruise'}"><i class="fa fa-ship"></i></c:when>
                                    <c:when test="${tp.type=='Hotel'}"><i class="fa fa-home"></i></c:when>
                                    <c:when test="${tp.type=='Bus Tour'}"><i class="fa fa-bus"></i></c:when>
                                    <c:when test="${tp.type=='Space Rocket Tour'}"><i class="fa fa-rocket"></i></c:when>
                                </c:choose>
                                ${tp.from} TO ${tp.to}
                            </label>
                        </c:forEach>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="customerName">Customer Name</label>
                                <input type="text" class="form-control" id="customerName" >
                            </div>
                            <div class="col-md-3">
                                <label for="fromDate">From</label>
                                <input type="text" class="form-control datepicker" id="fromDate" >
                            </div>
                            <div class="col-md-3">
                                <label for="toDate">To</label>
                                <input type="text" class="form-control datepicker" id="toDate" >
                            </div></div></div>
                </div><!-- /.box-body -->
                <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Save Booking</button>
                </div>
            </div><!-- /.box -->
        </div></div>
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-body dropzoneForm">
                    <h4>Upload CSV</h4>
                    <h5>Upload a file to save multiple bookings at once</h5>
                    <div id="myDropZone" class="dropzone"></div>              
                </div><!-- /.box-body -->
                <div class="box-body" id="bookings">
                    <h4>Bookings from CSV</h4>
                    <table class="table table-hover" id="bookingsTable">
                        <tr><th>Agent</th>
                            <th>Booking Id</th>
                            <th>Customer Name</th>
                            <th>Package Information</th>
                            <th>From</th>
                            <th>To</th>                                
                        </tr>
                    </table>             
                </div><!-- /.box-body -->
                <div class="box-footer">
                    <button type="button" class="btn btn-primary" id="bookingsSave">Save Bookings</button>
                </div>
            </div><!-- /.box -->
        </div>
    </div>
</section>

<script>
    $("#bookings").hide();
    $("#bookingsSave").hide();

    $('.datepicker').datepicker({
        format: 'dd/mm/yyyy',
    });

    Dropzone.options.myDropZone = {
        paramName: "file",
        url: "/travelAgency/bookings/new/upload",
        maxFilesize: 2, // MB
        accept: function (file, done) {
            var re = /(?:\.([^.]+))?$/;
            var ext = re.exec(file.name)[1];
            if (ext != "csv") {
                done("Format not supported.");
            }
            else {
                done();
            }
        },
        success: function (result) {
            var bookings = JSON.parse(result.xhr.response);
            console.log(bookings);
            for (var i = 0; i < bookings.length; i++) {
                var icon;
                if (bookings[i].travelPackage.type.toUpperCase() == "Flight".toUpperCase())
                    icon = "<i class='fa fa-plane'></i> ";
                else if (bookings[i].travelPackage.type.toUpperCase() == "Hotel".toUpperCase())
                    icon = "<i class='fa fa-home'></i> ";
                else if (bookings[i].travelPackage.type.toUpperCase() == "Cruise".toUpperCase())
                    icon = "<i class='fa fa-ship'></i> ";
                else if (bookings[i].travelPackage.type.toUpperCase() == "Bus Tour".toUpperCase())
                    icon = "<i class='fa fa-bus'></i> ";
                else if (bookings[i].travelPackage.type.toUpperCase() == "Space Rocket Tour".toUpperCase())
                    icon = "<i class='fa fa-rocket'></i> ";
                $("#bookingsTable").append("<tr>" +
                        "<td>" + bookings[i].travelAgent.username + "</td>" +
                        "<td>" + bookings[i].id + "</td>" +
                        "<td>" + bookings[i].customer.fullName + "</td>" +
                        "<td>" + icon + bookings[i].travelPackage.from + " TO " + bookings[i].travelPackage.to + "</td>" +
                        "<td>" + bookings[i].fromDate + "</td>" +
                        "<td>" + bookings[i].toDate + "</td></tr>");
            }
            $(".dropzoneForm").hide();
            $("#bookings").show();
            $("#bookingsSave").show();
        }
    };

</script>