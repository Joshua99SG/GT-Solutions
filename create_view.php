
<div class="modal fade" id="crearModal" tabindex="-1" aria-labelledby="crearModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="crearModalLabel">Agregar cliente</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                </div>
                <div class="modal-body">
                    <!-- Contenido del formulario para crear -->
                    <div class="container mt-4">
                        <div class="row">
                            <div class="col-md-12">
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
                                <form action="create_service.php" method="post" id="form_create">
                                    <input type="hidden" name="function" value="create">
                                    <div class="tab-content" id="contenidoPasosFormulario">
                                        <!-- Paso 1: Datos del cliente -->
                                        <div class="tab-pane fade show active" id="pasoCliente" role="tabpanel" aria-labelledby="pasoCliente-tab">
                                            <!-- Aquí va el formulario para los datos del cliente -->
                                            <!-- Por ejemplo, campos para nombre, teléfono, localidad, cédula, etc. -->
                                            <div class="row">
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="cedula" class="form-label">Cédula:</label>
                                                    <input type="text" class="form-control" id="cedula" name="cedula" placeholder="Cedula">
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="nombre_cliente" class="form-label">Nombre del Cliente:</label>
                                                    <input type="text" class="form-control" id="nombre_cliente" name="nombre_cliente" placeholder="Nombre del cliente">
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="telefono" class="form-label">Teléfono:</label>
                                                    <input type="text" class="form-control" id="telefono" name="telefono" placeholder="Telefono">
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="correo" class="form-label">Correo:</label>
                                                    <input type="email" class="form-control" id="correo" name="correo" placeholder="Correo electronico">
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="localidad" class="form-label">Localidad:</label>
                                                    <input type="text" class="form-control" id="localidad" name="localidad" placeholder="Localidad">
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="coordenadas" class="form-label">Coordenadas:</label>
                                                    <input type="text" class="form-control" id="coordenadas" name="coordenadas" placeholder="Coordenadas">
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <label for="id_tipo_cliente" class="form-label">Tipo Cliente:</label>
                                                    <select name="id_tipo_cliente" class="form-control">
                                                        <option>--Seleccione--</option>
                                                        <?php
                                                        foreach ($tipos as $tipo) {
                                                            $id = $tipo['id_tipo_cliente'];
                                                            $nombre = $tipo['descripcion_tipo_cliente'];
                                                            echo "<option value=\"$id\">$nombre</option>";
                                                        }
                                                        ?>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- Agrega aquí los demás campos del cliente -->
                                            <!-- ... -->
                                            <button type="button" class="btn btn-primary" onclick="siguientePaso('pasoContrato')">Siguiente</button>
                                        </div>

                                        <!-- Paso 2: Datos del contrato -->
                                        <div class="tab-pane fade" id="pasoContrato" role="tabpanel" aria-labelledby="pasoContrato-tab">
                                            <!-- Aquí va el formulario para los datos del contrato -->
                                            <!-- Por ejemplo, campos para número de contrato, fecha de instalación, monto de instalación, etc. -->
                                            <div class="row">
                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                    <label for="numero_contrato" class="form-label">Número de Contrato:</label>
                                                    <input type="text" class="form-control" id="numero_contrato" name="numero_contrato" placeholder="Numero contrato">
                                                </div>
                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                    <label for="serie" class="form-label">Numero facturacion:</label>
                                                    <input type="number" class="form-control" name="numero_facturacion" placeholder="Numero de facturacion">
                                                </div>
                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                    <label for="equipo_3" class="form-label">TMU:</label>
                                                    <input type="number" class="form-control" name="TMU" placeholder="TMU">
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
                                                    <label for="mac_address_1" class="form-label">Abonado a instalacion:</label>
                                                    <input type="text" class="form-control" id="abono_instalacion" name="abono_instalacion" placeholder="Abonado a instalacion">
                                                </div>
                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                    <label for="mac_address_1" class="form-label">Mensualidad:</label>
                                                    <input type="text" class="form-control" id="mensualidad" name="mensualidad" placeholder="Mensualidad">
                                                </div>
                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                    <label for="fecha_corte" class="form-label">Fecha de cobro:</label>
                                                    <input type="date" class="form-control" id="fecha_cobro" name="fecha_cobro" placeholder="Fecha corte">
                                                </div>
                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                    <label for="fecha_corte" class="form-label">Fecha de corte:</label>
                                                    <input type="date" class="form-control" id="fecha_corte" name="fecha_corte" placeholder="Fecha corte">
                                                </div>
                                            </div>
                                            <!-- Agrega aquí los demás campos del contrato -->
                                            <!-- ... -->
                                            <button type="button" class="btn btn-primary" onclick="siguientePaso('pasoServicio')">Siguiente</button>
                                            <button type="button" class="btn btn-secondary" onclick="anteriorPaso('pasoCliente')">Anterior</button>
                                        </div>

                                        <!-- Paso 3: Datos del servicio -->
                                        <div class="tab-pane fade" id="pasoServicio" role="tabpanel" aria-labelledby="pasoServicio-tab">
                                            <!-- Aquí va el formulario para los datos del servicio -->
                                            <!-- Por ejemplo, campos para velocidad contratada, sector anclado, etc. -->
                                            <div class="row">
                                                <div class="mb-3 col-12">
                                                    <label for="velocidad_contratada" class="form-label">Velocidad
                                                        Contratada:</label>
                                                    <input type="text" class="form-control" id="velocidad_contratada" name="velocidad_contratada" placeholder="Velocidad contratada">
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <label for="sector_anclado" class="form-label">Sector Anclado:</label>
                                                    <input type="text" class="form-control" id="sector_anclado" name="sector_anclado" placeholder="Sector anclado">
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <label for="contrasena_ppoe" class="form-label">Contraseña PPOE:</label>
                                                    <input type="text" class="form-control" id="contrasena_ppoe" name="contrasena_ppoe" placeholder="Contraseña PPOE">
                                                </div>
                                            </div>
                                            <!-- Agrega aquí los demás campos del servicio -->
                                            <!-- ... -->
                                            <button type="button" class="btn btn-primary" onclick="siguientePaso('pasoEquipo')">Siguiente</button>
                                            <button type="button" class="btn btn-secondary" onclick="anteriorPaso('pasoContrato')">Anterior</button>
                                        </div>

                                        <!-- Paso 4: Datos del equipo -->
                                        <div class="tab-pane fade" id="pasoEquipo" role="tabpanel" aria-labelledby="pasoEquipo-tab">
                                            <!-- Aquí va el formulario para los datos del equipo -->
                                            <!-- Por ejemplo, campos para el nombre del equipo, dirección MAC, etc. -->
                                            <div class="row">
                                                <div class="mb-3 col-12 col-md-6">
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
                                            </div>
                                            <!-- Agrega aquí los demás campos del equipo -->
                                            <!-- ... -->
                                            <button type="button" class="btn btn-primary" onclick="siguientePaso('pasoWifi')">Siguiente</button>
                                            <button type="button" class="btn btn-secondary" onclick="anteriorPaso('pasoServicio')">Anterior</button>
                                        </div>

                                        <!-- Paso 5: Datos del wifi -->
                                        <div class="tab-pane fade" id="pasoWifi" role="tabpanel" aria-labelledby="pasoWifi-tab">
                                            <!-- Aquí va el formulario para los datos del wifi -->
                                            <!-- Por ejemplo, campos para el nombre del wifi, contraseña, etc. -->
                                            <div class="row">
                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                    <label for="wifi_nombre" class="form-label">Nombre de WiFi:</label>
                                                    <input type="text" class="form-control" id="wifi_nombre" name="wifi_nombre" placeholder="Nombre WIFI">
                                                </div>
                                                <div class="mb-3 col-12 col-md-6 col-lg-4">
                                                    <label for="wifi_contrasena" class="form-label">Contraseña de WiFi:</label>
                                                    <input type="text" class="form-control" id="wifi_contrasena" name="wifi_contrasena" placeholder="Contraseña WIFI">
                                                </div>
                                            </div>
                                            <!-- Agrega aquí los demás campos del wifi -->
                                            <!-- ... -->
                                            <button type="button" class="btn btn-secondary" onclick="anteriorPaso('pasoEquipo')">Anterior</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary" id="btn_create">Guardar</button>
                </div>
            </div>
        </div>
    </div>