<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
            <form method="post"
                    <sec:authorize access="hasAnyRole('ROLE_USER_TEST', 'ROLE_USER')">
                        action='<c:url value="/addClient/${person.id}"/>'
                    </sec:authorize>
                    <sec:authorize access="hasAnyRole('ROLE_ADMIN_TEST', 'ROLE_ADMIN')">
                        action='<c:url value="/editInstructor/${person.id}"/>'
                    </sec:authorize>
            >
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
                                        <input class="form-control" type="text" name="name" value="${person.name}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-2 col-form-label">
                                        <h3 class="card-title text-bold text-lg">Nazwisko: </h3>
                                    </label>
                                    <div class="col-10">
                                        <input class="form-control" type="text" name="surname" value="${person.surname}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-2 col-form-label">
                                        <h3 class="card-title text-bold text-lg">Wiek: </h3>
                                    </label>
                                    <div class="col-10">
                                        <input class="form-control" type="number" name="age" value="${person.age}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-2 col-form-label">
                                        <h3 class="card-title text-bold text-lg">Email: </h3>
                                    </label>
                                    <div class="col-10">
                                        <input class="form-control" type="email" name="email" value="${person.email}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-2 col-form-label">
                                        <h3 class="card-title text-bold text-lg">Hasło: </h3>
                                    </label>
                                    <div class="col-10">
                                        <input class="form-control" type="password" name="password" value="${person.password}">
                                    </div>
                                </div>
                                <input
                                        type="hidden"
                                        name="role"
                                        value="${person.role}"
                                />
                                <input
                                        type="hidden"
                                        name="enabled"
                                        value="${true}"
                                />
                                <p class="float-right m-1">
                                    <input class="btn btn-primary pull-left" type="submit" value="Zapisz zmiany" id="searchButton"/>
                                </p>

                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!-- /.content -->
    </div>
    <!-- footer -->
    <%@include file="../dynamic/footer.jspf"%>
</div>
<!-- ./wrapper -->

<%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>
