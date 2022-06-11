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
        <div id="content">
            <!-- Begin Page Content -->
            <div class="container-fluid opacity">
                <!-- Content Row -->
                <div class="row justify-content-center">
                    <div class="col-xl-8 col-md-12 mb-12">
                        <div class="card shadow mb-4 form-border">
                            <div class="card-header py-3 ">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th scope="col">Imię</th>
                                        <th scope="col">Nazwisko</th>
                                        <th scope="col">Wiek</th>
                                        <th scope="col"></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${client}" var="title">
                                        <tr>
                                            <td>${title.name}</td>
                                            <td>${title.surname}</td>
                                            <td>${title.age}</td>
                                            <td class="text-center"><a href='<c:url value="/editClient/${title.id}"/>'
                                                                       class="btn-right btn btn-primary" role="button">Edytuj</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <a href='<c:url value="/addClient"/>' class="btn btn-primary btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-info-circle"></i>
                                        </span>
                                    <span class="text">Dodaj nowego</span>
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

