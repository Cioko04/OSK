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

            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">


                <!-- Page Heading -->

                <!-- DataTales Example -->
                <div class="card shadow mb-4">

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table action-panel table-bordered" id="dataTable" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Nazwa</th>
                                    <th>Typ zasobu</th>
                                    <th>Status</th>
                                    <th>Kolor kalendarza</th>
                                    <th>Szkoła/Oddział</th>
                                    <th>Akcja</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>Id</th>
                                    <th>Nazwa</th>
                                    <th>Typ zasobu</th>
                                    <th>Status</th>
                                    <th>Kolor kalendarza</th>
                                    <th>Szkoła/Oddział</th>
                                    <th>Akcja</th>

                                </tr>
                                </tfoot>
                                <tbody>

                                <c:forEach items="${vehicle}" var="title">
                                    <tr>
                                        <td>${title.id}</td>
                                        <td>${title.name}</td>
                                        <td>${title.type}</td>
                                        <td>${title.status}</td>
                                        <td>${title.colour}</td>
                                        <td>${title.department}</td>
                                        <td><a href='<c:url value="/editVehicle/${title.id}"/>'
                                               class="btn-right btn btn-primary" role="button">Edytuj</a>
                                        </td>
                                    </tr>
                                </c:forEach>

                                <!-- The Modal -->
                                <div class="modal" id="umiejetnosci">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal Header -->

                                            <!-- Modal body -->
                                            <div class="modal-body">

                                                <!-- Project Card Example -->

                                            </div>

                                            <!-- Modal footer -->


                                        </div>
                                    </div>
                                </div>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </div>


            </div>

            <div class="card-header py-3">


                <a href='<c:url value="/addVehicle"/>' class="btn btn-info btn-icon-split">
                    <span class="icon text-white-50">
                      <i class="fas fa-info-circle"></i>
                    </span>
                    <span class="text">Dodaj nowego</span>
                </a>

            </div>


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
