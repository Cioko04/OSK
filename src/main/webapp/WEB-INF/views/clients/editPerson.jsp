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
                    <form method="post" action='<c:url value="/addClient/${client.id}"/>'>
                        <!-- Content Row -->
                        <div class="row justify-content-center">
                            <div class="col-xl-8 col-md-12 mb-12">
                                <div class="card shadow mb-4 form-border">
                                    <div class="card-header py-3">
                                        <div class="form-group row">
                                            <label class="col-2 col-form-label">
                                                <h3 class="card-title text-bold text-lg">Imię: </h3>
                                            </label>
                                            <div class="col-10">
                                                <input class="form-control" type="text" name="name" value="${client.name}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label  class="col-2 col-form-label">
                                                <h3 class="card-title text-bold text-lg">Nazwisko: </h3>
                                            </label>
                                            <div class="col-10">
                                                <input class="form-control" type="text" name="surname" value="${client.surname}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label  class="col-2 col-form-label">
                                                <h3 class="card-title text-bold text-lg">Wiek: </h3>
                                            </label>
                                            <div class="col-10">
                                                <input class="form-control" type="number" name="age" value="${client.age}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label  class="col-2 col-form-label">
                                                <h3 class="card-title text-bold text-lg">Email: </h3>
                                            </label>
                                            <div class="col-10">
                                                <input class="form-control" type="email" name="email" value="${client.email}">
                                            </div>
                                        </div>
                                        <input
                                                type="hidden"
                                                name="password"
                                                value="${client.password}"
                                        />
                                        <input
                                                type="hidden"
                                                name="role"
                                                value="${client.role}"
                                        />
                                        <input
                                                type="hidden"
                                                name="enabled"
                                                value="${true}"
                                        />
                                        <p class="float-right m-1">
                                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
                                                Usuń
                                            </button>
                                        </p>
                                        <p class="float-right m-1">
                                            <input class="btn btn-primary pull-left" type="submit" value="Zapisz zmiany" id="searchButton"/>
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <!-- The Modal -->
                    <div class="modal" id="myModal">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">Czy na pewno chcesz usunąć osobę ?</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    Jeżeli usuniesz to już nie będzie odwrotu
                                </div>

                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Anuluj</button>
                                    <form method="post" action='<c:url value="/editClient/${client.id}"/>'>
                                        <input type="submit" class="btn btn-danger pull-left" value="Tak"/>
                                    </form>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            <!-- /.container-fluid -->

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
