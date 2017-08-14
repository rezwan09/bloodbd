<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
    <head>        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!--<title><tiles:getAsString name="title" /></title>-->
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
              <link rel="stylesheet" href="<c:url value="/resources/css/landing-page.css" />">
              <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css" />">
              <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
        <!-- jQuery 2.2.3 -->
        <script src="<c:url value="/resources/js/jquery-2.2.3.min.js" />"></script>
        <!-- Bootstrap 3.3.6 -->
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
        <script src="<c:url value="/resources/js/utility.js" />"></script>

        <script src="<c:url value="/resources/plugins/messageResources/messageResource.min.js" />" ></script>

        <!-- Font Awesome -->
        <!--<link rel="stylesheet" href="<c:url value="/resources/css/AdminLTE.min.css" />">-->        
        <link rel="stylesheet" href="<c:url value="/resources/css/site.css" />">
              <!--        <link rel="stylesheet" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />">-->
              <!-- Ionicons -->
              <link rel="stylesheet" href="<c:url value="/resources/css/custom.css" />"> 
              <link rel="stylesheet" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />">
              <!-- Theme style -->
              <link rel="stylesheet" href="<c:url value="/resources/plugins/iCheck/flat/blue.css" />">
              <link rel="stylesheet" href="<c:url value="/resources/plugins/iCheck/square/blue.css" />">
              <link rel="shortcut icon" type="image/x-icon"  href="<c:url value="/resources/img/favicon.ico" />?">
        <script src="<c:url value="/resources/plugins/iCheck/icheck.min.js" />"></script>
        <script src="<c:url value="/resources/plugins/validation/jquery.validate.js" />" ></script>
    </head>
    <script>
        var selectedLocale = '${pageContext.response.locale}';
        var contextPath = '${pageContext.request.contextPath}';
        $(function () {
            initIcheck();
//            messageResource.init({
//                filePath: contextPath + '/resources'
//            });
//            messageResource.load('messages_bn', function () {});
//            messageResource.load('messages_en', function () {});
//            includeJs(contextPath + "/resources/plugins/validation/src/localization/messages_" + selectedLocale + ".js");
            $('.modal').bind('ajaxStart', function () {
                $(this).show();
            }).bind('ajaxStop', function () {
                $(this).hide();
            });
        });
    </script>
    <style>
        body{
            /*background:  url('resources/img/bg_image.jpg');*/
            background-color: #D3D3D3;
        }
    </style>
    <c:set var="title"><tiles:getAsString  name="title" ignore="true"/></c:set>
    <title>Blood Book</title>

    <!--    <body class="hold-transition skin-blue-light sidebar-mini">-->
    <body class="hold-transition">
        <div class="container" style="background-color: greenyellow">

            <!-- Main Header -->
            <tiles:insertAttribute name="header" />
            <!-- Left side column. contains the logo and sidebar -->
            <!-- Content Wrapper. Contains page content -->
            <div class="container content-wrapper" style="min-height: 600px; padding-bottom:10px;">
                <tiles:insertAttribute name="body" /> 
            </div>
            <!-- /.content-wrapper -->
            <!-- Main Footer -->
            <tiles:insertAttribute name="footer" />  
        </div>
        <!-- ./wrapper -->

        <!-- REQUIRED JS SCRIPTS -->



        <!-- Optionally, you can add Slimscroll and FastClick plugins.
             Both of these plugins are recommended to enhance the
             user experience. Slimscroll is required when using the
             fixed layout. -->
    </body>
</html>