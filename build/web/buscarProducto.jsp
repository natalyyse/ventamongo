<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>Buscar Producto</title>
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h1 class="card-title text-center mb-4">Buscar Producto </h1>
                    
                    <!-- Formulario centrado -->
                    <form action="BuscarServlet" method="post" class="needs-validation" novalidate>
                        <div class="form-group">
                            <label for="nombre">Nombre del Producto:</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                            <div class="invalid-feedback">Por favor ingresa el nombre del producto.</div>
                        </div>
                        
                        <!-- Botones en línea con separación -->
                        <div class="d-grid gap-2 mt-3">
                            <button type="submit" class="btn btn-primary">Buscar</button>
                            <a href="/ventamongo/" class="btn btn-secondary">Volver al inicio</a>
                        </div>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
