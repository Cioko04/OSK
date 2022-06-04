<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<title>OSK Service | Dashboard</title>

<%@include file="dynamic/link.jspf" %>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <%@include file="dynamic/topNavigation.jspf"%>

    <%@include file="dynamic/navigationMain.jspf"%>

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

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col-lg-6 col-6">
                        <div class="info-box bg-primary">
                            <span class="info-box-icon"><i class="fas fa-user"></i></span>
                            <div class="info-box-content" style="text-align:center">
                                <span class="info-box-text">
                                    <h3>${instructorsCount}</h3>
                                </span>
                                <span class="info-box-number">Instruktorzy</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                    </div>
                    <div class="col-lg-6 col-6">
                        <div class="info-box bg-primary">
                            <span class="info-box-icon"><i class="fas fa-user-graduate"></i></span>
                            <div class="info-box-content" style="text-align:center">
                                <span class="info-box-text">
                                    <h3>${clientsCount}</h3>
                                </span>
                                <span class="info-box-number">Kursanci</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->




    </div>
    <!-- footer -->
    <%@include file="dynamic/footer.jspf"%>
</div>
<!-- ./wrapper -->

<%@include file="dynamic/javaScript.jspf" %>
</body>
</html>
