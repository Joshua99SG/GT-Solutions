// Inicializamos la tabla con DataTables
$(document).ready(function () {
    $('#editarModal').on('show.bs.modal', function (e) {
        // Al abrir el modal, activar la pestaña "Cliente"
        $('#pasosFormularioEdit a[href="#pasoClienteEdit"]').tab('show');
    });
    $('#table_candidates').DataTable({
        paging: true,
        lengthChange: true,
        lengthMenu: [5, 10, 25, 50],
        language: {
            emptyTable: "No hay datos disponibles en la tabla",
            search: '<i class="bi bi-search search-icon"></i>',
            searchPlaceholder: 'Buscar cliente',
            sortAsc: '',
            sortDesc: '',
            paginate: {
                previous: '<i class="bi bi-chevron-left"></i>',
                next: '<i class="bi bi-chevron-right"></i>'
            },
            lengthMenu: '_MENU_',
            infoEmpty: "Mostrando 0 a 0 de 0 entradas",
            info: "Mostrando _START_ a _END_ de _TOTAL_ entradas",
        },
        dom: "<'row'<'col-md-6'f><'col-md-6 text-end'<'btn-wrapper'>>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'row'<'col-sm-12 col-md-4 d-flex'i<'length-wrapper'l>><'col-sm-12 col-md-8'p>>",
        columnDefs: [{
            orderable: false,
            targets: [0]
        }],
        targets: 'no-sort',
        bSort: false,
        aaSorting: []
    });
    create_email_button();
});

document.addEventListener("DOMContentLoaded", function () {
    document.body.classList.add("loaded");
});

function siguientePaso(pasoSiguiente) {
    $('#pasosFormulario li.nav-item a[href="#' + pasoSiguiente + '"]').tab('show');
}

// Función para volver al paso anterior
function anteriorPaso(pasoAnterior) {
    $('#pasosFormulario li.nav-item a[href="#' + pasoAnterior + '"]').tab('show');
}

function siguientePasoEdit(pasoSiguiente) {
    $('#pasosFormularioEdit li.nav-item a[href="#' + pasoSiguiente + '"]').tab('show');
}

// Función para volver al paso anterior
function anteriorPasoEdit(pasoAnterior) {
    $('#pasosFormularioEdit li.nav-item a[href="#' + pasoAnterior + '"]').tab('show');
}

$(".link_pay").click(function (e) {
    e.preventDefault();
    var id_contrato = $(this).data("id");
    var nombre_cliente = $(this).data("name");
    var monto_pago = $(this).data("monto");
    $("#id_contrato_pago").val(id_contrato);
    $("#nombre_cliente_pago").val(nombre_cliente);
    $("#monto_pago").val(monto_pago);
})

$(".export").click(function (e) {
    e.preventDefault();
    var id_cliente = $(this).data("id");
    //Develop
    window.open("http://localhost/gt_solutions/export.php?id=" + id_cliente)
    //Production
    //window.open("http://178.128.155.183/export.php?id=" + id_cliente) 
})

$("#ver_eliminados").click(function (e) {
    //Develop
    window.location.href = "http://localhost/gt_solutions/desactivate.php"
    //Production
    //window.location.href = "http://178.128.155.183/desactivate.php"
})

$("#ver_activos").click(function (e) {
    //Develop
    window.location.href = "http://localhost/gt_solutions/index.php"
    //Production
    //window.location.href = "http://178.128.155.183/index.php"
})

$(".btn-edit-get").click(function (e) {
    e.preventDefault();
    var id_cliente = $(this).data("id");
    clean_modal_edit()
    $.ajax({
        url: "edit_service.php",
        method: "POST",
        data: {
            id_cliente: id_cliente,
            function: "edit_get"
        },
        success: function (response) {
            response = JSON.parse(response)
            $("#edit_id_cliente").val(response.cliente.id_cliente).prop("disabled", false)
            $("#edit_id_contrato").val(response.cliente.id_contrato).prop("disabled", false)
            $("#edit_id_servicio").val(response.cliente.s_id_servicio).prop("disabled", false)
            $("#edit_id_wifi").val(response.cliente.id_wifi).prop("disabled", false)
            $("#edit_id_tipo_cliente").val(response.cliente.id_tipo_cliente).prop("disabled", false)
            $("#edit_identificacion").val(response.cliente.identificacion).prop("disabled", false)
            $("#edit_nombre_cliente").val(response.cliente.nombre_cliente).prop("disabled", false)
            $("#edit_telefono").val(response.cliente.telefono).prop("disabled", false)
            $("#edit_email").val(response.cliente.email).prop("disabled", false)
            $("#edit_localidad").val(response.cliente.localidad).prop("disabled", false)
            $("#edit_coordenadas").val(response.cliente.coordenadas).prop("disabled", false)
            $("#edit_velocidad_contratada").val(response.cliente.velocidad_contratada).prop("disabled", false)
            $("#edit_numero_contrato").val(response.cliente.numero_contrato).prop("disabled", false)
            $("#edit_sector_anclado").val(response.cliente.sector_anclado).prop("disabled", false)
            $("#edit_contra_ppoe").val(response.cliente.contra_ppoe).prop("disabled", false)
            $("#edit_nombre_wifi").val(response.cliente.nombre_wifi).prop("disabled", false)
            $("#edit_contra_wifi").val(response.cliente.contra_wifi).prop("disabled", false)
            $("#edit_fecha_instalacion").val(response.cliente.fecha_instalacion).prop("disabled", false)
            $("#edit_monto_instalacion").val(response.cliente.monto_instalacion).prop("disabled", false)
            $("#edit_abono_instalacion").val(response.cliente.abono_instalacion).prop("disabled", false)
            $("#edit_moneda").val(response.cliente.moneda).prop("disabled", false)
            $("#edit_mensualidad").val(response.cliente.mensualidad).prop("disabled", false)
            $("#edit_fecha_cobro").val(response.cliente.fecha_cobro).prop("disabled", false)
            $("#edit_fecha_corte").val(response.cliente.fecha_corte).prop("disabled", false)
            $("#edit_TMU").val(response.cliente.TMU).prop("disabled", false)
            $("#edit_numero_facturacion").val(response.cliente.numero_facturacion).prop("disabled", false)
            $("#edit_id_equipo_1").val(response.equipos[0].id_equipo).prop("disabled", false)
            $("#edit_id_equipo_2").val(response.equipos[1].id_equipo).prop("disabled", false)
            $("#edit_id_equipo_3").val(response.equipos[2].id_equipo).prop("disabled", false)
            $("#edit_equipo_1").val(response.equipos[0].equipo).prop("disabled", false)
            $("#edit_mac_address_1").val(response.equipos[0].mac_address).prop("disabled", false)
            $("#edit_equipo_2").val(response.equipos[1].equipo).prop("disabled", false)
            $("#edit_mac_address_2").val(response.equipos[1].ac_address).prop("disabled", false)
            $("#edit_equipo_3").val(response.equipos[2].equipo).prop("disabled", false)
            $("#edit_serie").val(response.equipos[2].serie).prop("disabled", false)
        },
    });
});

$(".btn-details-get").click(function (e) {
    e.preventDefault();
    var id_cliente = $(this).data("id");
    clean_modal_edit()
    $.ajax({
        url: "edit_service.php",
        method: "POST",
        data: {
            id_cliente: id_cliente,
            function: "edit_get"
        },
        success: function (response) {
            response = JSON.parse(response)
            $("#edit_id_tipo_cliente").val(response.cliente.id_tipo_cliente).prop("disabled", true)
            $("#edit_identificacion").val(response.cliente.identificacion).prop("disabled", true)
            $("#edit_nombre_cliente").val(response.cliente.nombre_cliente).prop("disabled", true)
            $("#edit_telefono").val(response.cliente.telefono).prop("disabled", true)
            $("#edit_email").val(response.cliente.email).prop("disabled", true)
            $("#edit_localidad").val(response.cliente.localidad).prop("disabled", true)
            $("#edit_coordenadas").val(response.cliente.coordenadas).prop("disabled", true)
            $("#edit_velocidad_contratada").val(response.cliente.velocidad_contratada).prop("disabled", true)
            $("#edit_numero_contrato").val(response.cliente.numero_contrato).prop("disabled", true)
            $("#edit_sector_anclado").val(response.cliente.sector_anclado).prop("disabled", true)
            $("#edit_contra_ppoe").val(response.cliente.contra_ppoe).prop("disabled", true)
            $("#edit_nombre_wifi").val(response.cliente.nombre_wifi).prop("disabled", true)
            $("#edit_contra_wifi").val(response.cliente.contra_wifi).prop("disabled", true)
            $("#edit_fecha_instalacion").val(response.cliente.fecha_instalacion).prop("disabled", true)
            $("#edit_monto_instalacion").val(response.cliente.monto_instalacion).prop("disabled", true)
            $("#edit_abono_instalacion").val(response.cliente.abono_instalacion).prop("disabled", true)
            $("#edit_mensualidad").val(response.cliente.mensualidad).prop("disabled", true)
            $("#edit_moneda").val(response.cliente.moneda).prop("disabled", true)
            $("#edit_fecha_cobro").val(response.cliente.fecha_cobro).prop("disabled", true)
            $("#edit_fecha_corte").val(response.cliente.fecha_corte).prop("disabled", true)
            $("#edit_TMU").val(response.cliente.TMU).prop("disabled", true)
            $("#edit_numero_facturacion").val(response.cliente.numero_facturacion).prop("disabled", true)
            $("#edit_id_equipo_1").val(response.equipos[0].id_equipo).prop("disabled", true)
            $("#edit_id_equipo_2").val(response.equipos[1].id_equipo).prop("disabled", true)
            $("#edit_id_equipo_3").val(response.equipos[2].id_equipo).prop("disabled", true)
            $("#edit_equipo_1").val(response.equipos[0].equipo).prop("disabled", true)
            $("#edit_mac_address_1").val(response.equipos[0].mac_address).prop("disabled", true)
            $("#edit_equipo_2").val(response.equipos[1].equipo).prop("disabled", true)
            $("#edit_mac_address_2").val(response.equipos[1].mac_address).prop("disabled", true)
            $("#edit_equipo_3").val(response.equipos[2].equipo).prop("disabled", true)
            $("#edit_serie").val(response.equipos[2].serie).prop("disabled", true)
        },
    });
});

const clean_modal_edit = () => {
    $("#edit_id_tipo_cliente").val("")
    $("#edit_identificacion").val("")
    $("#edit_nombre_cliente").val("")
    $("#edit_telefono").val("")
    $("#edit_email").val("")
    $("#edit_localidad").val("")
    $("#edit_coordenadas").val("")
    $("#edit_velocidad_contratada").val("")
    $("#edit_numero_contrato").val("")
    $("#edit_sector_anclado").val("")
    $("#edit_contra_ppoe").val("")
    $("#edit_nombre_wifi").val("")
    $("#edit_contra_wifi").val("")
    $("#edit_fecha_instalacion").val("")
    $("#edit_monto_instalacion").val("")
    $("#edit_abono_instalacion").val("")
    $("#edit_mensualidad").val("")
    $("#edit_moneda").val("")
    $("#edit_fecha_cobro").val("")
    $("#edit_fecha_corte").val("")
    $("#edit_equipo_1").val("")
    $("#edit_mac_address_1").val("")
    $("#edit_equipo_2").val("")
    $("#edit_mac_address_2").val("")
    $("#edit_equipo_3").val("")
    $("#edit_serie").val("")
    $("#edit_TMU").val("")
    $("#edit_numero_facturacion").val("")
}

$(".link_delete").click(function (e) {
    e.preventDefault();

    var id = $(this).data("id");
    $("#form_delete_" + id).submit();
});
$(".btn_edit").click(function (e) {
    e.preventDefault();
    $("#form_edit").submit();
});
$("#btn_create").click(function (e) {
    $("#form_create").submit();
});
$("#btn-pay").click(function (e) {
    e.preventDefault();
    $("#form_pay").submit();
});


var email_candidates = [];

const get_all_checked_candidates = () => {
    var oTable = $('#table_candidates').DataTable({
        stateSave: true,
        retrieve: true,
    });
    var checkboxColumnIndex = 0;
    var checked_inputs = oTable
        .column(checkboxColumnIndex)
        .nodes()
        .to$()
        .find(':checkbox:checked')
        .map(function () {
            return $(this);
        })

    if (checked_inputs.length != 0) {
        checked_inputs.each(function (i, checkbox) {
            let checkbox_id = checkbox[0].id;
            let id = parseInt(checkbox_id.substring(9));

            var row = checkbox[0].parentNode.parentNode;
            let candidate = { "email": row.cells[6].innerText };
            const matching_candidates = email_candidates.filter(obj => obj.email === candidate.email);

            if (matching_candidates.length > 0) {
                email_candidates = email_candidates.filter(obj => obj.email !== candidate.email);
            }

            email_candidates = email_candidates.filter(function (candidate) {
                return checked_inputs.toArray().some(function (checkbox) {
                    var row = checkbox[0].parentNode.parentNode;
                    let email = row.cells[2].innerText;
                    return candidate.email === email;
                });
            });

            email_candidates.push(candidate);
            $("#btn_email").prop('disabled', false);
            $("#btn_email").removeClass('button_send_emails-disabled');
        });
    } else {
        $("#btn_email").prop('disabled', true);
        $("#btn_email").addClass('button_send_emails-disabled');
    }
};

const check_candidates = () => {
    var oTable = $('#table_candidates').dataTable({
        stateSave: true,
        retrieve: true,
    });

    var allPages = oTable.fnGetNodes();
    var checkBox = document.getElementById("checkAll");

    if (checkBox.checked) {
        $('input[type="checkbox"]', allPages).prop('checked', true);
    } else {
        $('input[type="checkbox"]', allPages).prop('checked', false);
        email_candidates = [];
    }
    get_all_checked_candidates();
    console.log(email_candidates)
};

const create_email_button = () => {
    let search_container = $(".btn-wrapper");
    let email_button = $(`<button  class="button_send_emails button_send_emails-disabled" disabled id="btn_email" data-bs-toggle="modal" data-bs-target="#email_modal"><i class="bi bi-envelope"></i> Enviar correo</button>`);
    search_container.append(email_button);
}

$("#send_email").on("click", () => {
    console.log("Number of candidates: ", email_candidates.length, "Candidates: ", email_candidates)
    let emails = email_candidates;
    let email_emisor = $("#user_email").val();
    let name_emisor = $("#user_name").val();
    let email_title = $("#email_title").val();
    let email_message = $("#email_message").val();

    $("#close_email_modal").trigger("click");
    $("#btn_sending_email_modal").trigger("click");

    $.ajax({
        url: "index.php",
        method: "POST",
        data: {
            emails: emails,
            email_emisor: email_emisor,
            name_emisor: name_emisor,
            email_title: email_title,
            email_message: email_message,
            function: "email_service"
        },
        success: function (data) {
            show_response_modal(data);
        },
    });
});

const show_response_modal = () => {
    $("#btn-close-sending-modal").trigger("click");
    $("#numberEmails").text(email_candidates.length);
    $("#btn_success_email_modal").trigger("click");
}

const redirectToWhatsApp = (phone_number) => {
    var whatsAppLink = `https://wa.me/${phone_number}`;
    window.open(whatsAppLink, "_blank");
}