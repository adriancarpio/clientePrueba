
$(document).ready(function () {
    getViajes();
});

function getViajes() {

    OBJ = new Object();
    OBJ.OPCION = "CG";

    $.post('./ClienteServlet', {
        OBJ: OBJ
    }, function (json) {
        let obj = jQuery.parseJSON(json);
        console.log(obj);
        llenarTabla(obj.data);
    });
}

function llenarTabla(datos) {
    $('#table_consulta tbody').remove();
    $('#table_consulta').dataTable().fnDestroy();
    $('#table_consulta').DataTable({
        language: {
            search: "Buscar",
            info: "Total: _TOTAL_ registros. ",
            emptyTable: "No hay información",
            infoEmpty: "Total: 0 registros.",
            infoFiltered: "(filtrado de un total de _MAX_ registros)",
            select: {rows: " %d filas seleccionadas."}
        },
        select: true,
        scrollY: 300,
        scrollX: true,
        scrollCollapse: true,
        paging: false,
        fixedColumns: false,
        data: datos,
        columns: [
            {data: 'ID'},
            {data: 'NOMBRE'},
            {data: 'DESCRIPCION'},
            {data: 'ESTADO'},
            {data: 'FECHA_INGRESO'},
            {data: 'USUARIO_INGRESO'},
            {data: 'FECHA_MODIFICACION'},
            {data: 'USUARIO_MODIFICACION'}
        ]
        , columnDefs: [{
                targets: [0],
                visible: false,
                searchable: true
            }]
    });

//    $('#table_consulta tbody').on('click', 'tr', function () {
//        if ($(this).hasClass('selected')) {
//            $(this).removeClass('selected');
//
//        } else {
//            var objData = $('#table_consulta').DataTable().row($(this)).data();
//        }
//    });
}