<!DOCTYPE html>
<html lang="pl">
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <title>AdminLTE 3 | Strona główna</title>

    <%@include file="dynamic/link.jspf" %>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <%@include file="dynamic/navigationMain.jspf"%>

    <!-- Content Wrapper. Contains page content -->

    <div class="content-wrapper background-main-image">
        <!-- Content Header (Page header) -->
        <div class="content-header bg-light mb-3 opacity section-border">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <h1>Strona główna</h1>
                        <h6>Kategorie - informacje</h6>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.content-header -->
        <div id="content">
            <!-- Begin Page Content -->
            <div class="container-fluid opacity">
                <div class="row justify-content-center">
                    <div class="col-md-10">
                        <div class="card card-primary card-tabs">
                            <div class="card-header p-0 pt-1">
                                <ul class="nav nav-tabs" id="a-nav" role="tablist">
                                    <li class="pt-2 px-3"><h3 class="card-title">Kategorie A</h3></li>
                                    <li class="nav-item">
                                        <a class="nav-link active" id="am-tab" data-toggle="pill" href="#am" role="tab" aria-controls="am" aria-selected="false">AM</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="a1-tab" data-toggle="pill" href="#a1" role="tab" aria-controls="a1" aria-selected="false">A1</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " id="a2-tab" data-toggle="pill" href="#a2" role="tab" aria-controls="a2" aria-selected="true">A2</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="a-tab" data-toggle="pill" href="#a" role="tab" aria-controls="a" aria-selected="true">A</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-body">
                                <div class="tab-content" id="custom-tabs-five-tabContent">
                                    <div class="tab-pane fade active show" id="am" role="tabpanel" aria-labelledby="am-tab">

                                        Prawo jazdy kat. AM uprawnia do kierowania:
                                        <li>motorowerem;</li>
                                        <li>czterokołowcem lekkim</li>
                                        <li>łem złożonym z pojazdu określonego dla kat. AM oraz przyczepy.</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 14 lat.

                                    </div>
                                    <div class="tab-pane fade" id="a1" role="tabpanel" aria-labelledby="a1-tab">
                                        Prawo jazdy kat. A1 uprawnia do kierowania:
                                        <li>motocyklem o pojemności skokowej silnika nieprzekraczającej 125 cm3, mocy nieprzekraczającej 11 kW i stosunku mocy do masy własnej nieprzekraczającym 0,1 kW/kg;</li>
                                        <li>motocyklem trójkołowym o mocy nieprzekraczającej 15 kW;</li>
                                        <li>pojazdami określonymi dla prawa jazdy kat. AM;</li>
                                        <li>zespołem pojazdów złożonym z pojazdu określonego dla kat. A1 oraz przyczepy.</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 16 lat.
                                    </div>
                                    <div class="tab-pane fade " id="a2" role="tabpanel" aria-labelledby="a2-tab">
                                        Prawo jazdy kat. A2 uprawnia do kierowania:
                                        <li>motocyklem o mocy nieprzekraczającej 35 kW i stosunku mocy do masy własnej nieprzekraczającym 0,2 kW/kg, przy czym nie może on powstać w wyniku wprowadzenia zmian w pojeździe o mocy przekraczającej dwukrotność mocy tego motocykla;</li>
                                        <li>motocyklem trójkołowym o mocy nieprzekraczającej 15 kW;</li>
                                        <li>pojazdami określonymi dla prawa jazdy AM;</li>
                                        <li>zespołem pojazdów złożonym z pojazdu określonego dla kat. A2 oraz przyczepy.</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 18 lat.
                                    </div>
                                    <div class="tab-pane fade" id="a" role="tabpanel" aria-labelledby="a-tab">
                                        Prawo jazdy kat. A uprawnia do kierowania:
                                        <li> motocyklem;</li>
                                        <li>pojazdami określonymi dla prawa jazdy kat. AM;</li>
                                        <li>zespołem pojazdów złożonym z pojazdu określonego dla kat. A oraz przyczepy;</li>
                                        <li>motocyklem trójkołowym o mocy przekraczającej 15 kW (minimalny wymagany wiek: 21 lat).</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień:

                                        <li>24 lata;</li>
                                        <li>20 lat dla osób posiadających prawo jazdy kat. A2 od co najmniej 2 lat</li>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-10">
                        <div class="card card-primary card-tabs">
                            <div class="card-header p-0 pt-1">
                                <ul class="nav nav-tabs" id="b-nav" role="tablist">
                                    <li class="pt-2 px-3"><h3 class="card-title">Kategorie B</h3></li>
                                    <li class="nav-item">
                                        <a class="nav-link active" id="b1-tab" data-toggle="pill" href="#b1" role="tab" aria-controls="b1" aria-selected="true">B1</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="b-tab" data-toggle="pill" href="#b" role="tab" aria-controls="b" aria-selected="false">B</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="be-tab" data-toggle="pill" href="#be" role="tab" aria-controls="be" aria-selected="false">B+E</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-body">
                                <div class="tab-content" id="b1-content">
                                    <div class="tab-pane fade show active" id="b1" role="tabpanel" aria-labelledby="b1-tab">
                                        Prawo jazdy kat. B1 uprawnia do kierowania:
                                        <li>czterokołowcem</li>
                                        <li>pojazdami określonymi dla kat. AM.</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 16 lat.
                                    </div>
                                    <div class="tab-pane fade" id="b" role="tabpanel" aria-labelledby="b-tab">
                                        Kategoria B prawa jazdy uprawnia do jazdy:
                                        <li>samochodem osobowym; </li>
                                        <li>dostawczym; </li>
                                        <li>lekką ciężarówką (wciąż dostawczym) o dopuszczalnej masie całkowitej do 3,5 tony.</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 18 lat.
                                    </div>
                                    <div class="tab-pane fade" id="be" role="tabpanel" aria-labelledby="be-tab">
                                        Prawo jazdy kategorii B+E uprawnia do kierowania:
                                        <li>pojazdem określonym w kategorii B, łącznie z przyczepą, przy czym dopuszczalna masa całkowita ciągniętej przyczepy nie może przekraczać 3,5 t.</li>
                                        <li>ciągnikiem rolniczym z przyczepą (przyczepami) lub pojazdem wolnobieżnym z przyczepą (przyczepami).</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 18 lat.
                                    </div>
                                </div>
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
                </div>


                <div class="row justify-content-center">
                    <div class="col-md-10">
                        <div class="card card-primary card-tabs">
                            <div class="card-header p-0 pt-1">
                                <ul class="nav nav-tabs" id="c-nav" role="tablist">
                                    <li class="pt-2 px-3"><h3 class="card-title">Kategorie C</h3></li>
                                    <li class="nav-item">
                                        <a class="nav-link active" id="c1-tab" data-toggle="pill" href="#c1" role="tab" aria-controls="c1" aria-selected="true">C1</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="c1e-tab" data-toggle="pill" href="#c1e" role="tab" aria-controls="c1e" aria-selected="false">C1+E</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="c-tab" data-toggle="pill" href="#c" role="tab" aria-controls="c" aria-selected="false">C</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="ce-tab" data-toggle="pill" href="#ce" role="tab" aria-controls="ce" aria-selected="false">C+E</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-body">
                                <div class="tab-content" id="c1-content">
                                    <div class="tab-pane fade show active" id="c1" role="tabpanel" aria-labelledby="c1-tab">
                                        Prawo jazdy kat. C1 uprawnia do kierowania:

                                        <li>pojazdem samochodowym o dopuszczalnej masie całkowitej przekraczającej 3,5 t i nieprzekraczającej 7,5 t, z wyjątkiem autobusu,</li>
                                        <li>w/w pojazdem z przyczepą lekką,</li>
                                        <li>pojazdami określonymi dla kat. AM;</li>
                                        <li>ciągnikiem rolniczym lub pojazdem wolnobieżnym, również z przyczepą lekką.</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 18 lat.
                                    </div>
                                    <div class="tab-pane fade" id="c1e" role="tabpanel" aria-labelledby="c1e-tab">
                                        Prawo jazdy kategorii C1+E uprawnia do kierowania:

                                        <li>zespołem pojazdów o dopuszczalnej masie całkowitej nieprzekraczającej 12 t, składającym się z pojazdu ciągnącego określonego w kategorii c1 i przyczepy,</li>
                                        <li>ciągnikiem rolniczym z przyczepą (przyczepami) lub pojazdem wolnobieżnym z przyczepą (przyczepami).</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 18 lat.
                                    </div>
                                    <div class="tab-pane fade" id="c" role="tabpanel" aria-labelledby="c-tab">
                                        Prawo jazdy kategorii C uprawnia do kierowania:

                                        <li>pojazdem samochodowym o dopuszczalnej masie całkowitej przekraczającej 3,5 t, z wyjątkiem autobusu,</li>
                                        <li>w/w pojazdem z przyczepą lekką,</li>
                                        <li>pojazdami określonymi dla kat. AM;</li>
                                        <li>ciągnikiem rolniczym lub pojazdem wolnobieżnym.</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 21 lat.

                                        Dla osób, które uzyskały kwalifikację wstępną określoną w przepisach rozdziału 7a ustawy z dn. 6.09.2001 r. o transporcie drogowym, minimalny wiek do uzyskania uprawnień wynosi 18 lat.

                                    </div>
                                    <div class="tab-pane fade" id="ce" role="tabpanel" aria-labelledby="ce-tab">
                                        Prawo jazdy kategorii C+E uprawnia do kierowania:

                                        <li>pojazdem określonym w kategorii C łącznie z przyczepą,</li>
                                        <li>zespołem pojazdów określonych w kat. B+E, pod warunkiem jednoczesnego posiadania prawa jazdy kat. B,</li>
                                        <li>zespołem pojazdów określonych w kat. D+E, pod warunkiem jednoczesnego posiadania prawa jazdy kat. D,</li>
                                        <li>ciągnikiem rolniczym z przyczepą (przyczepami) lub pojazdem wolnobieżnym z przyczepą (przyczepami).</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 21 lat.
                                    </div>
                                </div>
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-10">
                        <div class="card card-primary card-tabs">
                            <div class="card-header p-0 pt-1">
                                <ul class="nav nav-tabs" id="d-nav" role="tablist">
                                    <li class="pt-2 px-3"><h3 class="card-title">Kategorie D</h3></li>
                                    <li class="nav-item">
                                        <a class="nav-link active" id="d1-tab" data-toggle="pill" href="#d1" role="tab" aria-controls="d1" aria-selected="true">D1</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="d1e-tab" data-toggle="pill" href="#d1e" role="tab" aria-controls="d1e" aria-selected="false">D1+E</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="d-tab" data-toggle="pill" href="#d" role="tab" aria-controls="d" aria-selected="false">D</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="de-tab" data-toggle="pill" href="#de" role="tab" aria-controls="de" aria-selected="false">D+E</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-body">
                                <div class="tab-content" id="d1-content">
                                    <div class="tab-pane fade show active" id="d1" role="tabpanel" aria-labelledby="d1-tab">
                                        Prawo jazdy kategorii D1 uprawnia do kierowania:

                                        <li>autobusem przeznaczonym konstrukcyjnie do przewozu nie więcej niż 17 osób łącznie z kierowcą, o długości nieprzekraczającej 8 m;</li>
                                        <li>w/w pojazdem z przyczepą lekką,</li>
                                        <li>pojazdami określonymi dla kat. AM;</li>
                                        <li>ciągnikiem rolniczym lub pojazdem wolnobieżnym, również z przyczepą lekką.</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 21 lat.
                                    </div>
                                    <div class="tab-pane fade" id="d1e" role="tabpanel" aria-labelledby="d1e-tab">
                                        Prawo jazdy kategorii D1+E uprawnia do kierowania:

                                        <li>zespołem pojazdów o dopuszczalnej masie całkowitej nieprzekraczającej 12 t, składającym się z pojazdu ciągnącego określonego w kategorii D1 i przyczepy;</li>
                                        <li>ciągnikiem rolniczym z przyczepą (przyczepami) lub pojazdem wolnobieżnym z przyczepą (przyczepami).</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 21 lat.
                                    </div>
                                    <div class="tab-pane fade" id="d" role="tabpanel" aria-labelledby="d-tab">
                                        Prawo jazdy kategorii D uprawnia do kierowania:

                                        <li>autobusem,</li>
                                        <li>w/w pojazdem z przyczepą lekką,</li>
                                        <li>pojazdami określonymi dla kat. AM;</li>
                                        <li>ciągnikiem rolniczym lub pojazdem wolnobieżnym, także z przyczepą lekką.</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 24 lat.Dla osób, które uzyskały kwalifikację wstępną określoną w przepisach rozdziału 7a ustawy z dn. 6.09.2001 r. o transporcie drogowym, minimalny wiek do uzyskania uprawnień wynosi 21 lat.
                                    </div>
                                    <div class="tab-pane fade" id="de" role="tabpanel" aria-labelledby="de-tab">
                                        Prawo jazdy kategorii D+E uprawnia do kierowania:

                                        <li>pojazdem określonym w kategorii D, łącznie z przyczepą,</li>
                                        <li> zespołem pojazdów określonych w kat. be, pod warunkiem jednoczesnego posiadania prawa jazdy kat. B,</li>
                                        <li>ciągnikiem rolniczym z przyczepą (przyczepami) lub pojazdem wolnobieżnym z przyczepą (przyczepami).</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 24 lat.Dla osób, które uzyskały kwalifikację wstępną określoną w przepisach rozdziału 7a ustawy z dn. 6.09.2001 r. o transporcie drogowym, minimalny wiek do uzyskania uprawnień wynosi 21 lat.
                                    </div>
                                </div>
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-10">
                        <div class="card card-primary card-tabs">
                            <div class="card-header p-0 pt-1">
                                <ul class="nav nav-tabs" id="t-nav" role="tablist">
                                    <li class="pt-2 px-3"><h3 class="card-title">Kategorie T</h3></li>
                                    <li class="nav-item">
                                        <a class="nav-link active" id="t-tab" data-toggle="pill" href="#t" role="tab" aria-controls="t" aria-selected="true">T</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-body">
                                <div class="tab-content" id="t-content">
                                    <div class="tab-pane fade show active" id="t" role="tabpanel" aria-labelledby="t-tab">
                                        Prawo jazdy kategorii T uprawnia do kierowania:

                                        <li>ciągnikiem rolniczym lub pojazdem wolnobieżnym;</li>
                                        <li> zespołem pojazdów, złożonym z ciągnika rolniczego z przyczepą (przyczepami) lub pojazdu wolnobieżnego z przyczepą (przyczepami);</li>
                                        <li>pojazdami określonymi dla prawa jazdy kat. AM.</li>
                                        Wymagany minimalny wiek do uzyskania uprawnień: 16 lat.
                                    </div>
                                </div>
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
                </div>


            </div>
        </div>

        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <%@include file="dynamic/footer.jspf"%>
    <!-- ./wrapper -->
</div>
<%@include file="dynamic/javaScript.jspf" %>
</body>
</html>
