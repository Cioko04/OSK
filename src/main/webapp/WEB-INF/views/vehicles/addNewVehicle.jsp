<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<title>OSK Service | Dashboard</title>

<%@include file="../dynamic/link.jspf" %>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <%@include file="../dynamic/navigationMain.jspf"%>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper background-main-image">

        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid ">
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
            <form method="post" action='<c:url value="/addVehicle"/>'>
                <!-- Begin Page Content -->
                <div class="container-fluid opacity">

                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Nazwa</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="name" placeholder="uzupełnij nazwę pojazdu">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Typ</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="type" placeholder="uzupełnij typ pojazdu">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Status</label>
                                        <div class="col-10">
                                            <input class="form-control" type=text name="status" placeholder="uzuepłnij status">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Kolor kalendarza</label>
                                        <div class="col-10">
                                            <input class="form-control" type=text name="colour" placeholder="podaj kolor kalendarza">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Szkoła/Oddział</label>
                                        <div class="col-10">
                                            <input class="form-control" type=text name="department" placeholder="uzuepłnij szkołę/oddział">
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
    <%@include file="../dynamic/footer.jspf"%>
</div>
<!-- ./wrapper -->

<%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>
