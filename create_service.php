<?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        require_once 'config.php';
        $conn = mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
        if (!$conn) {
            die("Error de conexión: " . mysqli_connect_error());
            echo "Error al conectar con la base de datos";
        }
        if ($_POST['function'] == 'create') {
            $cedula = $_POST['cedula'];
            $nombre_cliente = $_POST['nombre_cliente'];
            $telefono = $_POST['telefono'];
            $correo = $_POST['correo'];
            $localidad = $_POST['localidad'];
            $coordenadas = $_POST['coordenadas'];
            $id_tipo_cliente = $_POST['id_tipo_cliente'];
    
            $numero_contrato = $_POST['numero_contrato'];
            $numero_facturacion = $_POST['numero_facturacion'];
            $tmu = $_POST['TMU'];
            $fecha_instalacion = $_POST['fecha_instalacion'];
            $monto_instalacion = $_POST['monto_instalacion'];
            $mensualidad = $_POST['mensualidad'];
            $fecha_cobro = $_POST['fecha_cobro'];
            $fecha_corte = $_POST['fecha_corte'];
    
            $velocidad_contratada = $_POST['velocidad_contratada'];
            $sector_anclado = $_POST['sector_anclado'];
            $contrasena_ppoe = $_POST['contrasena_ppoe'];
    
            $equipo_1 = $_POST['equipo_1'];
            $mac_address_1 = $_POST['mac_address_1'];
            $equipo_2 = $_POST['equipo_2'];
            $mac_address_2 = $_POST['mac_address_2'];
            $equipo_3 = $_POST['equipo_3'];
            $serie = $_POST['serie'];
    
            $wifi_nombre = $_POST['wifi_nombre'];
            $wifi_contrasena = $_POST['wifi_contrasena'];
            
    
            $sql_cliente = "INSERT INTO cliente (identificacion, nombre_cliente, telefono, email, localidad, coordenadas, id_tipo_cliente) 
            VALUES ('$cedula', '$nombre_cliente', '$telefono', '$correo', '$localidad', '$coordenadas', $id_tipo_cliente);";
    
            if ($conn->query($sql_cliente) === TRUE) {
                $id_cliente_insertado = $conn->insert_id;
                $sql_contrato = "INSERT INTO contrato (numero_contrato, numero_facturacion, TMU, fecha_instalacion, monto_instalacion, mensualidad, fecha_corte, fecha_cobro, id_cliente)
                VALUES ('$numero_contrato', '$numero_facturacion', '$tmu', '$fecha_instalacion', $monto_instalacion, $mensualidad, '$fecha_corte', '$fecha_cobro', $id_cliente_insertado);";
    
                if ($conn->query($sql_contrato) === TRUE) {
                    $id_contrato_insertado = $conn->insert_id;
                    $sql_servicio = "INSERT INTO servicio (id_contrato, velocidad_contratada, sector_anclado, contra_ppoe)
                    VALUES ($id_contrato_insertado, '$velocidad_contratada', '$sector_anclado', '$contrasena_ppoe');";
    
                    if ($conn->query($sql_servicio) === TRUE) {
                        $id_servicio_insertado = $conn->insert_id;
                        $sql_equipo = "INSERT INTO equipo (id_servicio, equipo, mac_address, serie)
                        VALUES ($id_servicio_insertado, '$equipo_1', '$mac_address_1', ''),
                        ($id_servicio_insertado, '$equipo_2', '$mac_address_2', ''),
                        ($id_servicio_insertado, '$equipo_3', '', '$serie');";
    
                        $sql_wifi = "INSERT INTO wifi (id_servicio, nombre_wifi, contra_wifi)
                        VALUES ($id_servicio_insertado, '$wifi_nombre', '$wifi_contrasena');";
    
                        if ($conn->query($sql_equipo) === TRUE && $conn->query($sql_wifi) === TRUE) {
                            echo "Cliente y datos anexos creados correctamente.";
                        }else{
                            echo "Error al insertar equipos o wifi: " . $conn->error;
                        }
                    }else{
                        echo "Error al insertar servicio: " . $conn->error;
                    }
                }else{
                    echo "Error al insertar contrato: " . $conn->error;
                }
            }else{
                echo "Error al insertar cliente: " . $conn->error;
            }
        }
        $conn->close();
        header("Location: index.php");
    }
?>