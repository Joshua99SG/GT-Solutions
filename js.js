 // Inicializamos la tabla con DataTables
 $(document).ready(function() {
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

document.addEventListener("DOMContentLoaded", function() {
    document.body.classList.add("loaded");
});

$(".link_delete").click(function(e) {
    e.preventDefault();

    var id = $(this).data("id");
    $("#form_delete_" + id).submit();
});
$(".btn_edit").click(function(e) {
    e.preventDefault();

    var id = $(this).data("id");
    $("#form_edit_" + id).submit();
});
$("#btn_create").click(function(e) {
    $("#form_create").submit();
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
            let candidate = { "email": row.cells[6].innerText};
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
    var message = "Hello, I would like to get in touch.";
    var whatsAppLink = `https://wa.me/${phone_number}?text=${message}`;
    window.open(whatsAppLink, "_blank");
}