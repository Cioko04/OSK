<!DOCTYPE html>
<html lang="pl">
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <title>OSK Service | Kursy</title>

    <%@include file="../dynamic/link.jspf" %>
</head>
<!--
`body` tag options:

  Apply one or more of the following classes to to the body tag
  to get the desired effect

  * sidebar-collapse
  * sidebar-mini
-->
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
                        <h1>Kursy</h1>
                    </div>
                    <div class="col-sm-6 d-none d-sm-block">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href='<c:url value="/"/>'>Strona główna</a></li>
                            <li class="breadcrumb-item active">Kursy</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content opacity">
            <div class="container-fluid ">
                <!-- Info boxes -->
                <div class="row ">
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box">
                            <span class="info-box-icon bg-primary elevation-1"><i class="fa fa-user"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Ilość instruktorów</span>
                                <span class="info-box-number">${instructorsCount}</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                            <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-user-graduate"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Ilość kursantów</span>
                                <span class="info-box-number">${clientsCount}</span>
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
                            <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-car"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Ilość samochodów</span>
                                <span class="info-box-number">${vehicleCount}</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                            <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-tachometer-alt"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Ilość kursów</span>
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
                    <div class="col col-lg-2 opacity-08">

                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>AM<sup style="font-size: 15px"> kategoria</sup></h3>
                                <p>14 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>A1<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>16 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col col-lg-2 opacity-08">
                        <!-- small box -->
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>A2<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>18 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-person-add"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>A<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>20 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>B1<sup style="font-size: 15px"> kategoria</sup></h3>
                                <p>16 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>B<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>18 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>B+E<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>18 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>C<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>21 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>C1<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>18 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>C1+E<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>18 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>C+E<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>21 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>D<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>24 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>D1<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>21 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>D1+E<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>21 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>D+E<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>24 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-lg-2 opacity-08">
                        <div class="small-box bg-primary">
                            <div class="inner">
                                <h3>T<sup style="font-size: 15px"> kategoria</sup></h3>

                                <p>16 lat</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">Idziemy dalej <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-2 col-2 opacity-08">
                        <div class="small-box bg-primary">
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
</div>
</div>
    <!-- /.content -->
<!-- /.content-wrapper -->
<%@include file="../dynamic/footer.jspf"%>
<!-- ./wrapper -->
<%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>
