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
    if ($_POST['function'] == 'delete') {
        $id_cliente = $_POST['id_cliente'];
        $sql = "UPDATE contrato SET activo = 1 WHERE id_cliente = $id_cliente";
        if ($conn->query($sql) === TRUE) {
            echo "El cliente con ID $id_cliente ha sido eliminado correctamente.";
        } else {
            echo "Error al eliminar el cliente: " . $conn->error;
        }
    }
    $conn->close();
    header("Location: " . $_SERVER['PHP_SELF']);
}

$sql = "SELECT c.*, ct.*, ct.id_contrato AS ct_id_contrato, tc.*, s.*, wf.*, rp.*
FROM cliente c
LEFT JOIN contrato ct ON c.id_cliente = ct.id_cliente
LEFT JOIN tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
LEFT JOIN servicio s ON ct.id_contrato = s.id_contrato
LEFT JOIN wifi wf ON s.id_servicio = wf.id_servicio
LEFT JOIN (
    SELECT rp.id_contrato, MAX(rp.fecha_pago) AS fecha_pago
    FROM registro_pago rp
    GROUP BY rp.id_contrato
) AS latest_rp ON ct.id_contrato = latest_rp.id_contrato
LEFT JOIN registro_pago rp ON latest_rp.id_contrato = rp.id_contrato AND latest_rp.fecha_pago = rp.fecha_pago
WHERE ct.activo = 0
GROUP BY c.id_cliente;";

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    $clientes = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $clientes[] = $row;
    }
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
                <button type="button" class="btn btn-primary col-2" id="ver_activos">Ver activos</button>
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
                                            <th class="no-sort text-center">Debe?</th>
                                            <th class="no-sort">Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if (isset($clientes)) : ?>
                                            <?php foreach ($clientes as $cliente) : ?>
                                                <tr>
                                                    <td <?php echo $cliente['debe_mensualidad'] == 1 ? "style='background-color: red;'" : ""; ?>>
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
                                                        <?php echo $cliente['email']; ?>
                                                    </td>
                                                    <td class="text-truncate">
                                                        <?php echo $cliente['localidad']; ?>
                                                    </td>
                                                    <td class="text-center">
                                                        <?php echo $cliente['velocidad_contratada']; ?> MB
                                                    </td>
                                                    <td class="text-center">
                                                        <?php echo $cliente['debe_mensualidad'] == 1 ? "Si" : "No"; ?>
                                                    </td>
                                                    <td>
                                                        <div class="">
                                                            <a data-bs-toggle="dropdown" aria-expanded="false">
                                                                <i class="bi bi-three-dots-vertical"></i>
                                                            </a>
                                                            <ul class="dropdown-menu" style="width: 100px;">
                                                                <li>
                                                                    <a class="dropdown-item link_delete" data-id="<?php echo $cliente['id_cliente']; ?>"><img src="./img/borrar.png" class="img-fluid dropdown-image" alt="Gmail" /> Reactivar</a>
                                                                </li>
                                                            </ul>
                                                        </div>

                                                        <div>
                                                            <form action="desactivate.php" method="post" id="form_delete_<?php echo $cliente['id_cliente']; ?>">
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
    <!-- Agregamos los scripts de jQuery y DataTables -->
</body>
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
<script src="js.js"></script>

</html>