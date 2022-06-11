<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OSK Projekt | Validation Form</title>
    <link rel="stylesheet" href='<c:url value="/resources/plugins/fontawesome-free/css/all.min.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/dist/css/login-page-style.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/dist/css/semipolar.css"/>'>
</head>
<body class="bg-color">
<div class="container">
<!-- Outer Row -->
<div class="row justify-content-center">
<div class="col-xl-10 col-lg-12 col-md-9">
<div class="card o-hidden border-0 shadow-lg my-5 bg-gradient-light">
<div class="card-body p-0">
<!-- Nested Row within Card Body -->
<div class="row">
<div class="col-lg-6 d-none d-lg-block p-5">
    <div class="semipolar-spinner" :style="spinnerStyle">
        <div class="ring"></div>
        <div class="ring"></div>
        <div class="ring">L</div>
    </div>
</div>
<div class="col-lg-6">
<div class="p-5">
<div class="text-center">
    <h1 class="h4 text-primary mb-4">OSK Zapraszamy!</h1>
</div>
<form class="user" method="post" action='<c:url value="/login"/> '>
<fieldset>
    <c:if test="${not empty param.error}">
        <div class="alert alert-danger">
            Błędne dane logowania!
        </div>
    </c:if>
    <c:if test="${not empty param.logout}">
        <div class="alert alert-success">
            Wylogowano!
        </div>
    </c:if>
        <div class="form-group">
        <input
        type="text"
        class="form-control form-control-user"
        id="username"
        name="username"
        aria-describedby="emailHelp"
        placeholder="Wprowadź swój login"
        />
        </div>
        <div class="form-group">
        <input
        type="password"
        class="form-control form-control-user"
        id="password"
        name="password"
        placeholder="Hasło"
        />
        </div>
        <input
        type="submit"
        value="Zaloguj"
        class="btn btn-success btn-user btn-block"
        />
        <a
        href='<c:url value="/"/>'
        class="btn btn-primary btn-user btn-block"
        >
        <span class="icon text-white">
        <i class="fa fa-caret-square-left"></i>
        </span>
        <span class="text">Strona główna</span>
        </a>

        <hr />

        </fieldset>
        </form>
        </div>
        </div>
        </div>
        </div>
        </div>
        <footer class="main-footer text-light">
        <strong>Projekt OSK</strong>
        All rights reserved.
        <div class="float-right d-none d-sm-inline-block">
        <b>Version</b> alpha 1.0
        </div>
        </footer>
        </div>
        </div>
        </div>
        </body>




