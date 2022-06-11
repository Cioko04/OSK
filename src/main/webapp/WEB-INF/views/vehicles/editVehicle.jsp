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

        </div>
        <!-- /.content-header -->

        <!-- Main Content -->
        <div id="content">
            <!-- Begin Page Content -->
            <div class="container-fluid opacity">
                <form method="post" action='<c:url value="/addVehicle/${vehicle.id}"/>'>
                    <!-- Content Row -->
                    <div class="row justify-content-center">
                        <div class="col-xl-8 col-md-12 mb-12">
                            <div class="card shadow mb-4 form-border">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <label class="col-5 col-form-label">
                                            <h3 class="card-title text-bold text-lg">Nazwa: </h3>
                                        </label>
                                        <div class="col-12">
                                            <input class="form-control" type="text" name="name" value="${vehicle.name}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label  class="col-5 col-form-label">
                                            <h3 class="card-title text-bold text-lg">Typ: </h3>
                                        </label>
                                        <div class="col-12">
                                            <input class="form-control" type="text" name="type" value="${vehicle.type}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label  class="col-5 col-form-label">
                                            <h3 class="card-title text-bold text-lg">Status: </h3>
                                        </label>
                                        <div class="col-12">
                                            <input class="form-control" type="text" name="status" value="${vehicle.status}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label  class="col-5 col-form-label">
                                            <h3 class="card-title text-bold text-lg">Kolor kalendarza: </h3>
                                        </label>
                                        <div class="col-12">
                                            <input class="form-control" type="text" name="colour" value="${vehicle.colour}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label  class="col-5 col-form-label">
                                            <h3 class="card-title text-bold text-lg">Szkoła/Oddział: </h3>
                                        </label>
                                        <div class="col-12">
                                            <input class="form-control" type="text" name="department" value="${vehicle.department}">
                                        </div>
                                    </div>
                                    <p class="float-right">
                                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
                                            Usuń
                                        </button>
                                    </p>
                                    <p class="float-right mr-1">
                                        <input class="btn btn-dark pull-left" type="submit" value="Zapisz zmiany" id="searchButton"/>
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- The Modal -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->


    </div>
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Czy na pewno chcesz usunąć auto?</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    Jeżeli usuniesz to już nie będzie odwrotu
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-dark" data-dismiss="modal">Anuluj</button>
                    <form method="post" action='<c:url value="/editVehicle/${vehicle.id}"/>'>
                        <input type="submit" class="btn btn-danger pull-left" value="Tak"/>
                    </form>
                </div>

            </div>

        </div>
    </div>
    <!-- /.content-wrapper -->
    <%@include file="../dynamic/footer.jspf"%>
</div>
<!-- ./wrapper -->

<%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>
