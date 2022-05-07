
$(document).ready(function () {
    $("#cmb_estado").select2({width: '100%'});
    initEvent();
});

function initEvent() {
    consultar();

    $("#btn_guardar").on("click", function () {
        initCrud("IN");
    });

    $("#btn_editar").on("click", function () {
        initCrud("AC");
    });

    $("#btn_eliminar").on("click", function () {
        initCrud("EL");
    });

//    $('#txt_valor').on('input', function () {
//        if ($("#cmb_grupo option:selected").text() === "COMISION") {
//            this.value = this.value.replace(/[^0-9,.]/g, '').replace(/,/g, '.');
//        }
//    });

    $('#cmb_estado').on('change', function () {
        ValidCrud();
    });

}

function consultar() {

    OBJ = new Object();
    OBJ.OPCION = "CG";

    $.post('./ClienteServlet', {
        opcion: "ConsCLiente",
        OBJ: OBJ
    }, function (datos) {
        let obj = jQuery.parseJSON(datos);
        if (obj.codResponse !== "00") {
            console.log("OK " + obj.CodResponse + " " + obj.MsjResponse);
            let t = JSON.parse(obj.List);
            //console.log("llego" + obj.List);
            llenarTabla("tabla_consulta", t);
        } else if (obj.CodResponse === "99") {
            llenarTabla("tabla_consulta", []);
            console.log("Error " + obj.CodResponse + " " + obj.MsjResponse);
        } else {
            llenarTabla("tabla_consulta", []);
            console.log("Error " + obj.CodResponse + " " + obj.MsjResponse);
        }
    }).fail(function () {
        if (navigator.onLine) {
            console.log("WEB SERVICE  NO ESTA EN LINEA AL MOMENTO.");
        } else {
            console.log("ERROR DE COMUNICACIÓN CON EL SERVIDOR, POR FAVOR, VERIFIQUE SU CONEXIÓN A INTERNET Y VUELVA A INTENTARLO.");
        }
    });
}

function initCrud(OPCION) {

    let OBJ = new Object();
    OBJ.OPCION = OPCION;
    OBJ.ID = $("#txt_id").val();
    OBJ.NOMBRE = $("#txt_nombres").val();
    OBJ.DESCRIPCION = $("#txt_descripcion").val();
    OBJ.ESTADO = $("#cmb_estado").val();
    OBJ.USUARIO = $("#txt_usuario").val();

    $.post('./ClienteServlet', {
        opcion: "ConsCLiente",
        OBJ: OBJ
    }, function (datos) {
        let obj = jQuery.parseJSON(datos);
        if (obj.codResponse !== "00") {
            console.log("OK " + obj.CodResponse + " " + obj.MsjResponse);
            //let t = JSON.parse(obj.List);
            consultar();
            limpiarInfoInpunt();
        } else if (obj.CodResponse === "99") {
            console.log("Error " + obj.CodResponse + " " + obj.MsjResponse);
        } else {
            console.log("Error " + obj.CodResponse + " " + obj.MsjResponse);
        }
    }).fail(function () {
        if (navigator.onLine) {
            console.log("WEB SERVICE  NO ESTA EN LINEA AL MOMENTO.");
        } else {
            console.log("ERROR DE COMUNICACIÓN CON EL SERVIDOR, POR FAVOR, VERIFIQUE SU CONEXIÓN A INTERNET Y VUELVA A INTENTARLO.");
        }
    });
}


function ValidCrud() {
    seleccion_tabla = localStorage.getItem("trx");
    var estado_p = $('#cmb_estado').val();
    if (seleccion_tabla === "S") {/*si está seleccionada la tabla*/
        if ("S" === estado_p) {
            //editar
            $('.div_editar').removeClass('d-none');
            $('.div_eliminar').addClass('d-none');
            $('.div_guardar').addClass('d-none');
        } else {
            //eliminar
            $('.div_editar').addClass('d-none');
            $('.div_eliminar').removeClass('d-none');
            $('.div_guardar').addClass('d-none');
        }
    } else {/*si no esta seleccionada la tabla*/
        /*mostrar el boton guardar*/
        $('.div_guardar').removeClass('d-none');
        $('.div_editar').addClass('d-none');
        $('.div_eliminar').addClass('d-none');
    }
}

function llenarTabla(tabla, filas) {
    $('#' + tabla + ' tbody').remove();
    $('#' + tabla).dataTable().fnDestroy();
    $('#' + tabla).DataTable({
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
        data: filas,
        columns: [
            {data: 'ID'},
            {data: 'NOMBRE'},
            {data: 'DESCRIPCION'},
            {data: 'FECHA_INGRESO'},
            {data: 'USUARIO_INGRESO'},
            {data: 'FECHA_MODIFICACION'},
            {data: 'USUARIO_MODIFICACION'},
            {data: 'ESTADO', width: "10%",
                className: "text-center",
                render: function (data, type, row) {
                    if (type === 'display' && data === 'S') {
                        return '<div class="circle_active"><span class="circle__content"></span></div>';
                    } else {
                        return '<div class="circle_inactive"><span class="circle__content"></span></div>';
                    }
                    return data;
                }}//,
        ]
        , columnDefs: [{
                targets: [0, 5, 6],
                visible: false,
                searchable: true
            }]
    });

    $('#' + tabla + ' tbody').on('click', 'tr', function () {
        if ($(this).hasClass('selected')) {
            $(this).removeClass('selected');
            limpiarInfoInpunt();
        } else {
            let cellData = $('#' + tabla).DataTable().row($(this)).data();
            localStorage.setItem("trx", "S");
            llenarInfoInpunt(cellData);
            ValidCrud();
        }
    });
    $('#' + tabla + ' tbody').on('click', 'button', function () {
        var data;
        if (this.id.includes('btn')) {

            data = $('#' + tabla).DataTable().row($(this).parents('tr')).data();

        } else if (this.id.includes('btn_file')) {

        }

    });
}

function llenarInfoInpunt(cellData) {
    $("#txt_id").val(cellData.ID);
    $("#txt_nombres").val(cellData.NOMBRE);
    $("#txt_descripcion").val(cellData.DESCRIPCION);
    $("#txt_usuario").val(cellData.USUARIO_INGRESO);
    $('#cmb_estado option[value="' + cellData.ESTADO + '"]').prop('selected', 'selected').change();
}

function limpiarInfoInpunt() {
    localStorage.setItem("trx", "N");
    $("#txt_id").val("");
    $("#txt_nombres").val("");
    $("#txt_descripcion").val("");
    $("#txt_usuario").val("");
    ValidCrud();
//    $('#cmb_estado option[value="' + cellData.ESTADO + '"]').prop('selected', 'selected').change();
}