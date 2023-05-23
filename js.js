 // Inicializamos la tabla con DataTables
 $(document).ready(function() {
    $('#tablaClientes').DataTable({
        paging: true,
        lengthChange: true,
        lengthMenu: [5, 10, 25, 50],
        language: {
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
            targets: [0, 6]
        }],
        targets: 'no-sort',
        bSort: false,
        aaSorting: []
    });
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