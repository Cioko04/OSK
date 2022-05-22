<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<title>OSK Service | Dashboard</title>

<%@include file="dynamic/link.jspf" %>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
        </ul>

        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
<%--            <button type="button" class="btn btn-block btn-dark">Wyloguj</button>--%>
            <li sec:authorize ="isAuthenticated()">
                <a href='<c:url value="/logout"/>' class="btn btn-block btn-dark">Wyloguj</a>
            </li>

        </ul>
    </nav>

    <%@include file="dynamic/navigationMain.jspf"%>


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col-lg-6 col-6">
                        <!-- small box -->
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>
                                    <div style="text-align: center;">${clientsCount}</div>
                                </h3>
                                <p>
                                <div style="text-align: center;">Studenci</div>
                                </p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-person"></i>
                            </div>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-6 col-6">
                        <!-- small box -->
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3>
                                    <div style="text-align: center;">${instructorsCount}</div>
                                </h3>

                                <p>
                                <div style="text-align: center;">Instruktorzy</div>
                                </p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-person"></i>
                            </div>
                        </div>
                    </div>
                    <!-- ./col -->
                </div>
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->




    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <strong>Projekt OSK</strong>
        All rights reserved.
        <div class="float-right d-none d-sm-inline-block">
            <b>Version</b> alpha 1.0
        </div>
    </footer>
</div>
<!-- ./wrapper -->

<%@include file="dynamic/javaScript.jspf" %>
</body>
</html>
