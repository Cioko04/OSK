<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OSK Projekt | Validation Form</title>

    <%@include file="../dynamic/link.jspf" %>
</head>
<body class="hold-transition sidebar-mini">
<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Witaj !</h1>
                                </div>
                                <form class="user" method="post" action='<c:url value="/login"/> '>
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user"
                                               id="exampleInputEmail" name="username" aria-describedby="emailHelp"
                                               placeholder="Wprowadź swój login">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user"
                                               id="exampleInputPassword" name="password" placeholder="Hasło">
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <input type="checkbox" class="custom-control-input" id="customCheck">
                                            <label class="custom-control-label" for="customCheck">Zapamiętaj
                                                mnie</label>
                                        </div>
                                    </div>
                                    <div></div>
                                    <input type="submit" value="Login" class="btn btn-primary btn-user btn-block">
                                    <hr>

                                </form>
                                <div class="text-center">
                                    <a class="small" href="#">Utwórz konto!</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3"></div>
                    </div>
                </div>
            </div>

        </div>

    </div>


</div>
</body>

