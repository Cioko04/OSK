
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*,com.example.osk.controller.BookingController.*,com.example.osk.model.WorkDay.*" %>
<%@ page import="com.example.osk.model.WorkDay" %>

<title>OSK Service | Dashboard</title>

<%@include file="../dynamic/link.jspf" %>
<%@include file="../dynamic/navigationMain.jspf" %>
<head>
<style>
    span.timeSlot {
        font-size: x-small;
    }

    table, th, td {
        border: 1px solid black;
    }

    table {
        display: table;
    }

    table tr {
        display: table-cell;
    }

    table tr td {
        display: block;
    }
</style>
</head>
<body class="hold-transition dark-mode layout-fixed layout-navbar-fixed layout-footer-fixed">

<div class="wrapper">

    <!-- Preloader -->
<%--    <div class="preloader flex-column justify-content-center align-items-center">--%>
<%--        <img class="animation__wobble" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">--%>
<%--    </div>--%>

    <!-- Navbar -->
    <nav class="navbar navbar-expand navbar-dark">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item d-none d-sm-inline-block">
                <a href="#" class="nav-link">Home</a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="#" class="nav-link">Contact</a>
            </li>
        </ul>

        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
            <!-- Navbar Search -->
            <li class="nav-item">
                <a class="nav-link" data-widget="navbar-search" href="#" role="button">
                    <i class="fas fa-search"></i>
                </a>
                <div class="navbar-search-block">
                    <form class="form-inline">
                        <div class="input-group input-group-sm">
                            <input class="form-control form-control-navbar" type="search" placeholder="Search"
                                   aria-label="Search">
                            <div class="input-group-append">
                                <button class="btn btn-navbar" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </li>

            <!-- Messages Dropdown Menu -->
            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
                    <i class="far fa-comments"></i>
                    <span class="badge badge-danger navbar-badge">3</span>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                    <a href="#" class="dropdown-item">
                        <!-- Message Start -->
                        <div class="media">
                            <img src="dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                            <div class="media-body">
                                <h3 class="dropdown-item-title">
                                    Brad Diesel
                                    <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                                </h3>
                                <p class="text-sm">Call me whenever you can...</p>
                                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                            </div>
                        </div>
                        <!-- Message End -->
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                        <!-- Message Start -->
                        <div class="media">
                            <img src="dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                            <div class="media-body">
                                <h3 class="dropdown-item-title">
                                    John Pierce
                                    <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                                </h3>
                                <p class="text-sm">I got your message bro</p>
                                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                            </div>
                        </div>
                        <!-- Message End -->
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                        <!-- Message Start -->
                        <div class="media">
                            <img src="dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                            <div class="media-body">
                                <h3 class="dropdown-item-title">
                                    Nora Silvester
                                    <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                                </h3>
                                <p class="text-sm">The subject goes here</p>
                                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                            </div>
                        </div>
                        <!-- Message End -->
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                </div>
            </li>
            <!-- Notifications Dropdown Menu -->
            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
                    <i class="far fa-bell"></i>
                    <span class="badge badge-warning navbar-badge">15</span>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                    <span class="dropdown-item dropdown-header">15 Notifications</span>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                        <i class="fas fa-envelope mr-2"></i> 4 new messages
                        <span class="float-right text-muted text-sm">3 mins</span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                        <i class="fas fa-users mr-2"></i> 8 friend requests
                        <span class="float-right text-muted text-sm">12 hours</span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                        <i class="fas fa-file mr-2"></i> 3 new reports
                        <span class="float-right text-muted text-sm">2 days</span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                    <i class="fas fa-expand-arrows-alt"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                    <i class="fas fa-th-large"></i>
                </a>
            </li>
        </ul>
    </nav>

    <!-- /.navbar -->

    <!-- Main Sidebar Container -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <section class="content">
            <section class="content">
                <div class="container-fluid">
                    <div class="col-md-9">
                        <table class="table table-sm table-bordered text-center">
                            <thead>
                            <tr style="width: 14.28%">
                                <td><span class="timeSlot">${sevenWorkDays.get(0).certainDay}</span>
                                <span class="timeSlot">${sevenWorkDays.get(0).certainDay.dayOfWeek}</span></td>
                            </tr>
                            <tr style="width: 14.28%">
                                <td><span class="timeSlot">${sevenWorkDays.get(1).certainDay}</span>
                                <span class="timeSlot">${sevenWorkDays.get(1).certainDay.dayOfWeek}</span></td>
                            </tr>
                            <tr style="width: 14.28%">
                                <td><span class="timeSlot">${sevenWorkDays.get(2).certainDay}</span>
                                <span class="timeSlot">${sevenWorkDays.get(2).certainDay.dayOfWeek}</span></td>
                            </tr>
                            <tr style="width: 14.28%">
                                <td><span class="timeSlot">${sevenWorkDays.get(3).certainDay}</span>
                                <span class="timeSlot">${sevenWorkDays.get(3).certainDay.dayOfWeek}</span></td>
                            </tr>
                            <tr style="width: 14.28%">
                                <td><span class="timeSlot">${sevenWorkDays.get(4).certainDay}</span>
                                <span class="timeSlot">${sevenWorkDays.get(4).certainDay.dayOfWeek}</span></td>
                            </tr>
                            <tr style="width: 14.28%">
                                <td><span class="timeSlot">${sevenWorkDays.get(5).certainDay}</span>
                                <span class="timeSlot">${sevenWorkDays.get(5).certainDay.dayOfWeek}</span></td>
                            </tr>
                            <tr style="width: 14.28%">
                                <td><span class="timeSlot">${sevenWorkDays.get(6).certainDay}</span>
                                <span class="timeSlot">${sevenWorkDays.get(6).certainDay.dayOfWeek}</span></td>
                            </tr>
                            </thead>
                            <tbody>
                        </table>
                        <table class="table table-sm table-bordered text-center">
                            <c:forEach items="${sevenWorkDays}" var="day">
                                <tr>
                                    <c:choose>
                                        <c:when test="${day.check8amAvailability() == true}">

                                            <td>
                                                <a href="#" class="btn btn-info active" role="button"
                                                   data-bs-toggle="button" aria-pressed="true"><span class="timeSlot">08:00
                                                - 09:00</span></a>
                                            </td>

                                        </c:when>
                                        <c:otherwise>

                                            <td class="text-info">
                                                <a href="#" class="btn btn-secondary disabled" tabindex="-1"
                                                   role="button" data-bs-toggle="button"><span class="timeSlot">08:00 - 09:00</span></a>
                                            </td>

                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${day.check9amAvailability() == true}">

                                            <td>
                                                <a href="#" class="btn btn-info active" role="button"
                                                   data-bs-toggle="button" aria-pressed="true"><span class="timeSlot">09:00
                                                - 10:00</span></a>
                                            </td>

                                        </c:when>
                                        <c:otherwise>

                                            <td class="text-info">
                                                <a href="#" class="btn btn-secondary disabled" tabindex="-1"
                                                   role="button" data-bs-toggle="button"><span class="timeSlot">09:00 - 10:00</span></a>
                                            </td>

                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${day.check10amAvailability() == true}">

                                            <td>
                                                <a href="#" class="btn btn-info active" role="button"
                                                   data-bs-toggle="button" aria-pressed="true"><span class="timeSlot">10:00
                                                - 11:00</span></a>
                                            </td>

                                        </c:when>
                                        <c:otherwise>

                                            <td class="text-info">
                                                <a href="#" class="btn btn-secondary disabled" tabindex="-1"
                                                   role="button" data-bs-toggle="button"><span class="timeSlot">10:00 - 11:00</span></a>
                                            </td>

                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${day.check11amAvailability() == true}">

                                            <td>
                                                <a href="#" class="btn btn-info active" role="button"
                                                   data-bs-toggle="button" aria-pressed="true"><span class="timeSlot">11:00
                                                - 12:00</span></a>
                                            </td>

                                        </c:when>
                                        <c:otherwise>

                                            <td class="text-info">
                                                <a href="#" class="btn btn-secondary disabled" tabindex="-1"
                                                   role="button" data-bs-toggle="button"><span class="timeSlot">11:00 - 12:00</span></a>
                                            </td>

                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${day.check13amAvailability() == true}">

                                            <td>
                                                <a href="#" class="btn btn-info active" role="button"
                                                   data-bs-toggle="button" aria-pressed="true"><span class="timeSlot">13:00
                                                - 14:00</span></a>
                                            </td>

                                        </c:when>
                                        <c:otherwise>

                                            <td class="text-info">
                                                <a href="#" class="btn btn-secondary disabled" tabindex="-1"
                                                   role="button" data-bs-toggle="button"><span class="timeSlot">13:00 - 14:00</span></a>
                                            </td>

                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${day.check14amAvailability() == true}">

                                            <td>
                                                <a href="#" class="btn btn-info active" role="button"
                                                   data-bs-toggle="button" aria-pressed="true"><span class="timeSlot">14:00
                                                - 15:00</span></a>
                                            </td>

                                        </c:when>
                                        <c:otherwise>

                                            <td class="text-info">
                                                <a href="#" class="btn btn-secondary disabled" tabindex="-1"
                                                   role="button" data-bs-toggle="button"><span class="timeSlot">14:00 - 15:00</span></a>
                                            </td>

                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${day.check15amAvailability() == true}">

                                            <td>
                                                <a href="#" class="btn btn-info active" role="button"
                                                   data-bs-toggle="button" aria-pressed="true"><span class="timeSlot">15:00
                                                - 16:00</span></a>
                                            </td>

                                        </c:when>
                                        <c:otherwise>

                                            <td class="text-info">
                                                <a href="#" class="btn btn-secondary disabled" tabindex="-1"
                                                   role="button" data-bs-toggle="button"><span class="timeSlot">15:00 - 16:00</span></a>
                                            </td>

                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${day.check16amAvailability() == true}">

                                            <td>
                                                <a href="#" class="btn btn-info active" role="button"
                                                   data-bs-toggle="button" aria-pressed="true"><span class="timeSlot">16:00
                                                - 17:00</span></a>
                                            </td>

                                        </c:when>
                                        <c:otherwise>

                                            <td class="text-info">
                                                <a href="#" class="btn btn-secondary disabled" tabindex="-1"
                                                   role="button" data-bs-toggle="button"><span class="timeSlot">16:00 - 17:00</span></a>
                                            </td>

                                        </c:otherwise>
                                    </c:choose>
                                </tr>
                            </c:forEach>
                        </table>
                        <td><a href='<c:url value="/timeslots/${currentPage - 1}"/>'>Previous page</a></td>
                        <td><a href='<c:url value="/timeslots/${currentPage + 1}"/>'>Next page</a></td>
                    </div>
                </div>
            </section>
        </section>
    </div>

    <!-- /.content-wrapper -->

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->

    <!-- Main Footer -->
    <footer class="main-footer bg-light text-center text-lg-start">
        <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
        All rights reserved.
        <div class="float-right d-none d-sm-inline-block">
            <b></b>
        </div>
    </footer>

    <!-- ./wrapper -->

    <!-- REQUIRED SCRIPTS -->
    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- overlayScrollbars -->
    <script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.js"></script>

    <!-- PAGE PLUGINS -->
    <!-- jQuery Mapael -->
    <script src="plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
    <script src="plugins/raphael/raphael.min.js"></script>
    <script src="plugins/jquery-mapael/jquery.mapael.min.js"></script>
    <script src="plugins/jquery-mapael/maps/usa_states.min.js"></script>
    <!-- ChartJS -->
    <script src="plugins/chart.js/Chart.min.js"></script>

    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard2.js"></script>
    </section>
</div>
<%@include file="../dynamic/javaScript.jspf" %>
<script src="js/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="js/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $("#table1").dataTable({
            "iDisplayLength": 3,
            "aLengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]]
        });
    });
</script>
<%
    Long temporaryPageHolder = (Long) session.getAttribute("defaultPage");

%>
</body>
</html>
