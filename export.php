<?php
// Incluir la biblioteca TCPDF
include('library/tcpdf/tcpdf.php');
require_once 'config.php';
$conn = mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
if (!$conn) {
    die("Error de conexión: " . mysqli_connect_error());
    echo "Error al conectar con la base de datos";
}

// Obtener los datos del cliente desde la base de datos (ejemplo)
$cliente_id = $_GET['id']; // Supongamos que recibes el ID del cliente desde la URL
// Realiza la consulta SQL para obtener los datos del cliente utilizando $cliente_id
// $datos_cliente = ... // Aquí debes obtener los datos desde la base de datos
$sql = "SELECT c.*, ct.*, tc.*, s.*, s.id_servicio AS s_id_servicio, wf.* FROM cliente c
            LEFT JOIN contrato ct ON c.id_cliente = ct.id_cliente
            LEFT JOIN tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
            LEFT JOIN servicio s ON ct.id_contrato = s.id_contrato
            LEFT JOIN wifi wf ON s.id_servicio = wf.id_servicio
            LEFT JOIN registro_pago rp ON ct.id_contrato = rp.id_contrato
            WHERE c.id_cliente = $cliente_id;";

$result = mysqli_query($conn, $sql);
$datos_cliente = $result->fetch_assoc();



// Crear el objeto TCPDF
$pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8');
// Agregar una página
$pdf->AddPage();

// Agregar contenido al PDF
$pdf->SetFont('helvetica', '', 12);
$pdf->Cell(0, 10, 'Datos del Cliente', 0, 1, 'C');
$pdf->Cell(0, 10, 'Identificacion: ' . $datos_cliente['identificacion'], 0, 1);
$pdf->Cell(0, 10, 'Nombre: ' . $datos_cliente['nombre_cliente'], 0, 1);
$pdf->Cell(0, 10, 'Telefono: ' . $datos_cliente['telefono'], 0, 1);
$pdf->Cell(0, 10, 'Correo electrónico: ' . $datos_cliente['email'], 0, 1);
$pdf->Cell(0, 10, 'Localidad: ' . $datos_cliente['localidad'], 0, 1);
$pdf->Cell(0, 10, 'Datos de contrato', 0, 1, 'C');
$pdf->Cell(0, 10, 'Numero contrato: ' . $datos_cliente['numero_contrato'], 0, 1);
$pdf->Cell(0, 10, 'Fecha instalacion: ' . $datos_cliente['fecha_instalacion'], 0, 1);
$pdf->Cell(0, 10, 'Mensualidad: ' . $datos_cliente['mensualidad'] . " colones", 0, 1);
$pdf->Cell(0, 10, 'Fecha corte: ' . $datos_cliente['fecha_corte'], 0, 1);
$pdf->Cell(0, 10, 'Datos del servicio', 0, 1, 'C');
$pdf->Cell(0, 10, 'Velocidad contratada: ' . $datos_cliente['velocidad_contratada'], 0, 1);
$pdf->Cell(0, 10, 'Sector anclado: ' . $datos_cliente['sector_anclado'], 0, 1);
$pdf->Cell(0, 10, 'Contraseña PPOE: ' . $datos_cliente['contra_ppoe'], 0, 1);
$pdf->Cell(0, 10, 'Datos del wifi', 0, 1, 'C');
$pdf->Cell(0, 10, 'Nombre wifi: ' . $datos_cliente['nombre_wifi'], 0, 1);
$pdf->Cell(0, 10, 'Contraseña: ' . $datos_cliente['contra_wifi'], 0, 1);
// Agregar más celdas con otros datos del cliente según lo necesites

// Generar el PDF (salida al navegador)
$pdf->Output('nombre_archivo.pdf', 'I'); // I: muestra el PDF en el navegador
echo "Succesfull"
?>
