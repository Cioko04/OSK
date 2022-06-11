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

        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <div class="container-fluid">
            <form method="post" action='<c:url value="/addClient"/>'>
                <!-- Content Row -->
                <div class="row justify-content-center">
                    <div class="col-xl-8 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">
                                        <h3 class="card-title text-bold text-lg">Imię: </h3>
                                    </label>
                                    <div class="col-10">
                                        <input class="form-control" type="text" name="name" placeholder="uzupełnij imię">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-2 col-form-label">
                                        <h3 class="card-title text-bold text-lg">Nazwisko: </h3>
                                    </label>
                                    <div class="col-10">
                                        <input class="form-control" type="text" name="surname" placeholder="uzupełnij nazwisko">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-2 col-form-label">
                                        <h3 class="card-title text-bold text-lg">Wiek: </h3>
                                    </label>
                                    <div class="col-10">
                                            <input class="form-control" type=number name="age" placeholder="uzupełnij wiek">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-2 col-form-label">
                                        <h3 class="card-title text-bold text-lg">Email: </h3>
                                    </label>
                                    <div class="col-10">
                                        <input class="form-control" type=text name="email" placeholder="uzupełnij email">
                                    </div>
                                </div>
                                <input
                                        type="hidden"
                                        name="accountNonExpired"
                                        value="${true}"
                                />
                                <input
                                        type="hidden"
                                        name="accountNonLocked"
                                        value="${true}"
                                />
                                <input
                                        type="hidden"
                                        name="credentialsNonExpired"
                                        value="${true}"
                                />

                                <p class="float-right m-1">
                                    <input class="btn btn-primary pull-left" type="submit" value="Dodaj użytkownika" id="searchButton"/>
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
    <%@include file="../dynamic/footer.jspf"%>>
</div>
<!-- ./wrapper -->

<%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>
