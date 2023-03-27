<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

        <title>VENTAS</title>
        <style>
            @media print{
                .parte01, .btn, .accion{
                    display: none;
                }
            }
        </style>
    </head>
    <body>
        <div>
            <div class="parte01">
                <div class="card" style="float:left ;width: 450px">
                    <form action="Controlador?menu=NuevaVenta" method="POST">
                        <div class="card-body">
                            <div class="form-group ">
                                <label>Datos del Cliente</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigocliente" value="${cl.getDni()}" class="form-control" placeholder="codigo">
                                    <input type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-info">
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="nombrescliente" value="${cl.getNom()}" class="form-control" style="width: 180px">
                                </div>
                            </div>
                            <div class="form-group d-flex">
                                <label>Datos Producto</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigoProducto" class="form-control" placeholder="codigo" >
                                    <input type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-info" >
                                </div>
                                <div class="col-sm-6 ">
                                    <input type="text" name="nomproducto" value="${producto.getNombres()}" class="form-control" style="width: 180px">
                                </div>
                            </div>
                            <br>
                            <div class="form-group d-flex">
                                <div class="col-sm-4 d-flex">
                                    <input type="text" name="precio" value="${producto.getPrecio()}" class="form-control" placeholder="codigo">
                                </div>
                                <div class="col-sm-2">
                                    <input type="number" name="cant" value="1" class="form-control">
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="stock" value="${producto.getStock()}" class="form-control" placeholder="stock" style="width: 150px">
                                </div>
                            </div>
                            <br>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="submit" name="accion" value="Agregar" class="btn btn-outline-info">
                                </div>
                            </div>

                    </form>
                </div>     
                                
            </div>
                                
            <div style="margin-left: 550px" >
                <div class="card">
                    <div class="card-body col-sm-8 ml-auto">
                        <label>Numero serie</label>
                        <input type="text" name="NroSerie" value="${nserie}" class="form-control">
                    </div>
                    <br>
                    <table class="table table-hover" border="1">
                        <thread>
                            <tr>
                                <th>Nro</th>
                                <th>Codigo</th>
                                <th>Descripcion</th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                                <th>SubTotal</th>
                                <th class="accion">Accion</th>
                            </tr>
                        </thread>
                        <tbody>
                            <c:forEach var="list" items="${lista}">
                                <tr>
                                    <td>${list.getItem()}</td>
                                    <td>${list.getIdproducto()}</td>
                                    <td>${list.getDescripcion()}</td>
                                    <td>${list.getPrecio()}</td>
                                    <td>${list.getCantidad()}</td>
                                    <td>${list.getSubtotal()}</td>
                                    <td class="d-flex">
                                        <a href="#" class="btn btn-warning">Editar</a>
                                        <a href="#" class="btn btn-danger" style="margin-left: 10px">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="card-footer d-flex">
                        <div class="col-sm-6"> <!--onclick="print()" --> 
                            <a href="Controlador?menu=NuevaVenta&accion=GenerarVenta"  class="btn btn-outline-success">Generar venta</a>
                            <input type="submit" name="accion" value="Cancelar" class="btn btn-danger">
                        </div>
                        <div class="col-sm-4 ml-auto">
                            <input type="text" name="txtTotal" value="S/. ${totalpagar}0" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>

</html>
