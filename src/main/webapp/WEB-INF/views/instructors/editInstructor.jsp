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

            <%--                    <!-- Topbar -->--%>
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->

                </button>



                <%--                        <!-- Topbar Navbar -->--%>
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>




                    <div class="topbar-divider d-none d-sm-block"></div>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <form method="post" action='<c:url value="/addInstructor/${instructor.id}"/>'>
                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Imię</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="name" value="${instructor.name}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label  class="col-2 col-form-label">Nazwisko</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="surname" value="${instructor.surname}">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label  class="col-2 col-form-label">Wiek</label>
                                        <div class="col-10">
                                            <input class="form-control" type="number" name="age" value="${instructor.age}">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Opis dodatkowy</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="description" value="${instructor.description}">
                                        </div>
                                    </div>
                                    <div class="form-group">

                                        <div class="row">
                                            <div class="col-3">
                                                <p class="text-right"><label>Szkoli w zakresie kategorii:</label></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="A" name="catA">
                                                    <label class="form-check-label" >A</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="A1" name="catA_1">
                                                    <label class="form-check-label">A1</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="A2" name="catA_2">
                                                    <label class="form-check-label">A2</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="AM" name="catAM">
                                                    <label class="form-check-label">AM</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="B" name="catB">
                                                    <label class="form-check-label" >B</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="B1" name="catB1" >
                                                    <label class="form-check-label" >B1</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="BE" name="catBE">
                                                    <label class="form-check-label" >BE</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="C" name="catC">
                                                    <label class="form-check-label" >C</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check" disabled>
                                                    <input type="checkbox" class="form-check-input" value="C1" name="catC1">
                                                    <label class="form-check-label" >C1</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="CE" name="catCE">
                                                    <label class="form-check-label" >CE</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="C1E" name="catC1E">
                                                    <label class="form-check-label" >C1E</label>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="D" name="catD">
                                                    <label class="form-check-label" >D</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="D1" name="catD1">
                                                    <label class="form-check-label" >D1</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="DE" name="catDE">
                                                    <label class="form-check-label" >DE</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="D1E" name="catD1E">
                                                    <label class="form-check-label" >D1E</label>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="T" name="catT">
                                                    <label class="form-check-label" >T</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                    <input class="btn btn-success pull-left" type="submit" value="Zapisz zmiany" id="searchButton"></input>


                    <!-- Button to Open the Modal -->
                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
                        Usuń
                    </button>
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
                                <form method="post" action='<c:url value="/editInstructor/${instructor.id}"/>'>
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
