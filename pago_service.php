<?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        require_once 'config.php';
        $conn = mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
        if (!$conn) {
            die("Error de conexión: " . mysqli_connect_error());
            echo "Error al conectar con la base de datos";
        }

        if ($_POST['function'] == 'pay') {
            $id_servicio = $_POST['id_servicio'];
            $monto = $_POST['monto'];
            $fecha_pago = $_POST['fecha_pago'];
            $sql = "INSERT INTO registro_pago (id_servicio, fecha_pago, monto_pago)
            VALUES ($id_servicio, '$fecha_pago', $monto);";
            if ($conn->query($sql) === TRUE) {
                echo "El pago ha sido registrado correctamente.";
                $sql = 'call ActualizarDeudaClientes();';
                $conn->query($sql);
            } else {
                echo "Error al registrar el pago: " . $conn->error;
            }
        }
        $conn->close();
        header("Location: index.php");
    }
?>