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
                    <div class="col-xl-10 col-md-12 mb-12">
                        <div class="card shadow mb-4 form-border">
                            <div class="card-header py-3 ">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th scope="col" style="width: 17%">Imię</th>
                                        <th scope="col" style="width: 17%">Nazwisko</th>
                                        <th scope="col" style="width: 10%">Wiek</th>
                                        <th scope="col" style="width: 20.5%">Opis</th>
                                        <th scope="col" style="width: 20.5%">Kategorie</th>
                                        <th scope="col" style="width: 15%"></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${instructor}" var="title">
                                        <tr>
                                            <td class="align-middle">${title.name}</td>
                                            <td class="align-middle">${title.surname}</td>
                                            <td class="align-middle">${title.age}</td>
                                            <td class="align-middle">${title.description}</td>
                                            <td class="align-middle">${title.catA} ${title.catA_1} ${title.catA_2} ${title.catAM}
                                                    ${title.catB} ${title.catB1} ${title.catBE}
                                                    ${title.catC} ${title.catC1} ${title.catCE} ${title.catC1E}
                                                    ${title.catD} ${title.catD1} ${title.catDE} ${title.catD1E}
                                                    ${title.catT}
                                            </td>
                                            <td class="align-middle text-right">
                                                <a href='<c:url value="/editInstructor/${title.id}"/>' class="btn btn-app bg-dark">
                                                    <i class="fas fa-edit"></i>Edytuj
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>

                                    </tbody>
                                </table>
                                <a href='<c:url value="/addInstructor"/>' class="btn btn-dark btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-info-circle"></i>
                                        </span>
                                    <span class="text">Dodaj instruktora</span>
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
    <%@include file="../dynamic/footer.jspf"%>
</div>
<!-- ./wrapper -->

<%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>
