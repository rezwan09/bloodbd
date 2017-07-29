<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<style type="text/css">
    /*    li>a{
            color: #111;
        }*/

    /* #bcd, font-size:20px, font-weight:bold*/
    
/*    .active1{
        color: #fff !important;
        font-size: 20px;
        font-weight: bold;
    }
    .nav .collapse .navbar-collapse{
       display: inline;
    }

    .navbar-default .navbar-nav > li > a{
        color:#bcd;
        font-size: 20px;
    }

    @media (max-width: 767px) {
        .navbar-brand {
            padding-top: 5px;
            padding-left: 10px;
            height: 0%;
        }
        
        .navbar-brand > img{
            height: 125%;
        }
    }*/
    @import url(http://fonts.googleapis.com/css?family=Lato:300,400,700);
    @charset "UTF-8";
/* Base Styles */
#cssmenu ul,
#cssmenu li,
#cssmenu a {
  list-style: none;
  margin: 0;
  padding: 0;
  border: 0;
  line-height: 1;
  font-family: 'Lato', sans-serif;
}
#cssmenu {
  border: 1px solid #133e40;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  width: auto;
}
#cssmenu ul {
  zoom: 1;
  background: #36b0b6;
  background: -moz-linear-gradient(top, #36b0b6 0%, #2a8a8f 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #36b0b6), color-stop(100%, #2a8a8f));
  background: -webkit-linear-gradient(top, #36b0b6 0%, #2a8a8f 100%);
  background: -o-linear-gradient(top, #36b0b6 0%, #2a8a8f 100%);
  background: -ms-linear-gradient(top, #36b0b6 0%, #2a8a8f 100%);
  background: linear-gradient(top, #36b0b6 0%, #2a8a8f 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='@top-color', endColorstr='@bottom-color', GradientType=0);
  padding: 5px 10px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
}
#cssmenu ul:before {
  content: '';
  display: block;
}
#cssmenu ul:after {
  content: '';
  display: table;
  clear: both;
}
#cssmenu li {
  float: left;
  margin: 0 5px 0 0;
  border: 1px solid transparent;
}
#cssmenu li a {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  padding: 8px 15px 9px 15px;
  display: block;
  text-decoration: none;
  color: #ffffff;
  border: 1px solid transparent;
  font-size: 16px;
}
#cssmenu li.active {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  border: 1px solid #36b0b6;
}
#cssmenu li.active a {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  display: block;
  background: #1e6468;
  border: 1px solid #133e40;
  -moz-box-shadow: inset 0 5px 10px #133e40;
  -webkit-box-shadow: inset 0 5px 10px #133e40;
  box-shadow: inset 0 5px 10px #133e40;
}
#cssmenu li:hover {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  border: 1px solid #36b0b6;
}
#cssmenu li:hover a {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  display: block;
  background: #1e6468;
  border: 1px solid #133e40;
  -moz-box-shadow: inset 0 5px 10px #133e40;
  -webkit-box-shadow: inset 0 5px 10px #133e40;
  box-shadow: inset 0 5px 10px #133e40;
}

</style>
<script>
    function selectPublicMenu(url) {
        $('.nav li a').removeClass("active1");
        $('.nav li a[href="' + url + '"]').addClass('active1');
    }
    $(function () {
        selectPublicMenu(window.location.pathname);
    });

</script>

<header class="main-header" style="height: 75px;">
    <!doctype html>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>CSS MenuMaker</title>
</head>
<body>

<div id='cssmenu'>
<ul>
   <li class='active'><a href='#'><span>Home</span></a></li>
   <li><a href='#'><span>Search</span></a></li>
   <li><a href='#'><span>Donors</span></a></li>
   <li class='last'><a href='#'><span>Contact</span></a></li>
</ul>
</div>

</body>
</header>