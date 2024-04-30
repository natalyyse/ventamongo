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
            background-color: #f8f9fa; /* Color de fondo para todo el cuerpo */
        }
        h1 {
            color: #007bff; /* Color azul para el título principal */
            margin-top: 40px; /* Margen superior para el título */
        }
        .table {
            background-color: #fff; /* Color de fondo de la tabla */
            border-radius: 8px; /* Bordes redondeados para la tabla */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Sombra suave para la tabla */
        }
        .btn-primary {
            background-color: #007bff; /* Color de fondo azul para los botones */
            border-color: #007bff; /* Color del borde azul para los botones */
        }
        .btn-primary:hover {
            background-color: #0056b3; /* Color de fondo azul más oscuro al pasar el mouse */
            border-color: #0056b3; /* Color del borde azul más oscuro al pasar el mouse */
        }
        .alert-danger {
            background-color: #f8d7da; /* Color de fondo rojo claro para la alerta */
            border-color: #f5c6cb; /* Color del borde rojo claro para la alerta */
            color: #721c24; /* Color de texto oscuro para la alerta */
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
