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
            $sql = "SELECT c.*, ct.*, tc.*, s.*, wf.* FROM cliente c
            JOIN contrato ct ON c.id_cliente = ct.id_cliente
            JOIN tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
            JOIN 
            (
                SELECT 
                    s.id_servicio AS s_id_servicio,
                    s.velocidad_contratada,
                    s.sector_anclado,
                    s.contra_ppoe
                FROM 
                    servicio s
            ) AS s ON ct.id_contrato = s.s_id_servicio
            LEFT JOIN wifi wf ON s.s_id_servicio = wf.id_servicio
            LEFT JOIN registro_pago rp ON ct.id_contrato = rp.id_contrato
            WHERE c.id_cliente = $id_cliente;";
            $result =$conn->query($sql);
            if ($result->num_rows > 0) {
                $cliente = $result->fetch_assoc();
                $sql = "SELECT c.id_cliente, eq.* FROM cliente c
                JOIN contrato ct ON c.id_cliente = ct.id_cliente
                JOIN 
                (
                    SELECT 
                        eq.id_servicio,
                        eq.equipo AS equipo_nombre,
                        eq.mac_address AS equipo_mac_address,
                        eq.serie as equipo_serie,
                        eq.id_equipo as id_equipo
                    FROM 
                        equipo eq
                ) AS eq ON ct.id_contrato = eq.id_servicio
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