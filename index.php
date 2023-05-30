<!DOCTYPE html>
<html lang="es">
<?php
require_once 'config.php';
$conn = mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
if (!$conn) {
    die("Error de conexión: " . mysqli_connect_error());
    echo "Error al conectar con la base de datos";
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if ($_POST['function'] == 'email_service') {
        $postdata = (object)array();
        $postdata->candidates = $_POST['emails'];
        $postdata->email_emisor = $_POST['email_emisor'];
        $postdata->name_emisor = $_POST['name_emisor'];
        $postdata->custom_email = $_POST['custom_email'];
        $postdata->email_title = $_POST['email_title'];
        $postdata->email_message = $_POST['email_message'];
        $postdata = json_encode($postdata);
        $opts = array('http' =>
        array(
            'method'  => 'POST',
            'header'  => 'Content-Type: application/json',
            'content' =>  $postdata, 
        ));
        $context  = stream_context_create($opts);
        #-- Production
        #$res_credits = json_decode(file_get_contents("http://172.17.0.1:7050/email_service", false, $context));
        #-- Develop
        $res_credits = json_decode(file_get_contents("http://host.docker.internal:7050/email_service", false, $context));
        echo json_encode($res_credits);
    }

    if ($_POST['function'] == 'delete') {
        $id_cliente = $_POST['id_cliente'];
        $sql = "DELETE FROM tblcliente WHERE id_cliente = $id_cliente";
        if ($conn->query($sql) === TRUE) {
            echo "El cliente con ID $id_cliente ha sido eliminado correctamente.";
        } else {
            echo "Error al eliminar el cliente: " . $conn->error;
        }
    }
    if ($_POST['function'] == 'edit') {
        $id_cliente = $_POST['id_cliente'];
        $nombre_cliente = $_POST['nombre_cliente'];
        $telefono = $_POST['telefono'];
        $localidad = $_POST['localidad'];
        $velocidad_contratada = $_POST['velocidad_contratada'];
        $numero_contrato = $_POST['numero_contrato'];
        $coordenadas = $_POST['coordenadas'];
        $contrasena_ppoe = $_POST['contrasena_ppoe'];
        $equipo_1 = $_POST['equipo_1'];
        $mac_address_1 = $_POST['mac_address_1'];
        $equipo_2 = $_POST['equipo_2'];
        $mac_address_2 = $_POST['mac_address_2'];
        $equipo_3 = $_POST['equipo_3'];
        $serie = $_POST['serie'];
        $wifi_nombre = $_POST['wifi_nombre'];
        $wifi_contrasena = $_POST['wifi_contrasena'];
        $sector_anclado = $_POST['sector_anclado'];
        $cedula = $_POST['cedula'];
        $correo = $_POST['correo'];
        $id_tipo_cliente = $_POST['id_tipo_cliente'];
        $fecha_instalacion = $_POST['fecha_instalacion'];
        $monto_instalacion = $_POST['monto_instalacion'];
        $mensualidad = $_POST['mensualidad'];
        $tmu = $_POST['TMU'];
        $numero_facturacion = $_POST['numero_facturacion'];
        $sql = "UPDATE tblcliente SET nombre_cliente = '$nombre_cliente', telefono = '$telefono', localidad = '$localidad',
        velocidad_contratada = '$velocidad_contratada', numero_contrato = '$numero_contrato', coordenadas = '$coordenadas', 
        contrasena_ppoe = '$contrasena_ppoe', equipo_1 = '$equipo_1', mac_address_1 = '$mac_address_1', equipo_2 = '$equipo_2', 
        mac_address_2 = '$mac_address_2', equipo_3 = '$equipo_3', serie = '$serie', wifi_nombre = '$wifi_nombre', 
        wifi_contrasena = '$wifi_contrasena', sector_anclado = '$sector_anclado', cedula = '$cedula', correo =  '$correo', 
        id_tipo_cliente = '$id_tipo_cliente', fecha_instalacion = '$fecha_instalacion', monto_instalacion = '$monto_instalacion', mensualidad = '$mensualidad',
        TMU = $tmu, numero_facturacion = $numero_facturacion 
        WHERE id_cliente = $id_cliente;";
        // Ejecutar la consulta
        if ($conn->query($sql) === TRUE) {
            echo "El cliente ha sido editado correctamente.";
        } else {
            echo "Error al editar el cliente: " . $conn->error;
        }
    }
    if ($_POST['function'] == 'create') {
        $nombre_cliente = $_POST['nombre_cliente'];
        $telefono = $_POST['telefono'];
        $localidad = $_POST['localidad'];
        $velocidad_contratada = $_POST['velocidad_contratada'];
        $numero_contrato = $_POST['numero_contrato'];
        $coordenadas = $_POST['coordenadas'];
        $contrasena_ppoe = $_POST['contrasena_ppoe'];
        $equipo_1 = $_POST['equipo_1'];
        $mac_address_1 = $_POST['mac_address_1'];
        $equipo_2 = $_POST['equipo_2'];
        $mac_address_2 = $_POST['mac_address_2'];
        $equipo_3 = $_POST['equipo_3'];
        $serie = $_POST['serie'];
        $wifi_nombre = $_POST['wifi_nombre'];
        $wifi_contrasena = $_POST['wifi_contrasena'];
        $sector_anclado = $_POST['sector_anclado'];
        $cedula = $_POST['cedula'];
        $correo = $_POST['correo'];
        $id_tipo_cliente = $_POST['id_tipo_cliente'];
        $fecha_instalacion = $_POST['fecha_instalacion'];
        $monto_instalacion = $_POST['monto_instalacion'];
        $mensualidad = $_POST['mensualidad'];
        $tmu = $_POST['TMU'];
        $numero_facturacion = $_POST['numero_facturacion'];
        $sql = "INSERT INTO tblcliente (nombre_cliente, telefono, localidad, velocidad_contratada, 
        numero_contrato, coordenadas, contrasena_ppoe, equipo_1, mac_address_1, equipo_2, mac_address_2, equipo_3,
        serie, wifi_nombre, wifi_contrasena, sector_anclado, cedula, correo, id_tipo_cliente, fecha_instalacion,
        monto_instalacion, mensualidad, TMU, numero_facturacion) 
        VALUES ('$nombre_cliente', '$telefono', '$localidad', '$velocidad_contratada', '$numero_contrato',
        '$coordenadas', '$contrasena_ppoe', '$equipo_1', '$mac_address_1',
        '$equipo_2', '$mac_address_2', '$equipo_3', '$serie',
        '$wifi_nombre', '$wifi_contrasena', '$sector_anclado', '$cedula',
        '$correo', '$id_tipo_cliente', '$fecha_instalacion', $monto_instalacion,
        $mensualidad, $tmu, $numero_facturacion);";
        // Ejecutar la consulta
        if ($conn->query($sql) === TRUE) {
            echo "El cliente ha sido creado correctamente.";
        } else {
            echo "Error al crear el cliente: " . $conn->error;
        }
    }
    $conn->close();
    header("Location: " . $_SERVER['PHP_SELF']);
}

$sql = "SELECT * FROM tblcliente";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    $clientes = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $clientes[] = $row;
    }
}

mysqli_free_result($result);

$sql = "SELECT * FROM tipo_cliente";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    $tipos = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $tipos[] = $row;
    }
} else {
    echo "No se encontraron resultados.";
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
    <div id="spinner-overlay">
        Cargando...
        <div class="spinner"></div>
    </div>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#"><img src="./img/logo.png" class="w-25" /></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>
    <div class="container-fluid mt-5">
        <div class="search-section table-container">
            <div class="row d-flex justify-content-between mb-5">
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
                                        <div class="mb-3 col-12 col-md-6 col-lg-3">
                                            <label for="cedula" class="form-label">Cédula:</label>
                                            <input type="text" class="form-control" id="cedula" name="cedula" placeholder="Cedula">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-3">
                                            <label for="nombre_cliente" class="form-label">Nombre del Cliente:</label>
                                            <input type="text" class="form-control" id="nombre_cliente" name="nombre_cliente" placeholder="Nombre del cliente">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-3">
                                            <label for="telefono" class="form-label">Teléfono:</label>
                                            <input type="text" class="form-control" id="telefono" name="telefono" placeholder="Telefono">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-3">
                                            <label for="correo" class="form-label">Correo:</label>
                                            <input type="email" class="form-control" id="correo" name="correo" placeholder="Correo electronico">
                                        </div>

                                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                                            <label for="localidad" class="form-label">Localidad:</label>
                                            <input type="text" class="form-control" id="localidad" name="localidad" placeholder="Localidad">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                                            <label for="coordenadas" class="form-label">Coordenadas:</label>
                                            <input type="text" class="form-control" id="coordenadas" name="coordenadas" placeholder="Coordenadas">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                                            <label for="velocidad_contratada" class="form-label">Velocidad
                                                Contratada:</label>
                                            <input type="text" class="form-control" id="velocidad_contratada" name="velocidad_contratada" placeholder="Velocidad contratada">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                                            <label for="numero_contrato" class="form-label">Número de Contrato:</label>
                                            <input type="text" class="form-control" id="numero_contrato" name="numero_contrato" placeholder="Numero contrato">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                                            <label for="id_tipo_cliente" class="form-label">Tipo Cliente:</label>
                                            <select name="id_tipo_cliente" class="form-control">
                                                <option>--Seleccione--</option>
                                                <?php
                                                foreach ($tipos as $tipo) {
                                                    $id = $tipo['id_tipo_cliente'];
                                                    $nombre = $tipo['nombre_cliente'];
                                                    echo "<option value=\"$id\">$nombre</option>";
                                                }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                                            <label for="sector_anclado" class="form-label">Sector Anclado:</label>
                                            <input type="text" class="form-control" id="sector_anclado" name="sector_anclado" placeholder="Sector anclado">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                                            <label for="wifi_nombre" class="form-label">Nombre de WiFi:</label>
                                            <input type="text" class="form-control" id="wifi_nombre" name="wifi_nombre" placeholder="Nombre WIFI">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                                            <label for="wifi_contrasena" class="form-label">Contraseña de WiFi:</label>
                                            <input type="password" class="form-control" id="wifi_contrasena" name="wifi_contrasena" placeholder="Contraseña WIFI">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                                            <label for="contrasena_ppoe" class="form-label">Contraseña PPOE:</label>
                                            <input type="password" class="form-control" id="contrasena_ppoe" name="contrasena_ppoe" placeholder="Contraseña PPOE">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                                            <label for="equipo_1" class="form-label">Fecha de instalacion:</label>
                                            <input type="date" class="form-control" id="fecha_instalacion" name="fecha_instalacion" placeholder="Fecha instalacion">
                                        </div>

                                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                                            <label for="mac_address_1" class="form-label">Monto de instalacion:</label>
                                            <input type="text" class="form-control" id="monto_instalacion" name="monto_instalacion" placeholder="Monto instalacion">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                                            <label for="mac_address_1" class="form-label">Mensualidad:</label>
                                            <input type="text" class="form-control" id="mensualidad" name="mensualidad" placeholder="Mensualidad">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                                            <label for="equipo_1" class="form-label">Equipo 1:</label>
                                            <input type="text" class="form-control" id="equipo_1" name="equipo_1" placeholder="Equipo 1">
                                        </div>

                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="mac_address_1" class="form-label">MAC Address 1:</label>
                                            <input type="text" class="form-control" id="mac_address_1" name="mac_address_1" placeholder="Mac address">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="equipo_2" class="form-label">Equipo 2:</label>
                                            <input type="text" class="form-control" id="equipo_2" name="equipo_2" placeholder="Equipo 2">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="mac_address_2" class="form-label">MAC Address 2:</label>
                                            <input type="text" class="form-control" id="mac_address_2" name="mac_address_2" placeholder="Mac address">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="equipo_3" class="form-label">Equipo 3:</label>
                                            <input type="text" class="form-control" id="equipo_3" name="equipo_3" placeholder="Equipo 3">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="serie" class="form-label">Serie:</label>
                                            <input type="text" class="form-control" id="serie" name="serie" placeholder="Numero de serie">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="equipo_3" class="form-label">TMU:</label>
                                            <input type="number" class="form-control" name="TMU" placeholder="TMU">
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="serie" class="form-label">Numero facturacion:</label>
                                            <input type="number" class="form-control" name="numero_facturacion" placeholder="Numero de facturacion">
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
                                <table id="table_candidates" class="table table-striped">
                                    <thead style="background-color: #006AF9;">
                                        <tr>
                                            <th><input type="checkbox" class="no-sort form-check-input custom-checkbox" id="checkAll" onclick="check_candidates()"></th>
                                            <th class="no-sort">Contrato</th>
                                            <th class="no-sort">N° Facturacion</th>
                                            <th class="no-sort">TMU</th>
                                            <th class="no-sort">Nombre cliente</th>
                                            <th class="no-sort">Teléfono</th>
                                            <th class="no-sort">Correo</th>
                                            <th class="no-sort">Localidad</th>
                                            <th class="no-sort text-center">Velocidad</th>
                                            <th class="no-sort">Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if (isset($clientes)) : ?>
                                            <?php foreach ($clientes as $cliente) : ?>
                                                <tr>
                                                    <td>
                                                        <input type="checkbox" class="form-check-input custom-checkbox" id="checkbox-<?php echo $cliente['nombre_cliente']; ?>" onclick="get_all_checked_candidates()">
                                                    </td>
                                                    <td>
                                                        <?php echo $cliente['numero_contrato']; ?>
                                                    </td>
                                                    <td>
                                                        <?php echo $cliente['numero_facturacion']; ?>
                                                    </td>
                                                    <td>
                                                        <?php echo $cliente['TMU']; ?>
                                                    </td>
                                                    <td class="text-truncate">
                                                        <?php echo $cliente['nombre_cliente']; ?>
                                                    </td>
                                                    <td>
                                                        <?php echo $cliente['telefono']; ?>
                                                    </td>
                                                    <td class="text-truncate">
                                                        <?php echo $cliente['correo']; ?>
                                                    </td>
                                                    <td class="text-truncate">
                                                        <?php echo $cliente['localidad']; ?>
                                                    </td>
                                                    <td class="text-center">
                                                        <?php echo $cliente['velocidad_contratada']; ?> MB
                                                    </td>
                                                    <td>
                                                        <div class="">
                                                            <a data-bs-toggle="dropdown" aria-expanded="false">
                                                                <i class="bi bi-three-dots-vertical"></i>
                                                            </a>
                                                            <ul class="dropdown-menu" style="width: 100px;">
                                                                <li>
                                                                    <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#editarModal<?php echo $cliente['id_cliente']; ?>"><img src="./img/editar.png" class="img-fluid dropdown-image" alt="Gmail" /> Editar</a>
                                                                </li>
                                                                <li>
                                                                    <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#detalleModal<?php echo $cliente['id_cliente']; ?>"><img src="./img/detalles.png" class="img-fluid dropdown-image" alt="Gmail" /> Detalles</a>
                                                                </li>
                                                                <li>
                                                                    <a class="dropdown-item link_delete" data-id="<?php echo $cliente['id_cliente']; ?>"><img src="./img/borrar.png" class="img-fluid dropdown-image" alt="Gmail" /> Eliminar</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#" onclick="redirectToWhatsApp(<?php echo $cliente['telefono']; ?>)" class="dropdown-item">
                                                                        <img src="./img/whatsapp.png" class="img-fluid dropdown-image" alt="Whatsapp" />WhatsApp
                                                                    </a>
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
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-3">
                                                                                    <label for="cedula" class="form-label">Cédula:</label>
                                                                                    <input type="text" class="form-control" name="cedula" value="<?php echo $cliente['cedula']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-3">
                                                                                    <label for="nombre_cliente" class="form-label">Nombre del
                                                                                        Cliente:</label>
                                                                                    <input type="text" class="form-control" name="nombre_cliente" value="<?php echo $cliente['nombre_cliente']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-3">
                                                                                    <label for="telefono" class="form-label">Teléfono:</label>
                                                                                    <input type="text" class="form-control" name="telefono" value="<?php echo $cliente['telefono']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-3">
                                                                                    <label for="correo" class="form-label">Correo:</label>
                                                                                    <input type="email" class="form-control" name="correo" value="<?php echo $cliente['correo']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="localidad" class="form-label">Localidad:</label>
                                                                                    <input type="text" class="form-control" name="localidad" value="<?php echo $cliente['localidad']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="coordenadas" class="form-label">Coordenadas:</label>
                                                                                    <input type="text" class="form-control" name="coordenadas" value="<?php echo $cliente['coordenadas']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="velocidad_contratada" class="form-label">Velocidad
                                                                                        Contratada:</label>
                                                                                    <input type="text" class="form-control" name="velocidad_contratada" value="<?php echo $cliente['velocidad_contratada']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="numero_contrato" class="form-label">Número de
                                                                                        Contrato:</label>
                                                                                    <input type="text" class="form-control" name="numero_contrato" value="<?php echo $cliente['numero_contrato']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="id_tipo_cliente" class="form-label">Tipo
                                                                                        Cliente:</label>
                                                                                    <select name="id_tipo_cliente" class="form-control">
                                                                                        <?php
                                                                                        foreach ($tipos as $tipo) {
                                                                                            $id = $tipo['id_tipo_cliente'];
                                                                                            $nombre = $tipo['nombre_cliente'];
                                                                                            $selected = ($cliente['id_tipo_cliente'] == $id) ? "selected" : "";
                                                                                            echo "<option value=\"$id\" $selected>$nombre</option>";
                                                                                        }
                                                                                        ?>
                                                                                    </select>
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="sector_anclado" class="form-label">Sector
                                                                                        Anclado:</label>
                                                                                    <input type="text" class="form-control" name="sector_anclado" value="<?php echo $cliente['sector_anclado']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="wifi_nombre" class="form-label">Nombre de
                                                                                        WiFi:</label>
                                                                                    <input type="text" class="form-control" name="wifi_nombre" value="<?php echo $cliente['wifi_nombre']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="contrasena_ppoe" class="form-label">Contraseña
                                                                                        PPOE:</label>
                                                                                    <input type="password" class="form-control" name="contrasena_ppoe" value="<?php echo $cliente['contrasena_ppoe']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="wifi_contrasena" class="form-label">Contraseña de
                                                                                        WiFi:</label>
                                                                                    <input type="password" class="form-control" name="wifi_contrasena" value="<?php echo $cliente['wifi_contrasena']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="equipo_1" class="form-label">Fecha de instalacion:</label>
                                                                                    <input type="date" class="form-control" name="fecha_instalacion" value="<?php echo $cliente['fecha_instalacion']; ?>" placeholder="Sin datos">
                                                                                </div>

                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="mac_address_1" class="form-label">Monto de instalacion:</label>
                                                                                    <input type="text" class="form-control" name="monto_instalacion" value="<?php echo $cliente['monto_instalacion']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="mac_address_1" class="form-label">Mensualidad:</label>
                                                                                    <input type="text" class="form-control" name="mensualidad" value="<?php echo $cliente['mensualidad']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="equipo_1" class="form-label">Equipo 1:</label>
                                                                                    <input type="text" class="form-control" name="equipo_1" value="<?php echo $cliente['equipo_1']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="mac_address_1" class="form-label">MAC Address
                                                                                        1:</label>
                                                                                    <input type="text" class="form-control" name="mac_address_1" value="<?php echo $cliente['mac_address_1']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="equipo_2" class="form-label">Equipo 2:</label>
                                                                                    <input type="text" class="form-control" name="equipo_2" value="<?php echo $cliente['equipo_2']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="mac_address_2" class="form-label">MAC Address
                                                                                        2:</label>
                                                                                    <input type="text" class="form-control" name="mac_address_2" value="<?php echo $cliente['mac_address_2']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="equipo_3" class="form-label">Equipo
                                                                                        3:</label>
                                                                                    <input type="text" class="form-control" name="equipo_3" value="<?php echo $cliente['equipo_3']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="serie" class="form-label">Serie:</label>
                                                                                    <input type="text" class="form-control" name="serie" value="<?php echo $cliente['serie']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="equipo_3" class="form-label">TMU:</label>
                                                                                    <input type="number" class="form-control" name="TMU" value="<?php echo $cliente['TMU']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="serie" class="form-label">Numero facturacion:</label>
                                                                                    <input type="number" class="form-control" name="numero_facturacion" value="<?php echo $cliente['numero_facturacion']; ?>" placeholder="Sin datos">
                                                                                </div>
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
                                                        <div class="modal fade" id="detalleModal<?php echo $cliente['id_cliente']; ?>" tabindex="-1" aria-labelledby="detalleModal<?php echo $cliente['id_cliente']; ?>Label" aria-hidden="true">
                                                            <div class="modal-dialog modal-xl">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title">Detalle datos del cliente</h5>
                                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <!-- Contenido del formulario para crear -->
                                                                        <form action="index.php" method="post" id="form_edit_<?php echo $cliente['id_cliente']; ?>">
                                                                            <input hidden type="text" class="form-control" name="id_cliente" value="<?php echo $cliente['id_cliente']; ?>" />
                                                                            <input type="hidden" name="function" value="edit">
                                                                            <div class="row">
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-3">
                                                                                    <label for="cedula" class="form-label">Cédula:</label>
                                                                                    <input disabled type="text" class="form-control" name="cedula" value="<?php echo $cliente['cedula']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-3">
                                                                                    <label for="nombre_cliente" class="form-label">Nombre del
                                                                                        Cliente:</label>
                                                                                    <input disabled type="text" class="form-control" name="nombre_cliente" value="<?php echo $cliente['nombre_cliente']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-3">
                                                                                    <label for="telefono" class="form-label">Teléfono:</label>
                                                                                    <input disabled type="text" class="form-control" name="telefono" value="<?php echo $cliente['telefono']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-3">
                                                                                    <label for="correo" class="form-label">Correo:</label>
                                                                                    <input disabled type="email" class="form-control" name="correo" value="<?php echo $cliente['correo']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="localidad" class="form-label">Localidad:</label>
                                                                                    <input disabled type="text" class="form-control" name="localidad" value="<?php echo $cliente['localidad']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="coordenadas" class="form-label">Coordenadas:</label>
                                                                                    <input disabled type="text" class="form-control" name="coordenadas" value="<?php echo $cliente['coordenadas']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="velocidad_contratada" class="form-label">Velocidad
                                                                                        Contratada:</label>
                                                                                    <input disabled type="text" class="form-control" name="velocidad_contratada" value="<?php echo $cliente['velocidad_contratada']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="numero_contrato" class="form-label">Número de
                                                                                        Contrato:</label>
                                                                                    <input disabled type="text" class="form-control" name="numero_contrato" value="<?php echo $cliente['numero_contrato']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="id_tipo_cliente" class="form-label">Tipo
                                                                                        Cliente:</label>
                                                                                    <select disabled name="id_tipo_cliente" class="form-control">
                                                                                        <?php
                                                                                        foreach ($tipos as $tipo) {
                                                                                            $id = $tipo['id_tipo_cliente'];
                                                                                            $nombre = $tipo['nombre_cliente'];
                                                                                            $selected = ($cliente['id_tipo_cliente'] == $id) ? "selected" : "";
                                                                                            echo "<option value=\"$id\" $selected>$nombre</option>";
                                                                                        }
                                                                                        ?>
                                                                                    </select>
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="sector_anclado" class="form-label">Sector
                                                                                        Anclado:</label>
                                                                                    <input disabled type="text" class="form-control" name="sector_anclado" value="<?php echo $cliente['sector_anclado']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="wifi_nombre" class="form-label">Nombre de
                                                                                        WiFi:</label>
                                                                                    <input disabled type="text" class="form-control" name="wifi_nombre" value="<?php echo $cliente['wifi_nombre']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="contrasena_ppoe" class="form-label">Contraseña
                                                                                        PPOE:</label>
                                                                                    <input disabled type="password" class="form-control" name="contrasena_ppoe" value="<?php echo $cliente['contrasena_ppoe']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="wifi_contrasena" class="form-label">Contraseña de
                                                                                        WiFi:</label>
                                                                                    <input disabled type="password" class="form-control" name="wifi_contrasena" value="<?php echo $cliente['wifi_contrasena']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="equipo_1" class="form-label">Fecha de instalacion:</label>
                                                                                    <input disabled type="date" class="form-control" name="fecha_instalacion" value="<?php echo $cliente['fecha_instalacion']; ?>" placeholder="Sin datos">
                                                                                </div>

                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="mac_address_1" class="form-label">Monto de instalacion:</label>
                                                                                    <input disabled type="text" class="form-control" name="monto_instalacion" value="<?php echo $cliente['monto_instalacion']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                                                    <label for="mac_address_1" class="form-label">Mensualidad:</label>
                                                                                    <input disabled type="text" class="form-control" name="mensualidad" value="<?php echo $cliente['mensualidad']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="equipo_1" class="form-label">Equipo 1:</label>
                                                                                    <input disabled type="text" class="form-control" name="equipo_1" value="<?php echo $cliente['equipo_1']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="mac_address_1" class="form-label">MAC Address
                                                                                        1:</label>
                                                                                    <input disabled type="text" class="form-control" name="mac_address_1" value="<?php echo $cliente['mac_address_1']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="equipo_2" class="form-label">Equipo 2:</label>
                                                                                    <input disabled type="text" class="form-control" name="equipo_2" value="<?php echo $cliente['equipo_2']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="mac_address_2" class="form-label">MAC Address
                                                                                        2:</label>
                                                                                    <input disabled type="text" class="form-control" name="mac_address_2" value="<?php echo $cliente['mac_address_2']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="equipo_3" class="form-label">Equipo
                                                                                        3:</label>
                                                                                    <input disabled type="text" class="form-control" name="equipo_3" value="<?php echo $cliente['equipo_3']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="serie" class="form-label">Serie:</label>
                                                                                    <input disabled type="text" class="form-control" name="serie" value="<?php echo $cliente['serie']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="equipo_3" class="form-label">TMU:</label>
                                                                                    <input disabled type="number" class="form-control" name="TMU" value="<?php echo $cliente['TMU']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                                <div class="mb-3 col-12 col-md-6">
                                                                                    <label for="serie" class="form-label">Numero facturacion:</label>
                                                                                    <input disabled type="number" class="form-control" name="numero_facturacion" value="<?php echo $cliente['numero_facturacion']; ?>" placeholder="Sin datos">
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
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
                                        <?php endif; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="email_modal" tabindex="-1" aria-labelledby="email_modal" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <h5 class="modal-title">Needed Information</h5>
                    <button type="button" class="btn-close" id="btn-close-modal" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="user_name" class="form-label modal-subtitle">Emisor</label>
                            <input type="text" class="form-control modal-input" id="user_name" aria-describedby="user_name" disabled value="GT-Solutions">
                        </div>
                        <div class="mb-3">
                            <label for="user_email" class="form-label modal-subtitle">Emisor email</label>
                            <input type="email" class="form-control modal-input" id="user_email" aria-describedby="user_email" disabled value="gtsolutionscr@gmail.com">
                        </div>
                        <div class="mb-3">
                            <label for="email_title" class="form-label modal-subtitle">TItulo</label>
                            <input type="text" class="form-control modal-input" id="email_title" placeholder="Encabezado del mensaje ...">
                        </div>
                        <div class="mb-3">
                            <label for="email_message" class="form-label modal-subtitle">Mensaje</label>
                            <textarea class="form-control modal-input" id="email_message" placeholder="Escriba el mensaje ..."></textarea>
                        </div>
                    </form>
                </div>
                <div class="modal-footer border-0">
                    <button type="button" class="btn modal-close" id="close_email_modal" data-bs-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn modal-primary" id="send_email">Enviar</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="sending_email_modal" tabindex="-1" aria-labelledby="sending_email_modal">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header border-0 justify-content-center">
                    <h5 class="modal-title" id="modal-title-loading">Sending emails</h5>
                    <button type="button" class="btn-close d-none" id="btn-close-sending-modal" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="d-flex justify-content-center modal-loading-container">
                        <div class="spinner-grow" style="width: 5rem; height: 5rem; color: #047eb3f9" role="status">
                            <span class="sr-only"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <button class="d-none" id="btn_sending_email_modal" data-bs-toggle="modal" data-bs-target="#sending_email_modal">Sending emails</button>
    <div class="modal fade" id="success_email_modal" tabindex="-1" aria-labelledby="success_email_modal">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <h5 class="modal-title" id="modal-title-loading">Successful</h5>
                    <button type="button" class="btn-close" id="btn-close-success-modal" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="d-flex justify-content-center modal-success-container">
                        <i class="bi bi-send-check-fill send-check-icon"></i>
                        <div>
                            <p>You successfuly sent <strong id="numberEmails"></strong> emails!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <button class="d-none" id="btn_success_email_modal" data-bs-toggle="modal" data-bs-target="#success_email_modal">Sending emails</button>
    <!-- Agregamos los scripts de jQuery y DataTables -->
</body>
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
<script src="js.js"></script>

</html>