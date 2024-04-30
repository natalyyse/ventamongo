<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Lista de Productos</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container py-4">
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center text-primary">Lista de Productos</h1>

            <c:choose>
                <c:when test="${not empty productos}">
                    <div class="table-sm mt-5">
                        <table class="table table-striped table-bordered table-sm">
                            <thead class="thead-secondary">
                                <tr>
                                    <th scope="col">Código</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Precio</th>
                                    <th scope="col">Stock</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="producto" items="${productos}">
                                    <tr>
                                        <td>${producto.codigo}</td>
                                        <td>${producto.nombre}</td>
                                        <td>${producto.precio}</td>
                                        <td>${producto.stock}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </c:when>
                <c:otherwise>
                    <p class="text-center mt-4 text-muted">No hay productos disponibles.</p>
                </c:otherwise>
            </c:choose>

            <div class="row justify-content-center mt-4">
                <div class="col-md-6 text-center">
                    <a href="registro.jsp" class="btn btn-success me-3">Agregar Producto</a>
                    <a href="buscarProducto.jsp" class="btn btn-warning">Buscar Producto</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>


