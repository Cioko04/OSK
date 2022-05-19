<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<title>OSK Service | Dashboard</title>

<%@include file="../dynamic/link.jspf" %>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

    <%@include file="../dynamic/navigationMain.jspf"%>

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


        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->

                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <div class="topbar-divider d-none d-sm-block"></div>
                </ul>

            </nav>
            <!-- End of Topbar -->
            <form method="post" action='<c:url value="/addClient"/>'>
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Imię</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="name" placeholder="uzupełnij imię">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Nazwisko</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="surname" placeholder="uzupełnij nazwisko">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Wiek</label>
                                        <div class="col-10">
                                            <input class="form-control" type=number name="age" placeholder="uzupełnij wiek">
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                    <input class="btn btn-success pull-left" type="submit" value="Wyślij" id="searchButton"></input>




                </div>
                <!-- /.container-fluid -->
            </form>
        </div>
        <!-- End of Main Content -->


    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <strong>Projekt OSK</strong>
        All rights reserved.
        <div class="float-right d-none d-sm-inline-block">
            <b>Version</b> alpha 1.0
        </div>
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>
