<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>


<%@include file="../dynamic/link.jspf" %>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

    <!-- /.navbar -->
    <%--    Sidebar--%>
    <%@include file="../dynamic/navigationMain.jspf"%>
    <%--    End of sidebar--%>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->

        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Info boxes -->
                <div class="row">
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box">
                            <span class="info-box-icon bg-info elevation-1"><i class="fa fa-align-justify"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Iłość instruktorów szkoły w Polsce</span>
                                <span class="info-box-number">
                  184
                </span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                            <span class="info-box-icon bg-info elevation-1"><i class="fas fa-thumbs-up"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Polubienia</span>
                                <span class="info-box-number">41,410</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->

                    <!-- fix for small devices only -->
                    <div class="clearfix hidden-md-up"></div>

                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                            <span class="info-box-icon bg-info elevation-1"><i class="fas fa-money-check-alt"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Roczny obrót finansowy</span>
                                <span class="info-box-number">126.000 Złotych</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                            <span class="info-box-icon bg-info elevation-1"><i class="fas fa-car"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Iłość samochodów</span>
                                <span class="info-box-number">2,000</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                </div>

                <!-- Main row -->

                <!-- /.row -->
            </div><!--/. container-fluid -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-2 col-2">

                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>AM<sup style="font-size: 15px"> kategoria</sup></h3>
                                <p>14 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/AM"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>A1<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>16 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/A1"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <!-- small box -->
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>A2<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>18 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-person-add"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/A2"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>A<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>20 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/A"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>B1<sup style="font-size: 15px"> kategoria</sup></h3>
                                <p>16 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<body value="/choosingInstructor/B1">' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>B<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>18 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/B"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>B+E<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>18 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/BE"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>C<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>21 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/C"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>C1<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>18 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/C1"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>C1+E<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>18 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/C1E"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>C+E<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>21 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/CE"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>D<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>24 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/D"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>D1<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>21 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/D1"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>D1+E<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>21 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/D1E"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>D+E<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>24 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/DE"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>T<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>16 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href='<c:url value="/choosingInstructor/T"/>' class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>Tramwaj</h3>

                                <p>21 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /.content -->
    </div>

    <!-- Main Footer -->
    <%@include file="../dynamic/footer.jspf"%>>
</div>






<%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>