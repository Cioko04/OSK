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
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-header border-0">
                                <div class="d-flex justify-content-between">
                        <span>
                          <p>
                            <h3 class="card-title text-bold text-lg">Imię: </h3>
                            </p>
                            <p>
                            <input
                                    type="text"
                                    id="username"
                                    name="username"
                                    placeholder="${person.name}"
                            />
                          </p>
                          <p>
                            <h3 class="card-title text-bold text-lg">Nazwisko: </h3>
                            </p>
                            <p>
                            <input
                                    type="text"
                                    id="surname"
                                    name="surname"
                                    placeholder="${person.surname}"
                            />
                          </p>
                          <p>
                            <h3 class="card-title text-bold text-lg">Hasło: </h3>
                            </p>
                            <p>
                            <input
                                    type="password"
                                    id="password"
                                    name="password"
                            />
                          </p>
                          <p>
                            <h3 class="card-title text-bold text-lg">Wiek: </h3>
                            </p>
                            <p>
                            <input
                                    type="text"
                                    id="age"
                                    name="age"
                                    aria-describedby="emailHelp"
                                    placeholder="${person.age}"
                            />
                          </p>
                          <p>
                            <h3 class="card-title text-bold text-lg">Zdjęcie: </h3>
                            </p>
                            <p>
                            <input
                                    type="image"
                                    id="image"
                                    name="image"
                            />
                          </p>
                          <p>
                            <input class="btn btn-primary" type="submit" value="Zapisz zmiany" id="searchButton"/>
                          </p>
                        </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
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
