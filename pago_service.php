<?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        require_once 'config.php';
        $conn = mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
        if (!$conn) {
            die("Error de conexión: " . mysqli_connect_error());
            echo "Error al conectar con la base de datos";
        }

        if ($_POST['function'] == 'pay') {
            $id_contrato = $_POST['id_contrato'];
            $monto = $_POST['monto'];
            $fecha_pago = $_POST['fecha_pago'];
            $sql = "INSERT INTO registro_pago (id_contrato, fecha_pago, monto_pago)
            VALUES ($id_contrato, '$fecha_pago', $monto);";
            if ($conn->query($sql) === TRUE) {
                echo "El pago ha sido registrado correctamente.";
                $sql = "call ps_actualizar_deuda_cliente($id_contrato);";
                $conn->query($sql);
            } else {
                echo "Error al registrar el pago: " . $conn->error;
            }
        }
        $conn->close();
        header("Location: index.php");
    }
?>