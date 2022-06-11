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
                <form method="post" action='<c:url value="/addInstructor/${instructor.id}"/>'>
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
                                            <input class="form-control" type="text" name="name" value="${instructor.name}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label  class="col-2 col-form-label">
                                            <h3 class="card-title text-bold text-lg">Nazwisko: </h3>
                                        </label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="surname" value="${instructor.surname}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label  class="col-2 col-form-label">
                                            <h3 class="card-title text-bold text-lg">Wiek: </h3>
                                        </label>
                                        <div class="col-10">
                                            <input class="form-control" type="number" name="age" value="${instructor.age}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label  class="col-2 col-form-label">
                                            <h3 class="card-title text-bold text-lg">Email: </h3>
                                        </label>
                                        <div class="col-10">
                                            <input class="form-control" type="email" name="email" value="${instructor.email}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <label  class="col-12 col-form-label">
                                                <h3 class="card-title text-bold text-lg">Szkoli w zakresie kategorii: </h3>
                                            </label>
                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="A" name="catA"
                                                    <c:choose>
                                                    <c:when test="${instructor.catA != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>
                                                    >
                                                    <label class="form-check-label">A</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="A1" name="catA_1"
                                                    <c:choose>
                                                    <c:when test="${instructor.catA_1 != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>
                                                    >
                                                    <label class="form-check-label">A1</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="A2" name="catA_2"
                                                    <c:choose>
                                                    <c:when test="${instructor.catA_2 != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>
                                                    >
                                                    <label class="form-check-label">A2</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="AM" name="catAM"
                                                    <c:choose>
                                                    <c:when test="${instructor.catAM != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>
                                                    >
                                                    <label class="form-check-label">AM</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="B" name="catB"
                                                    <c:choose>
                                                    <c:when test="${instructor.catB != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>
                                                    >
                                                    <label class="form-check-label" >B</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="B1" name="catB1"
                                                    <c:choose>
                                                    <c:when test="${instructor.catB1 != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>>
                                                    <label class="form-check-label" >B1</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="BE" name="catBE"
                                                    <c:choose>
                                                    <c:when test="${instructor.catBE != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>>
                                                    <label class="form-check-label" >BE</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="C" name="catC"
                                                    <c:choose>
                                                    <c:when test="${instructor.catC != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>>
                                                    <label class="form-check-label" >C</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check" disabled>
                                                    <input type="checkbox" class="form-check-input" value="C1" name="catC1"
                                                    <c:choose>
                                                    <c:when test="${instructor.catC1 != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>>
                                                    <label class="form-check-label" >C1</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="CE" name="catCE"
                                                    <c:choose>
                                                    <c:when test="${instructor.catCE != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>>
                                                    <label class="form-check-label" >CE</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="C1E" name="catC1E"
                                                    <c:choose>
                                                    <c:when test="${instructor.catC1E != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>>
                                                    <label class="form-check-label" >C1E</label>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="D" name="catD"
                                                    <c:choose>
                                                    <c:when test="${instructor.catD != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>>
                                                    <label class="form-check-label" >D</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="D1" name="catD1"
                                                    <c:choose>
                                                    <c:when test="${instructor.catD1 != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>>
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
                                                    <input type="checkbox" class="form-check-input" value="D1E" name="catD1E"
                                                    <c:choose>
                                                    <c:when test="${instructor.catD1E != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>>
                                                    <label class="form-check-label" >D1E</label>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="T" name="catT"
                                                    <c:choose>
                                                    <c:when test="${instructor.catT != null}">
                                                           checked
                                                    </c:when>
                                                    </c:choose>>
                                                    <label class="form-check-label" >T</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <input
                                            type="hidden"
                                            name="password"
                                            value="${instructor.password}"
                                    />
                                    <input
                                            type="hidden"
                                            name="role"
                                            value="${instructor.role}"
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
