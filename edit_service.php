<?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        require_once 'config.php';
        $conn = mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
        if (!$conn) {
            die("Error de conexión: " . mysqli_connect_error());
            echo "Error al conectar con la base de datos";
        }
        if ($_POST['function'] == 'edit_get') {
            $id_cliente = $_POST['id_cliente'];
            $sql = "SELECT c.*, ct.*, tc.*, s.*, s.id_servicio AS s_id_servicio, wf.* FROM cliente c
            LEFT JOIN contrato ct ON c.id_cliente = ct.id_cliente
            LEFT JOIN tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
            LEFT JOIN servicio s ON ct.id_contrato = s.id_contrato
            LEFT JOIN wifi wf ON s.id_servicio = wf.id_servicio
            LEFT JOIN registro_pago rp ON ct.id_contrato = rp.id_contrato
            WHERE c.id_cliente = $id_cliente;";
            $result =$conn->query($sql);
            if ($result->num_rows > 0) {
                $cliente = $result->fetch_assoc();
                $sql = "SELECT c.id_cliente, eq.* FROM cliente c
                LEFT JOIN contrato ct ON c.id_cliente = ct.id_cliente
                LEFT JOIN servicio s ON ct.id_contrato = s.id_contrato
                LEFT JOIN equipo eq on s.id_servicio = eq.id_servicio
                WHERE c.id_cliente = $id_cliente;";
                $result =$conn->query($sql);
                if ($result->num_rows > 0) {
                    $equipos = array();
                    while ($row = mysqli_fetch_assoc($result)) {
                        $equipos[] = $row;
                    };
                    $response = array(
                        'cliente' => $cliente,
                        'equipos' => $equipos
                    );
                    echo json_encode($response);
                }else{
                    echo json_encode($cliente);
                }
            } else {
                echo json_encode(array('error' => 'Cliente no encontrado'));
            }
            $conn->close();
        }
    }
?>