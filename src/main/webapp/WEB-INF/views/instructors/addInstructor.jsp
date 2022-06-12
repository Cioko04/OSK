<!DOCTYPE html>
<html lang="en">
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <title>OSK Service | Instructor</title>

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
        <div class="content-header">
        </div>
        <!-- /.content-header -->


        <!-- Main Content -->
        <div id="content">
            <div class="container-fluid opacity">
                <form method="post" action='<c:url value="/addInstructor"/>'>
                    <!-- Content Row -->
                    <div class="row justify-content-center">
                        <div class="col-xl-8 col-md-12 mb-12">
                            <div class="card shadow mb-4 form-border">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <label class="col-5 col-form-label">
                                            <h3 class="card-title text-bold text-lg">Imię: </h3>
                                        </label>
                                        <div class="col-12">
                                            <input class="form-control" type="text" name="name" placeholder="uzupełnij imię">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label  class="col-5 col-form-label">
                                            <h3 class="card-title text-bold text-lg">Nazwisko: </h3>
                                        </label>
                                        <div class="col-12">
                                            <input class="form-control" type="text" name="surname" placeholder="uzupełnij nazwisko">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label  class="col-5 col-form-label">
                                            <h3 class="card-title text-bold text-lg">Wiek: </h3>
                                        </label>
                                        <div class="col-12">
                                            <input class="form-control" type=number name="age" placeholder="uzupełnij wiek">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label  class="col-5 col-form-label">
                                            <h3 class="card-title text-bold text-lg">Email: </h3>
                                        </label>
                                        <div class="col-12">
                                            <input class="form-control" type=text name="email" placeholder="uzupełnij email">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label  class="col-5 col-form-label">
                                            <h3 class="card-title text-bold text-lg">Opis: </h3>
                                        </label>
                                        <div class="col-12">
                                            <input class="form-control" type="text" name="description" placeholder="Dodaj opis">
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
                                                    <input type="checkbox" class="form-check-input" value="A" name="catA">
                                                    <label class="form-check-label" >A</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="A1" name="catA_1">
                                                    <label class="form-check-label">A1</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="A2" name="catA_2">
                                                    <label class="form-check-label">A2</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="AM" name="catAM">
                                                    <label class="form-check-label">AM</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="B" name="catB">
                                                    <label class="form-check-label" >B</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="B1" name="catB1" >
                                                    <label class="form-check-label" >B1</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="BE" name="catBE">
                                                    <label class="form-check-label" >BE</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="C" name="catC">
                                                    <label class="form-check-label" >C</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check" disabled>
                                                    <input type="checkbox" class="form-check-input" value="C1" name="catC1">
                                                    <label class="form-check-label" >C1</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="CE" name="catCE">
                                                    <label class="form-check-label" >CE</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="C1E" name="catC1E">
                                                    <label class="form-check-label" >C1E</label>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="D" name="catD">
                                                    <label class="form-check-label" >D</label>
                                                </div>
                                            </div>
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="D1" name="catD1">
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
                                                    <input type="checkbox" class="form-check-input" value="D1E" name="catD1E">
                                                    <label class="form-check-label" >D1E</label>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" value="T" name="catT">
                                                    <label class="form-check-label" >T</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <p class="float-right mr-1">
                                        <input class="btn btn-dark pull-left" type="submit" value="Dodaj instruktora" id="searchButton"/>
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>



        </div>
        <!-- End of Main Content -->


    </div>
    <!-- /.content-wrapper -->
    <%@include file="../dynamic/footer.jspf"%>
    <!-- ./wrapper -->
</div>
<%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>
