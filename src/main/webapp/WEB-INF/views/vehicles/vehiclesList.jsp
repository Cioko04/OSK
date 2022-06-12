<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<title>OSK Service | Auto</title>

<%@include file="../dynamic/link.jspf" %>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <%@include file="../dynamic/navigationMain.jspf"%>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper background-main-image">
        <!-- Content Header (Page header) -->
        <div class="content-header bg-light mb-3 opacity section-border">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <h1>Samochody</h1>
                    </div>
                    <div class="col-sm-6 d-none d-sm-block">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href='<c:url value="/"/>'>Strona główna</a></li>
                            <li class="breadcrumb-item active">Samochody</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <div id="content">
            <!-- Begin Page Content -->
            <div class="container-fluid opacity">
                <!-- Content Row -->
                <div class="row justify-content-center">
                    <div class="col-xl-10 col-md-12 mb-12">
                        <div class="card shadow mb-4 form-border">
                            <div class="card-header py-3 ">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th scope="col" style="width: 17%">Nazwa</th>
                                        <th scope="col" style="width: 17%">Typ zasobu</th>
                                        <th scope="col" style="width: 17%">Status</th>
                                        <th scope="col" style="width: 17%">Kolor kalendarza</th>
                                        <th scope="col" style="width: 17%">Szkoła/Oddział</th>
                                        <th scope="col" style="width: 15%"></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${vehicle}" var="title">
                                        <tr>
                                            <td class="align-middle">${title.name}</td>
                                            <td class="align-middle">${title.type}</td>
                                            <td class="align-middle">${title.status}</td>
                                            <td class="align-middle">${title.colour}</td>
                                            <td class="align-middle">${title.department}</td>
                                            <td class="align-middle text-right"><a href='<c:url value="/editVehicle/${title.id}"/>'
                                                                                   class="btn btn-app bg-dark">
                                                <i class="fas fa-edit"></i>Edytuj
                                            </a>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <a href='<c:url value="/addVehicle"/>' class="btn btn-dark btn-icon-split">
                                        <span class="icon text-white-50">
                                          <i class="fas fa-info-circle"></i>
                                        </span>
                                    <span class="text">Dodaj nowe auto</span>
                                </a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->

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
