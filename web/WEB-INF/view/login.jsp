<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="login-box">
    <div class="login-logo">
        <img src="<c:url value='/resources/theme/dist/img/logo.png' />" />
    </div><!-- /.login-logo -->
    <div class="login-box-body">
        <div class="form-group has-feedback">
            <input type="username" id="username" class="form-control" placeholder="Username"/>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <input type="password" id="password" class="form-control" placeholder="Password"/>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="row">
            <div class="col-xs-8">    
                <div>
                    <label>
                        <input type="checkbox"> Remember Me
                    </label>
                </div>                        
            </div><!-- /.col -->
            <div class="col-xs-4">
                <button type="submit" id="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
            </div><!-- /.col -->
        </div>
        <div class="row">
            <div class="col-xs-12">  
                <div id="errorMsg"></div>
            </div>
        </div>
    </div><!-- /.login-box-body -->
</div><!-- /.login-box -->

<script>
    $("#submit").click(function () {
        var error = false;
        if ($("#username").val() == null || $("#password").val() == '') {
            $("#errorMsg").html("<p>Please fill in the username field.</p>");
            error = true;

        }
        if ($("#password").val() == null || $("#password").val() == '') {
            $("#errorMsg").html("<p>Please fill in the password field.</p>");
            error = true;

        }
        if (error == false) {
            $.ajax({
                url: '/travelAgency/login/check',
                data: {
                    username : $("#username").val(),
                    password : $("#password").val()
                },
                success: function (data) {
                    if(data=="forbidden")
                        $("#errorMsg").html("<p>The credentials you provided are not correct.</p>");
                    else
                        window.location.replace("/travelAgency/");
                }
            });
        }
    });
</script>
