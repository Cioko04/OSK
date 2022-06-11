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

        <!-- Main content -->
        <div class="container-fluid opacity">
            <form method="post" action='<c:url value="/addVehicle"/>'>
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
                                        <input class="form-control" type="text" name="name" placeholder="uzupełnij nazwę pojazdu">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-5 col-form-label">
                                        <h3 class="card-title text-bold text-lg">Typ: </h3>
                                    </label>
                                    <div class="col-12">
                                        <input class="form-control" type="text" name="type" placeholder="uzupełnij typ pojazdu">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-5 col-form-label">
                                        <h3 class="card-title text-bold text-lg">Status: </h3>
                                    </label>
                                    <div class="col-12">
                                        <input class="form-control" type=text name="status" placeholder="uzuepłnij status">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-5 col-form-label">
                                        <h3 class="card-title text-bold text-lg">Kolor kalendarza: </h3>
                                    </label>
                                    <div class="col-12">
                                        <input class="form-control" type=text name="colour" placeholder="podaj kolor kalendarza">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-5 col-form-label">
                                        <h3 class="card-title text-bold text-lg">Szkoła/Oddział: </h3>
                                    </label>
                                    <div class="col-12">
                                        <input class="form-control" type=text name="department" placeholder="uzuepłnij szkołę/oddział">
                                    </div>

                                </div>

                                <p class="float-right mr-1">
                                    <input class="btn btn-dark pull-left" type="submit" value="Dodaj auto" id="searchButton"/>
                                </p>

                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <%@include file="../dynamic/footer.jspf"%>
</div>
<!-- ./wrapper -->

<%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>
