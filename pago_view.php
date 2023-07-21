<div class="modal fade" id="modalRegistrarPago" tabindex="-1" aria-labelledby="modalRegistrarPagoLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalRegistrarPagoLabel">Registrar Pago</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Formulario para registrar el pago -->
                <form action="pago_service.php" method="post" id="form_pay">
                    <!-- Campos del formulario (puedes agregar más campos según tus necesidades) -->
                    <input type="text" class="form-control" id="function" name="function" value="pay" readonly required hidden>
                    <div class="mb-3" hidden>
                        <label for="id_cliente" class="form-label">ID del Cliente:</label>
                        <input type="text" class="form-control" id="id_contrato_pago" name="id_contrato" readonly required>
                    </div>
                    <div class="mb-3">
                        <label for="nombre_cliente" class="form-label">Nombre del cliente:</label>
                        <input type="text" class="form-control" id="nombre_cliente_pago" name="nombre_cliente" readonly required>
                    </div>
                    <div class="mb-3">
                        <label for="monto" class="form-label">Monto del Pago:</label>
                        <input type="number" step="0.01" class="form-control col-6" id="monto_pago" name="monto" readonly required>
                    </div>
                    <div class="mb-3">
                        <label for="fecha_pago" class="form-label">Fecha a Pagar:</label>
                        <input type="date" class="form-control" id="fecha_pago" name="fecha_pago" required>
                    </div>
                </form>
                <!-- Agrega más campos según sea necesario -->

                <!-- Botones para enviar o cerrar el formulario -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="btn-pay">Registrar</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                </div>

            </div>
        </div>
    </div>
</div>