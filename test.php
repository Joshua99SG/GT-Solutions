<!DOCTYPE html>
<html>
<head>
    <title>Formulario de Creación de Cliente</title>
    <!-- Enlace a los archivos de Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
</head>
<body>

<div class="container mt-4">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <!-- Barra de pestañas (tabs) para los pasos -->
            <ul class="nav nav-tabs" id="pasosFormulario" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" id="pasoCliente-tab" data-bs-toggle="tab" href="#pasoCliente" role="tab" aria-controls="pasoCliente" aria-selected="true">Cliente</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="pasoContrato-tab" data-bs-toggle="tab" href="#pasoContrato" role="tab" aria-controls="pasoContrato" aria-selected="false">Contrato</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="pasoServicio-tab" data-bs-toggle="tab" href="#pasoServicio" role="tab" aria-controls="pasoServicio" aria-selected="false">Servicio</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="pasoEquipo-tab" data-bs-toggle="tab" href="#pasoEquipo" role="tab" aria-controls="pasoEquipo" aria-selected="false">Equipo</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="pasoWifi-tab" data-bs-toggle="tab" href="#pasoWifi" role="tab" aria-controls="pasoWifi" aria-selected="false">Wifi</a>
                </li>
            </ul>

            <!-- Contenido de cada paso -->
            <div class="tab-content" id="contenidoPasosFormulario">
                <!-- Paso 1: Datos del cliente -->
                <div class="tab-pane fade show active" id="pasoCliente" role="tabpanel" aria-labelledby="pasoCliente-tab">
                    <!-- Aquí va el formulario para los datos del cliente -->
                    <!-- Por ejemplo, campos para nombre, teléfono, localidad, cédula, etc. -->
                    <form id="formularioCliente">
                        <div class="mb-3">
                            <label for="nombre_cliente" class="form-label">Nombre del Cliente</label>
                            <input type="text" class="form-control" id="nombre_cliente" name="nombre_cliente" required>
                        </div>
                        <!-- Agrega aquí los demás campos del cliente -->
                        <!-- ... -->
                        <button type="button" class="btn btn-primary" onclick="siguientePaso('pasoContrato')">Siguiente</button>
                    </form>
                </div>

                <!-- Paso 2: Datos del contrato -->
                <div class="tab-pane fade" id="pasoContrato" role="tabpanel" aria-labelledby="pasoContrato-tab">
                    <!-- Aquí va el formulario para los datos del contrato -->
                    <!-- Por ejemplo, campos para número de contrato, fecha de instalación, monto de instalación, etc. -->
                    <form id="formularioContrato">
                        <div class="mb-3">
                            <label for="numero_contrato" class="form-label">Número de Contrato</label>
                            <input type="text" class="form-control" id="numero_contrato" name="numero_contrato" required>
                        </div>
                        <!-- Agrega aquí los demás campos del contrato -->
                        <!-- ... -->
                        <button type="button" class="btn btn-primary" onclick="siguientePaso('pasoServicio')">Siguiente</button>
                        <button type="button" class="btn btn-secondary" onclick="anteriorPaso('pasoCliente')">Anterior</button>
                    </form>
                </div>

                <!-- Paso 3: Datos del servicio -->
                <div class="tab-pane fade" id="pasoServicio" role="tabpanel" aria-labelledby="pasoServicio-tab">
                    <!-- Aquí va el formulario para los datos del servicio -->
                    <!-- Por ejemplo, campos para velocidad contratada, sector anclado, etc. -->
                    <form id="formularioServicio">
                        <div class="mb-3">
                            <label for="velocidad_contratada" class="form-label">Velocidad Contratada</label>
                            <input type="text" class="form-control" id="velocidad_contratada" name="velocidad_contratada" required>
                        </div>
                        <!-- Agrega aquí los demás campos del servicio -->
                        <!-- ... -->
                        <button type="button" class="btn btn-primary" onclick="siguientePaso('pasoEquipo')">Siguiente</button>
                        <button type="button" class="btn btn-secondary" onclick="anteriorPaso('pasoContrato')">Anterior</button>
                    </form>
                </div>

                <!-- Paso 4: Datos del equipo -->
                <div class="tab-pane fade" id="pasoEquipo" role="tabpanel" aria-labelledby="pasoEquipo-tab">
                    <!-- Aquí va el formulario para los datos del equipo -->
                    <!-- Por ejemplo, campos para el nombre del equipo, dirección MAC, etc. -->
                    <form id="formularioEquipo">
                        <div class="mb-3">
                            <label for="equipo_1" class="form-label">Equipo 1</label>
                            <input type="text" class="form-control" id="equipo_1" name="equipo_1" required>
                        </div>
                        <!-- Agrega aquí los demás campos del equipo -->
                        <!-- ... -->
                        <button type="button" class="btn btn-primary" onclick="siguientePaso('pasoWifi')">Siguiente</button>
                        <button type="button" class="btn btn-secondary" onclick="anteriorPaso('pasoServicio')">Anterior</button>
                    </form>
                </div>

                <!-- Paso 5: Datos del wifi -->
                <div class="tab-pane fade" id="pasoWifi" role="tabpanel" aria-labelledby="pasoWifi-tab">
                    <!-- Aquí va el formulario para los datos del wifi -->
                    <!-- Por ejemplo, campos para el nombre del wifi, contraseña, etc. -->
                    <form id="formularioWifi">
                        <div class="mb-3">
                            <label for="wifi_nombre" class="form-label">Nombre del Wifi</label>
                            <input type="text" class="form-control" id="wifi_nombre" name="wifi_nombre" required>
                        </div>
                        <!-- Agrega aquí los demás campos del wifi -->
                        <!-- ... -->
                        <button type="button" class="btn btn-primary" onclick="guardarDatos()">Guardar</button>
                        <button type="button" class="btn btn-secondary" onclick="anteriorPaso('pasoEquipo')">Anterior</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    // Función para avanzar al siguiente paso
    function siguientePaso(pasoSiguiente) {
        $('#pasosFormulario li.nav-item a[href="#' + pasoSiguiente + '"]').tab('show');
    }

    // Función para volver al paso anterior
    function anteriorPaso(pasoAnterior) {
        $('#pasosFormulario li.nav-item a[href="#' + pasoAnterior + '"]').tab('show');
    }

    // Función para guardar los datos del formulario
    function guardarDatos() {
        // Aquí puedes enviar los datos del formulario al servidor mediante AJAX para su procesamiento y almacenamiento en la base de datos
        // Por ejemplo, utilizando jQuery AJAX

        // Obtener los datos del formulario del cliente
        var nombre_cliente = $('#nombre_cliente').val();
        var telefono = $('#telefono').val();
        var localidad = $('#localidad').val();
        var cedula = $('#cedula').val();
        var correo = $('#correo').val();
        var id_tipo_cliente = $('#id_tipo_cliente').val();

        // Obtener los datos del formulario del contrato
        var numero_contrato = $('#numero_contrato').val();
        var coordenadas = $('#coordenadas').val();
        var fecha_instalacion = $('#fecha_instalacion').val();
        var monto_instalacion = $('#monto_instalacion').val();
        var mensualidad = $('#mensualidad').val();
        var tmu = $('#TMU').val();
        var numero_facturacion = $('#numero_facturacion').val();

        // Obtener los datos del formulario del servicio
        var velocidad_contratada = $('#velocidad_contratada').val();
        var sector_anclado = $('#sector_anclado').val();

        // Obtener los datos del formulario del equipo
        var equipo_1 = $('#equipo_1').val();
        var mac_address_1 = $('#mac_address_1').val();

        // Obtener los datos del formulario del wifi
        var wifi_nombre = $('#wifi_nombre').val();
        var wifi_contrasena = $('#wifi_contrasena').val();

        // Aquí puedes enviar los datos al servidor mediante AJAX para guardarlos en la base de datos
        $.ajax({
            type: 'POST',
            url: 'guardar_datos.php', // Reemplaza con la URL de tu archivo PHP para guardar los datos en la base de datos
            data: {
                nombre_cliente: nombre_cliente,
                telefono: telefono,
                localidad: localidad,
                cedula: cedula,
                correo: correo,
                id_tipo_cliente: id_tipo_cliente,
                numero_contrato: numero_contrato,
                coordenadas: coordenadas,
                fecha_instalacion: fecha_instalacion,
                monto_instalacion: monto_instalacion,
                mensualidad: mensualidad,
                tmu: tmu,
                numero_facturacion: numero_facturacion,
                velocidad_contratada: velocidad_contratada,
                sector_anclado: sector_anclado,
                equipo_1: equipo_1,
                mac_address_1: mac_address_1,
                wifi_nombre: wifi_nombre,
                wifi_contrasena: wifi_contrasena
            },
            success: function(response) {
                // Manejar la respuesta del servidor (por ejemplo, mostrar un mensaje de éxito)
                alert('Los datos se han guardado correctamente.');
                // Redirigir a otra página si es necesario
                // window.location.href = 'otra_pagina.php';
            },
            error: function(xhr, status, error) {
                // Manejar el error en caso de que ocurra un problema con la petición AJAX
                console.log(xhr.responseText);
                alert('Error al guardar los datos.');
            }
        });
    }
</script>

</body>
</html>
