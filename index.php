<!DOCTYPE html>
<html lang="es">
<?php
require_once 'config.php';
$conn = mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
if (!$conn) {
    die("Error de conexión: " . mysqli_connect_error());
}



mysqli_free_result($result);

mysqli_close($conn);
?>


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabla de clientes</title>
    <!-- Agregamos los estilos de Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
    <!--Google Fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@700&display=swap" rel="stylesheet">
    <!-- Agregamos los estilos de DataTables -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
    <link href="css.css" rel="stylesheet" />
</head>

<body style="background-color: #f5f7fa;">
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#"><img src="./img/logo.png" class="w-25" /></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

        </div>
    </nav>
    <div class="container mt-5">
        <div class="search-section table-container">
            <div class="row d-flex justify-content-between">
                <h4 class="table-title title col-6">Administracion de clientes</h4>
                <button type="button" class="btn btn-primary col-2" data-bs-toggle="modal" data-bs-target="#crearModal">Agregar cliente</button>
                <div class="modal fade" id="crearModal" tabindex="-1" aria-labelledby="crearModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="crearModalLabel">Agregar cliente</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                            </div>
                            <div class="modal-body">
                                <!-- Contenido del formulario para crear -->
                                <form action="index.php" method="post" id="form_create">
                                    <input type="hidden" name="function" value="create">
                                    <div class="row">
                                        <div class="mb-3 col-12 col-md-3">
                                            <label for="cedula" class="form-label">Cédula:</label>
                                            <input type="text" class="form-control" id="cedula" name="cedula">
                                        </div>
                                        <div class="mb-3 col-12 col-md-3">
                                            <label for="nombre_cliente" class="form-label">Nombre del Cliente:</label>
                                            <input type="text" class="form-control" id="nombre_cliente" name="nombre_cliente">
                                        </div>
                                        <div class="mb-3 col-12 col-md-3">
                                            <label for="telefono" class="form-label">Teléfono:</label>
                                            <input type="text" class="form-control" id="telefono" name="telefono">
                                        </div>
                                        <div class="mb-3 col-12 col-md-3">
                                            <label for="correo" class="form-label">Correo:</label>
                                            <input type="email" class="form-control" id="correo" name="correo">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="mb-3 col-12 col-md-4">
                                            <label for="localidad" class="form-label">Localidad:</label>
                                            <input type="text" class="form-control" id="localidad" name="localidad">
                                        </div>
                                        <div class="mb-3 col-12 col-md-4">
                                            <label for="coordenadas" class="form-label">Coordenadas:</label>
                                            <input type="text" class="form-control" id="coordenadas" name="coordenadas">
                                        </div>
                                        <div class="mb-3 col-12 col-md-4">
                                            <label for="velocidad_contratada" class="form-label">Velocidad
                                                Contratada:</label>
                                            <input type="text" class="form-control" id="velocidad_contratada" name="velocidad_contratada">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="mb-3 col-12 col-md-4">
                                            <label for="numero_contrato" class="form-label">Número de Contrato:</label>
                                            <input type="text" class="form-control" id="numero_contrato" name="numero_contrato">
                                        </div>
                                        <div class="mb-3 col-12 col-md-4">
                                            <label for="id_tipo_cliente" class="form-label">Tipo Cliente:</label>
                                            <input type="text" class="form-control" id="id_tipo_cliente" name="id_tipo_cliente">
                                        </div>
                                        <div class="mb-3 col-12 col-md-4">
                                            <label for="sector_anclado" class="form-label">Sector Anclado:</label>
                                            <input type="text" class="form-control" id="sector_anclado" name="sector_anclado">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="mb-3 col-12 col-md-4">
                                            <label for="wifi_nombre" class="form-label">Nombre de WiFi:</label>
                                            <input type="text" class="form-control" id="wifi_nombre" name="wifi_nombre">
                                        </div>
                                        <div class="mb-3 col-12 col-md-4">
                                            <label for="wifi_contrasena" class="form-label">Contraseña de WiFi:</label>
                                            <input type="password" class="form-control" id="wifi_contrasena" name="wifi_contrasena">
                                        </div>
                                        <div class="mb-3 col-12 col-md-4">
                                            <label for="contrasena_ppoe" class="form-label">Contraseña PPOE:</label>
                                            <input type="password" class="form-control" id="contrasena_ppoe" name="contrasena_ppoe">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="equipo_1" class="form-label">Equipo 1:</label>
                                            <input type="text" class="form-control" id="equipo_1" name="equipo_1">
                                        </div>

                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="mac_address_1" class="form-label">MAC Address 1:</label>
                                            <input type="text" class="form-control" id="mac_address_1" name="mac_address_1">
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="equipo_2" class="form-label">Equipo 2:</label>
                                            <input type="text" class="form-control" id="equipo_2" name="equipo_2">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="mac_address_2" class="form-label">MAC Address 2:</label>
                                            <input type="text" class="form-control" id="mac_address_2" name="mac_address_2">
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="equipo_3" class="form-label">Equipo 3:</label>
                                            <input type="text" class="form-control" id="equipo_3" name="equipo_3">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="serie" class="form-label">Serie:</label>
                                            <input type="text" class="form-control" id="serie" name="serie">
                                        </div>

                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                <button type="button" class="btn btn-primary" id="btn_create">Guardar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="w-100">
                    <div class="row">
                        <div class="col-12">
                            <div class="table-responsive" id="div_candidates">
                                <table id="tablaClientes" class="table table-striped">
                                    <thead style="background-color: #006AF9;">
                                        <tr>
                                            <th><input type="checkbox" class="no-sort form-check-input custom-checkbox" id="checkAll" onclick="check_candidates()"></th>
                                            <th class="no-sort">Nombre cliente</th>
                                            <th class="no-sort">Teléfono</th>
                                            <th class="no-sort">Localidad</th>
                                            <th class="no-sort">Velocidad contratada</th>
                                            <th class="no-sort">Numero de contrato</th>
                                            <th class="no-sort">Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($clientes as $cliente) : ?>
                                            <tr>
                                                <td>
                                                    <input type="checkbox" class="form-check-input custom-checkbox" id="checkbox-${i + 1}" onclick="get_all_checked_candidates()">
                                                </td>
                                                <td>
                                                    <?php echo $cliente['nombre_cliente']; ?>
                                                </td>
                                                <td>
                                                    <?php echo $cliente['telefono']; ?>
                                                </td>
                                                <td>
                                                    <?php echo $cliente['localidad']; ?>
                                                </td>
                                                <td>
                                                    <?php echo $cliente['velocidad_contratada']; ?>
                                                </td>
                                                <td>
                                                    <?php echo $cliente['numero_contrato']; ?>
                                                </td>
                                                <td>
                                                    <div class="">
                                                        <a data-bs-toggle="dropdown" aria-expanded="false">
                                                            <i class="bi bi-three-dots-vertical"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li>
                                                                <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#editarModal<?php echo $cliente['id_cliente']; ?>">Editar</a>
                                                            </li>
                                                            <li>
                                                                <a class="dropdown-item link_delete" data-id="<?php echo $cliente['id_cliente']; ?>">Eliminar</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="modal fade" id="editarModal<?php echo $cliente['id_cliente']; ?>" tabindex="-1" aria-labelledby="editalModal<?php echo $cliente['id_cliente']; ?>Label" aria-hidden="true">
                                                        <div class="modal-dialog modal-xl">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title">Editar datos del cliente</h5>
                                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <!-- Contenido del formulario para crear -->
                                                                    <form action="index.php" method="post" id="form_edit_<?php echo $cliente['id_cliente']; ?>">
                                                                        <input hidden type="text" class="form-control" name="id_cliente" value="<?php echo $cliente['id_cliente']; ?>" />
                                                                        <input type="hidden" name="function" value="edit">
                                                                        <div class="row">
                                                                            <div class="mb-3 col-12 col-md-3">
                                                                                <label for="cedula" class="form-label">Cédula:</label>
                                                                                <input type="text" class="form-control" name="cedula" value="<?php echo $cliente['cedula']; ?>">
                                                                            </div>
                                                                            <div class="mb-3 col-12 col-md-3">
                                                                                <label for="nombre_cliente" class="form-label">Nombre del
                                                                                    Cliente:</label>
                                                                                <input type="text" class="form-control" name="nombre_cliente" value="<?php echo $cliente['nombre_cliente']; ?>">
                                                                            </div>
                                                                            <div class="mb-3 col-12 col-md-3">
                                                                                <label for="telefono" class="form-label">Teléfono:</label>
                                                                                <input type="text" class="form-control" name="telefono" value="<?php echo $cliente['telefono']; ?>">
                                                                            </div>
                                                                            <div class="mb-3 col-12 col-md-3">
                                                                                <label for="correo" class="form-label">Correo:</label>
                                                                                <input type="email" class="form-control" name="correo" value="<?php echo $cliente['correo']; ?>">
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="mb-3 col-12 col-md-4">
                                                                                <label for="localidad" class="form-label">Localidad:</label>
                                                                                <input type="text" class="form-control" name="localidad" value="<?php echo $cliente['localidad']; ?>">
                                                                            </div>
                                                                            <div class="mb-3 col-12 col-md-4">
                                                                                <label for="coordenadas" class="form-label">Coordenadas:</label>
                                                                                <input type="text" class="form-control" name="coordenadas" value="<?php echo $cliente['coordenadas']; ?>">
                                                                            </div>
                                                                            <div class="mb-3 col-12 col-md-4">
                                                                                <label for="velocidad_contratada" class="form-label">Velocidad
                                                                                    Contratada:</label>
                                                                                <input type="text" class="form-control" name="velocidad_contratada" value="<?php echo $cliente['velocidad_contratada']; ?>">
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="mb-3 col-12 col-md-4">
                                                                                <label for="numero_contrato" class="form-label">Número de
                                                                                    Contrato:</label>
                                                                                <input type="text" class="form-control" name="numero_contrato" value="<?php echo $cliente['numero_contrato']; ?>">
                                                                            </div>
                                                                            <div class="mb-3 col-12 col-md-4">
                                                                                <label for="id_tipo_cliente" class="form-label">Tipo
                                                                                    Cliente:</label>
                                                                                <input type="text" class="form-control" name="id_tipo_cliente" value="<?php echo $cliente['id_tipo_cliente']; ?>">
                                                                            </div>
                                                                            <div class="mb-3 col-12 col-md-4">
                                                                                <label for="sector_anclado" class="form-label">Sector
                                                                                    Anclado:</label>
                                                                                <input type="text" class="form-control" name="sector_anclado" value="<?php echo $cliente['sector_anclado']; ?>">
                                                                            </div>

                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="mb-3 col-12 col-md-4">
                                                                                <label for="wifi_nombre" class="form-label">Nombre de
                                                                                    WiFi:</label>
                                                                                <input type="text" class="form-control" name="wifi_nombre" value="<?php echo $cliente['wifi_nombre']; ?>">
                                                                            </div>
                                                                            <div class="mb-3 col-12 col-md-4">
                                                                                <label for="contrasena_ppoe" class="form-label">Contraseña
                                                                                    PPOE:</label>
                                                                                <input type="password" class="form-control" name="contrasena_ppoe" value="<?php echo $cliente['contrasena_ppoe']; ?>">
                                                                            </div>
                                                                            <div class="mb-3 col-12 col-md-4">
                                                                                <label for="wifi_contrasena" class="form-label">Contraseña de
                                                                                    WiFi:</label>
                                                                                <input type="password" class="form-control" name="wifi_contrasena" value="<?php echo $cliente['wifi_contrasena']; ?>">
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="mb-3 col-12 col-md-6">
                                                                                <label for="equipo_1" class="form-label">Equipo 1:</label>
                                                                                <input type="text" class="form-control" name="equipo_1" value="<?php echo $cliente['equipo_1']; ?>">
                                                                            </div>
                                                                            <div class="mb-3 col-12 col-md-6">
                                                                                <label for="mac_address_1" class="form-label">MAC Address
                                                                                    1:</label>
                                                                                <input type="text" class="form-control" name="mac_address_1" value="<?php echo $cliente['mac_address_1']; ?>">
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="mb-3 col-12 col-md-6">
                                                                                <label for="equipo_2" class="form-label">Equipo 2:</label>
                                                                                <input type="text" class="form-control" name="equipo_2" value="<?php echo $cliente['equipo_2']; ?>">
                                                                            </div>
                                                                            <div class="mb-3 col-12 col-md-6">
                                                                                <label for="mac_address_2" class="form-label">MAC Address
                                                                                    2:</label>
                                                                                <input type="text" class="form-control" name="mac_address_2" value="<?php echo $cliente['mac_address_2']; ?>">
                                                                            </div>
                                                                        </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="mb-3 col-12 col-md-6">
                                                                        <label for="equipo_3" class="form-label">Equipo
                                                                            3:</label>
                                                                        <input type="text" class="form-control" name="equipo_3" value="<?php echo $cliente['equipo_3']; ?>">

                                                                    </div>
                                                                    <div class="mb-3 col-12 col-md-6">
                                                                        <label for="serie" class="form-label">Serie:</label>
                                                                        <input type="text" class="form-control" name="serie" value="<?php echo $cliente['serie']; ?>">
                                                                    </div>
                                                                    </form>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                                    <button type="button" class="btn btn-primary btn_edit" data-id="<?php echo $cliente['id_cliente']; ?>">Guardar</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <form action="index.php" method="post" id="form_delete_<?php echo $cliente['id_cliente']; ?>">
                                                            <input type="hidden" name="function" value="delete">
                                                            <input type="hidden" name="id_cliente" value="<?php echo $cliente['id_cliente']; ?>">
                                                        </form>
                                                    </div>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Agregamos los scripts de jQuery y DataTables -->
</body>
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
<script src="js.js"></script>

</html>