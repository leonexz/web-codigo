<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    </style>
  
    <body>
        <nav class="navbar navbar-expand-lg bg-info">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Nuevo</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a style="margin-left: 10px;border:none" class="btn btn-outline-light" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a style="margin-left: 10px;border:none" class="btn btn-outline-light" href="Controlador?menu=Producto&accion=Listar" target="myFrame">Producto</a>
                        </li>
                        <li class="nav-item">
                            <a style="margin-left: 10px;border:none" class="btn btn-outline-light" href="Controlador?menu=Empleado&accion=Listar" target="myFrame">Empleado</a>
                        </li>
                        <li class="nav-item">
                            <a style="margin-left: 10px;border:none" class="btn btn-outline-light" href="Controlador?menu=Cliente&accion=Listar" target="myFrame">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a style="margin-left: 10px;border:none" class="btn btn-outline-light" href="Controlador?menu=NuevaVenta&accion=default" target="myFrame">Nueva venta</a>
                        </li>
                    </ul>
                </div>
                <div class="dropdown">
                    <button style="border:none" class="btn btn-outline-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        ${usuario.getNom()}
                    </button>
                    <ul class="dropdown-menu text-center">
                        <li><a class="dropdown-item" href="#">
                                <img src="img/logo_usuario.jpg" alt="60" width="170"/>
                            </a></li>
                        <li><a class="dropdown-item" href="#"> ${usuario.getNom()}</a></li>
                        <li><a class="dropdown-item" href="#">usuario@gmail.com</a></li>
                        <div class="dropdown-divider"></div>
                        <form action="Validar" method="post">
                            <button name="accion" value="Salir" class="dropdown-item" href="#">salir</button>
                        </form>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="m-4"style="height: 550px;">
            <iframe name="myFrame" style="height: 100%;width: 100% ;border: none"></iframe>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    </body>
</html>
