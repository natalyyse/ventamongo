<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>Resultados de Búsqueda</title>
    <style>
        body {
            background-color: #f8f9fa; 
        }
        h1 {
            color: #007bff; 
            margin-top: 40px; 
        }
        .table {
            background-color: #fff; 
            border-radius: 8px; 
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); 
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff; 
        }
        .btn-primary:hover {
            background-color: #0056b3; 
            border-color: #0056b3; 
        }
        .alert-danger {
            background-color: #f8d7da; 
            border-color: #f5c6cb; 
            color: #721c24; 
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <h1 class="text-center">Resultados de Búsqueda</h1>

                <c:if test="${not empty productosEncontrados}">
                    <table class="table table-striped table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th>Código</th>
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>Stock</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="producto" items="${productosEncontrados}">
                                <tr>
                                    <td>${producto.codigo}</td>
                                    <td>${producto.nombre}</td>
                                    <td>${producto.precio}</td>
                                    <td>${producto.stock}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <div class="text-center">
                        <a href="/ventamongo/" class="btn btn-primary">Volver</a>
                    </div>
                </c:if>

                <c:if test="${empty productosEncontrados}">
                    <div class="alert alert-danger text-center mt-4" role="alert">
                        No se encontraron productos.
                    </div>
                    <div class="text-center mt-3">
                        <a href="/ventamongo/" class="btn btn-primary">Volver al inicio</a>
                    </div>
                </c:if>
            </div>
        </div>
    </div>

</body>
</html>
