$(document).ready(function () {
       $.post('../../SrvGestionCliente', {
                opcion: "BLConsultaDefensor"
            },function (data) {
                 //console.log(data);
                var obj = jQuery.parseJSON(data);
               console.log(obj.ListTramitesDefensor);
                 var obj_ = jQuery.parseJSON(obj.ListTramitesDefensor);
                  console.log(obj_);
               var myJSON = JSON.stringify(obj.ListTramitesDefensor);
               console.log(customers);
               console.log(myJSON);
                 var dataGrid = $("#gridContainer").dxDataGrid({
        dataSource: obj_,
        allowColumnReordering: true,
        showBorders: true,
        grouping: {
            autoExpandAll: true,
        },
        searchPanel: {
            visible: true
        },
        paging: {
            pageSize: 10
        },  
        groupPanel: {
            visible: true
        },
         export: {
      enabled: true,
      allowExportSelectedData: true
    },
    onExporting: function(e) {
      var workbook = new ExcelJS.Workbook();
      var worksheet = workbook.addWorksheet('Employees');
      
      DevExpress.excelExporter.exportDataGrid({
        component: e.component,
        worksheet: worksheet,
        autoFilterEnabled: true
      }).then(function() {
        // https://github.com/exceljs@1.7.0/exceljs#writing-xlsx
        workbook.xlsx.writeBuffer().then(function(buffer) {
          saveAs(new Blob([buffer], { type: 'application/octet-stream' }), 'Employees.xlsx');
        });
      });
      e.cancel = true;
    },
        columns: [
            "apellidoPaterno",
            "numeroCuenta",
            "peticion",
            "tipo",
            {
                dataField: "desc_estadoTramite",
                groupIndex: 0
            }
        ]
    }).dxDataGrid("instance");  
      $("#autoExpand").dxCheckBox({
        value: true,
        text: "Expand All Groups",
        onValueChanged: function(data) {
            dataGrid.option("grouping.autoExpandAll", data.value);
        }
    });
            })
     
});