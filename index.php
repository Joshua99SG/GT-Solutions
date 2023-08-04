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
        $sql = "UPDATE contrato SET activo = 0 WHERE id_cliente = $id_cliente";
        if ($conn->query($sql) === TRUE) {
            echo "El cliente con ID $id_cliente ha sido eliminado correctamente.";
        } else {
            echo "Error al eliminar el cliente: " . $conn->error;
        }
    }
    if ($_POST['function'] == 'edit') {
        $id_cliente = $_POST['id_cliente'];
        $cedula = $_POST['identificacion'];
        $nombre_cliente = $_POST['nombre_cliente'];
        $telefono = $_POST['telefono'];
        $correo = $_POST['email'];
        $localidad = $_POST['localidad'];
        $coordenadas = $_POST['coordenadas'];
        $id_tipo_cliente = $_POST['id_tipo_cliente'];

        $id_contrato = $_POST['id_contrato'];
        $numero_contrato = $_POST['numero_contrato'];
        $numero_facturacion = $_POST['numero_facturacion'];
        $tmu = $_POST['TMU'];
        $fecha_instalacion = $_POST['fecha_instalacion'];
        $monto_instalacion = $_POST['monto_instalacion'];
        $abono_instalacion = $_POST['abono_instalacion'];
        $mensualidad = $_POST['mensualidad'];
        $fecha_corte = $_POST['fecha_corte'];
        $fecha_cobro = $_POST['fecha_cobro'];
        $moneda = $_POST['moneda'];

        $id_servicio = $_POST['id_servicio'];
        $velocidad_contratada = $_POST['velocidad_contratada'];
        $sector_anclado = $_POST['sector_anclado'];
        $contrasena_ppoe = $_POST['contra_ppoe'];

        $id_equipo_1 = $_POST['id_equipo_1'];
        $equipo_1 = $_POST['equipo_1'];
        $mac_address_1 = $_POST['mac_address_1'];
        $id_equipo_2 = $_POST['id_equipo_2'];
        $equipo_2 = $_POST['equipo_2'];
        $mac_address_2 = $_POST['mac_address_2'];
        $id_equipo_3 = $_POST['id_equipo_3'];
        $equipo_3 = $_POST['equipo_3'];
        $serie = $_POST['serie'];

        $id_wifi = $_POST['id_wifi'];
        $wifi_nombre = $_POST['nombre_wifi'];
        $wifi_contrasena = $_POST['contra_wifi'];

        $sql_cliente = "UPDATE cliente SET
        identificacion = '$cedula',
        nombre_cliente = '$nombre_cliente',
        telefono = '$telefono',
        email = '$correo',
        localidad = '$localidad',
        coordenadas = '$coordenadas',
        id_tipo_cliente = $id_tipo_cliente
        WHERE id_cliente = $id_cliente;";

        if ($conn->query($sql_cliente) === TRUE) {
            echo "Datos del cliente actualizados correctamente.";
        } else {
            echo "Error al actualizar datos del cliente: " . $conn->error;
        }

        if (isset($_POST['id_contrato']) && !empty($_POST['id_contrato'])) {
            $sql_contrato = "UPDATE contrato SET
            numero_contrato = '$numero_contrato',
            numero_facturacion = '$numero_facturacion',
            TMU = '$tmu',
            fecha_instalacion = '$fecha_instalacion',
            monto_instalacion = $monto_instalacion,
            abono_instalacion = $abono_instalacion,
            mensualidad = $mensualidad,
            fecha_corte = '$fecha_corte',
            fecha_cobro = '$fecha_cobro',
            id_cliente = $id_cliente,
            moneda = '$moneda'
            WHERE id_contrato = $id_contrato;";

            if ($conn->query($sql_contrato) === TRUE) {
                echo "Datos del contrato actualizados correctamente.";
            } else {
                echo "Error al actualizar datos del contrato: " . $conn->error;
            }
        }

        if (isset($_POST['id_servicio']) && !empty($_POST['id_servicio'])) {
            $sql_servicio = "UPDATE servicio SET
            velocidad_contratada = '$velocidad_contratada',
            sector_anclado = '$sector_anclado',
            contra_ppoe = '$contrasena_ppoe',
            id_contrato = $id_contrato
            WHERE id_servicio = $id_servicio;";

            if ($conn->query($sql_servicio) === TRUE) {
                echo "Datos del servicio actualizados correctamente.";
            } else {
                echo "Error al actualizar datos del servicio: " . $conn->error;
            }
        }

        if (isset($_POST['id_wifi']) && !empty($_POST['id_wifi'])) {
            $sql_wifi = "UPDATE wifi SET
            nombre_wifi = '$wifi_nombre',
            contra_wifi = '$wifi_contrasena',
            id_servicio = $id_servicio
            WHERE id_wifi = $id_wifi;";

            if ($conn->query($sql_wifi) === TRUE) {
                echo "Datos del wifi actualizados correctamente.";
            } else {
                echo "Error al actualizar datos del wifi: " . $conn->error;
            }
        }

        if (isset($_POST['id_equipo_1']) && !empty($_POST['id_equipo_1'])) {
            $sql_equipo_1 = "UPDATE equipo SET
            equipo = '$equipo_1',
            mac_address = '$mac_address_1',
            id_servicio = $id_servicio
            WHERE id_equipo = $id_equipo_1;";

            if ($conn->query($sql_equipo_1) === TRUE) {
                echo "Datos del equipo actualizados correctamente.";
            } else {
                echo "Error al actualizar datos del equipo: " . $conn->error;
            }
        }

        if (isset($_POST['id_equipo_2']) && !empty($_POST['id_equipo_2'])) {
            $sql_equipo_2 = "UPDATE equipo SET
            equipo = '$equipo_2',
            mac_address = '$mac_address_2',
            id_servicio = $id_servicio
            WHERE id_equipo = $id_equipo_2;";

            if ($conn->query($sql_equipo_2) === TRUE) {
                echo "Datos del equipo actualizados correctamente.";
            } else {
                echo "Error al actualizar datos del equipo: " . $conn->error;
            }
        }
        
        if (isset($_POST['id_equipo_3']) && !empty($_POST['id_equipo_3'])) {
            $sql_equipo_3 = "UPDATE equipo SET
            equipo = '$equipo_1',
            serie = '$serie',
            id_servicio = $id_servicio
            WHERE id_equipo = $id_equipo_3;";

            if ($conn->query($sql_equipo_3) === TRUE) {
                echo "Datos del equipo actualizados correctamente.";
            } else {
                echo "Error al actualizar datos del equipo: " . $conn->error;
            }
        }
        

        
    }
    if ($_POST['function'] == 'delete_multiple') {
        $idsJSON = $_POST['ids'];
        $idsToDelete = json_decode($idsJSON);
        $placeholders = implode(',', array_fill(0, count($idsToDelete), '?'));
        $stmt = $conn->prepare("UPDATE contrato SET activo = 0 WHERE id_cliente IN ($placeholders)");
        $stmt->execute($idsToDelete);
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
WHERE ct.activo = 1
GROUP BY c.id_cliente;";

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    $clientes = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $clientes[] = $row;
    }
}

mysqli_free_result($result);

$sql = "SELECT c.id_cliente, eq.* FROM cliente c
JOIN contrato ct ON c.id_cliente = ct.id_cliente
JOIN 
(
    SELECT 
        eq.id_servicio,
        eq.equipo AS equipo_nombre,
        eq.mac_address AS equipo_mac_address
    FROM 
        equipo eq
) AS eq ON ct.id_contrato = eq.id_servicio;";

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    $equipos = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $requipos[] = $row;
    }
} else {
    echo "No se encontraron resultados.";
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

$result = mysqli_query($conn, "CALL ObtenerSumatoriaMensualidadesPagadasColones()");

// Obtener el resultado de la consulta
$row = mysqli_fetch_assoc($result);
mysqli_free_result($result);
mysqli_next_result($conn); // Limpiar resultados antes de la siguiente consulta

$result = mysqli_query($conn, "CALL ObtenerSumatoriaMensualidadesPagadasDolares()");

// Obtener el resultado de la consulta
$row_dolares = mysqli_fetch_assoc($result);
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
    <div class="d-flex">
        <div class="col-1"></div>
        <div class="col-10">
            <nav class="navbar navbar-expand-lg">
                <a class="navbar-brand" href="#"><img src="./img/logo.png" class="w-25" /></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </nav>
        </div>
        <div class="col-1"></div>
    </div>
    <div class="d-flex row">
        <div class="col-1"></div>
        <div class="col-10">
            <div class="container-fluid">
                <div class="row justify-content-end">
                    <div class="col-md-2">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="text-center">Total mensual cobrado colones</h4>
                            </div>
                            <div class="card-body">
                                <?php
                                // Mostrar el resultado en la tarjeta de Bootstrap
                                if ($row) {
                                    $sumatoria_mensualidades = $row['sumatoria_mensualidades'];
                                ?>
                                    <h4 class="text-center">
                                        ₡<?php echo $sumatoria_mensualidades; ?>
                                    </h4>
                                <?php
                                } else {
                                ?>
                                    <p class="text-center">No hay mensualidades pagadas en el mes actual.</p>
                                <?php
                                }
                                ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="text-center">Total mensual cobrado dolares</h4>
                            </div>
                            <div class="card-body">
                                <?php
                                // Mostrar el resultado en la tarjeta de Bootstrap
                                if ($row_dolares) {
                                    $sumatoria_mensualidades = $row_dolares['sumatoria_mensualidades'];
                                ?>
                                    <h4 class="text-center">
                                        $<?php echo $sumatoria_mensualidades; ?>
                                    </h4>
                                <?php
                                } else {
                                ?>
                                    <p class="text-center">No hay mensualidades pagadas en el mes actual.</p>
                                <?php
                                }
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1"></div>
        <div class="col-1"></div>
        <div class="col-10">
            <div class="container-fluid mt-5">
                <div class="search-section table-container">
                    <div class="row d-flex justify-content-between mb-5">
                        <h4 class="table-title title col-6">Administracion de clientes</h4>
                        <button type="button" class="btn btn-secondary col-2" id="ver_eliminados">Ver eliminados</button>
                        <button type="button" class="btn btn-primary col-2" data-bs-toggle="modal" data-bs-target="#crearModal">Agregar cliente</button>
                        <?php
                        require_once 'create_view.php';
                        ?>
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
                                                    <th hidden class="no-sort">Email</th>
                                                    <th class="no-sort">Teléfono</th>
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
                                                                <input type="checkbox" class="form-check-input custom-checkbox <?php echo $cliente['email']; ?>" id="checkbox-<?php echo $cliente['id_cliente']; ?>" data-email="<?php echo $cliente['email']; ?>" onclick="get_all_checked_candidates()">
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
                                                            <td class="text-truncate" data-bs-toggle="tooltip" data-bs-placement="top" title="<?php echo $cliente['nombre_cliente']; ?>">
                                                                <?php echo $cliente['nombre_cliente']; ?>
                                                            </td>
                                                            <td hidden>
                                                                <?php echo $cliente['email']; ?>
                                                            </td>
                                                            <td>
                                                                <?php echo $cliente['telefono']; ?>
                                                            </td>
                                                            <td class="text-truncate" data-bs-toggle="tooltip" data-bs-placement="top" title="<?php echo $cliente['localidad']; ?>">
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
                                                                            <a class="dropdown-item btn-edit-get" data-id="<?php echo $cliente['id_cliente']; ?>" data-bs-toggle="modal" data-bs-target="#editarModal"><img src="./img/editar.png" class="img-fluid dropdown-image" alt="Gmail" /> Editar</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item btn-details-get" data-id="<?php echo $cliente['id_cliente']; ?>" data-bs-toggle="modal" data-bs-target="#editarModal"><img src="./img/detalles.png" class="img-fluid dropdown-image" alt="Gmail" /> Detalles</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item link_delete" data-id="<?php echo $cliente['id_cliente']; ?>"><img src="./img/borrar.png" class="img-fluid dropdown-image" alt="Gmail" /> Eliminar</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item link_pay" data-id="<?php echo $cliente['ct_id_contrato']; ?>" data-name="<?php echo $cliente['nombre_cliente']; ?>" data-monto="<?php echo $cliente['mensualidad']; ?>" data-bs-toggle="modal" data-bs-target="#modalRegistrarPago"><img src="./img/pagar.png" class="img-fluid dropdown-image" alt="Pago" /> Reg.pago </a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item export" data-id="<?php echo $cliente['id_cliente']; ?>"><img src="./img/pdf.png" class="img-fluid dropdown-image" alt="Pago" /> Exportar </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#" onclick="redirectToWhatsApp(<?php echo $cliente['telefono']; ?>)" class="dropdown-item">
                                                                                <img src="./img/whatsapp.png" class="img-fluid dropdown-image" alt="Whatsapp" /> WhatsApp
                                                                            </a>
                                                                        </li>
                                                                    </ul>
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
        </div>
        <div class="col-1"></div>
    </div>

    <?php
    require_once 'edit_view.php';
    require_once 'pago_view.php';
    ?>
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
                    <button type="button" class="btn btn-secondary" id="close_email_modal" data-bs-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-primary" id="send_email">Enviar</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="delete_modal" tabindex="-1" aria-labelledby="delete_modal" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <h5 class="modal-title">Confirmacion de eliminacion</h5>
                    <button type="button" class="btn-close" id="btn-close-modal" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>¿Estás seguro de que deseas eliminar?</p>
                </div>
                <div class="modal-footer border-0">
                    <button type="button" class="btn btn-secondary" id="close_email_modal" data-bs-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-primary" id="delete_candidates">Eliminar</button>
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
        <div class="modal-dialog modzal-dialog-centered">
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