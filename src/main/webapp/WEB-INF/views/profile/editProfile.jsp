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
                        <form method="post"
                                <sec:authorize access="hasAnyRole('ROLE_USER_TEST', 'ROLE_USER')">
                                    action='<c:url value="/addClient/${person.id}"/>'
                                </sec:authorize>
                                <sec:authorize access="hasAnyRole('ROLE_ADMIN_TEST', 'ROLE_ADMIN')">
                                    action='<c:url value="/editInstructor/${person.id}"/>'
                                </sec:authorize>
                        >
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
                                    name="name"
                                    value="${person.name}"
                            />
                          </p>
                          <p>
                            <h3 class="card-title text-bold text-lg">Nazwisko: </h3>
                            </p>
                            <p>
                            <input
                                    type="text"
                                    name="surname"
                                    value="${person.surname}"
                            />
                          </p>
                            <p>
                            <h3 class="card-title text-bold text-lg">Email: </h3>
                            </p>
                            <p>
                            <input
                                    type="text"
                                    name="email"
                                    value="${person.email}"
                            />
                          </p>
                          <p>
                            <h3 class="card-title text-bold text-lg">Hasło: </h3>
                            </p>
                            <p>
                            <input
                                    type="password"
                                    name="password"
                                    value="${person.password}"
                            />
                          </p>
                          <p>
                            <h3 class="card-title text-bold text-lg">Wiek: </h3>
                            </p>
                            <p>
                            <input
                                    type="text"
                                    name="age"
                                    value="${person.age}"
                            />
                          </p>
<%--                          <p>--%>
<%--                            <h3 class="card-title text-bold text-lg">Zdjęcie: </h3>--%>
<%--                            </p>--%>
<%--                            <p>--%>
<%--                            <input--%>
<%--                                    type="image"--%>
<%--                                    id="image"--%>
<%--                                    name="image"--%>
<%--                            />--%>
<%--                          </p>--%>
                          <p>
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
                            <input class="btn btn-primary" type="submit" value="Zapisz zmiany" id="searchButton"/>
                          </p>
                        </span>
                                </div>
                            </div>
                        </div>
                        </form>
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
