
<div class="modal fade" id="editarModal" tabindex="-1" aria-labelledby="editalModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Editar datos del cliente</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
            </div>
            <div class="modal-body">
                <!-- Contenido del formulario para crear -->
                <form action="index.php" method="post" id="form_edit">
                    <input hidden type="text" class="form-control" name="id_cliente" id="edit_id_cliente"/>
                    <input hidden type="text" class="form-control" name="id_contrato" id="edit_id_contrato"/>
                    <input hidden type="text" class="form-control" name="id_servicio" id="edit_id_servicio"/>
                    <input hidden type="text" class="form-control" name="id_wifi" id="edit_id_wifi"/>
                    <input type="hidden" name="function" value="edit">
                    <div class="row">
                        <div class="mb-3 col-12 col-md-6 col-lg-3">
                            <label for="cedula" class="form-label">Cédula:</label>
                            <input type="text" class="form-control" name="identificacion" id="edit_identificacion" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-3">
                            <label for="nombre_cliente" class="form-label">Nombre del
                                Cliente:</label>
                            <input type="text" class="form-control" name="nombre_cliente" id="edit_nombre_cliente" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-3">
                            <label for="telefono" class="form-label">Teléfono:</label>
                            <input type="text" class="form-control" name="telefono" id="edit_telefono" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-3">
                            <label for="correo" class="form-label">Correo:</label>
                            <input type="email" class="form-control" name="email" id="edit_email" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                            <label for="localidad" class="form-label">Localidad:</label>
                            <input type="text" class="form-control" name="localidad" id="edit_localidad"  placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                            <label for="coordenadas" class="form-label">Coordenadas:</label>
                            <input type="text" class="form-control" name="coordenadas" id="edit_coordenadas" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                            <label for="velocidad_contratada" class="form-label">Velocidad
                                Contratada:</label>
                            <input type="text" class="form-control" name="velocidad_contratada" id="edit_velocidad_contratada" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                            <label for="numero_contrato" class="form-label">Número de
                                Contrato:</label>
                            <input type="text" class="form-control" name="numero_contrato" id="edit_numero_contrato" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                            <label for="id_tipo_cliente" class="form-label">Tipo
                                Cliente:</label>
                            <select name="id_tipo_cliente" class="form-control">
                                <?php
                                foreach ($tipos as $tipo) {
                                    $id = $tipo['id_tipo_cliente'];
                                    $nombre = $tipo['descripcion_tipo_cliente'];
                                    $selected = ($cliente['id_tipo_cliente'] == $id) ? "selected" : "";
                                    echo "<option value=\"$id\" $selected>$nombre</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                            <label for="sector_anclado" class="form-label">Sector
                                Anclado:</label>
                            <input type="text" class="form-control" name="sector_anclado" id="edit_sector_anclado" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                            <label for="contrasena_ppoe" class="form-label">Contraseña
                                PPOE:</label>
                            <input type="text" class="form-control" name="contra_ppoe" id="edit_contra_ppoe" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                            <label for="wifi_nombre" class="form-label">Nombre de
                                WiFi:</label>
                            <input type="text" class="form-control" name="nombre_wifi" id="edit_nombre_wifi" placeholder="Sin datos">
                        </div>

                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                            <label for="wifi_contrasena" class="form-label">Contraseña de
                                WiFi:</label>
                            <input type="text" class="form-control" name="contra_wifi" id="edit_contra_wifi" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6">
                            <label for="equipo_1" class="form-label">Fecha de instalacion:</label>
                            <input type="date" class="form-control" name="fecha_instalacion" id="edit_fecha_instalacion" placeholder="Sin datos">
                        </div>

                        <div class="mb-3 col-12 col-md-6">
                            <label for="mac_address_1" class="form-label">Monto de instalacion:</label>
                            <input type="text" class="form-control" name="monto_instalacion" id="edit_monto_instalacion" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                            <label for="mac_address_1" class="form-label">Mensualidad:</label>
                            <input type="text" class="form-control" name="mensualidad" id="edit_mensualidad" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                            <label for="fecha_cobro" class="form-label">Fecha de cobro:</label>
                            <input type="date" class="form-control" name="fecha_cobro" id="edit_fecha_cobro" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6 col-lg-4">
                            <label for="fecha_corte" class="form-label">Fecha de corte:</label>
                            <input type="date" class="form-control" name="fecha_corte" id="edit_fecha_corte" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6">
                            <label for="equipo_1" class="form-label">Equipo 1:</label>
                            <input hidden type="text" class="form-control" name="id_equipo_1" id="edit_id_equipo_1"/>
                            <input type="text" class="form-control" name="equipo_1" id="edit_equipo_1" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6">
                            <label for="mac_address_1" class="form-label">MAC Address
                                1:</label>
                            <input type="text" class="form-control" name="mac_address_1" id='edit_mac_address_1' placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6">
                            <label for="equipo_2" class="form-label">Equipo 2:</label>
                            <input hidden type="text" class="form-control" name="id_equipo_2" id="edit_id_equipo_2"/>
                            <input type="text" class="form-control" name="equipo_2" id="edit_equipo_2" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6">
                            <label for="mac_address_2" class="form-label">MAC Address
                                2:</label>
                            <input type="text" class="form-control" name="mac_address_2" id="edit_mac_address_2" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6">
                            <label for="equipo_3" class="form-label">Equipo
                                3:</label>
                                <input hidden type="text" class="form-control" name="id_equipo_3" id="edit_id_equipo_3"/>
                            <input type="text" class="form-control" name="equipo_3" id='edit_equipo_3' placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6">
                            <label for="serie" class="form-label">Serie:</label>
                            <input type="text" class="form-control" name="serie" id='edit_serie' placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6">
                            <label for="equipo_3" class="form-label">TMU:</label>
                            <input type="number" class="form-control" name="TMU" id="edit_TMU" placeholder="Sin datos">
                        </div>
                        <div class="mb-3 col-12 col-md-6">
                            <label for="serie" class="form-label">Numero facturacion:</label>
                            <input type="number" class="form-control" name="numero_facturacion" id="edit_numero_facturacion" placeholder="Sin datos">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary btn_edit" data-id="<?php echo $cliente['id_cliente']; ?>">Guardar</button>
            </div>
        </div>
    </div>
</div>