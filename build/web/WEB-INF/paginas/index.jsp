<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <!--        <link rel="stylesheet"
                      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">-->
        <link href="recursos/img/favicon.ico" rel="shortcut icon" >   
        <link href="recursos/libs/jqueryui/ui-lightness/jquery-ui-1.10.4.custom.min.css?v=02" rel="stylesheet" />
        <link href="recursos/css/bootstrap/bootstrap.min.css?v=02" rel="stylesheet" />
        <link href="recursos/css/general/newcss.css?v=01" rel="stylesheet" />
        <link href="recursos/css/font-awesome/css/font-awesome.min.css?v=02" rel="stylesheet" />
        <link href="recursos/libs/datatables/datatables.min.css" rel="stylesheet" type="text/css"/>
        <link href="recursos/libs/selectboxit/selectboxit.css?v=02" rel="stylesheet" type="text/css" />
        <link href="recursos/libs/select2/select2.min.css?v=01" rel="stylesheet" />
        <link href="recursos/Font-Awesome-5.15.2/css/all.css?v=02" rel="stylesheet" />

    </head>

    <body>
    <nav class="navbar navbar-dark bg-primary">
        <a class="navbar-brand" href="#">Prueba - Banco Litoral</a>
        <!-- <div> <input type="text" id="user" name="user"> </div> -->
        <div id="user-profile">
            <div class="btn-group">
                <button type="button" class="btn btn-primary dropdown-toggle"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span id="ajustes">Ajustes</span>
                </button>
                <div class="dropdown-menu">
                    <a id="perfil-btn" class="dropdown-item">Mi perfil</a> 
                    <!--<a id="salir-btn" class="dropdown-item" href="index.jsp">Salir</a>-->
                </div>
            </div>
        </div>
    </nav>
    <div class="row">
        <div class="col-sm-12 ">
            <div class="widget content-formularios">
                <div class="widget-content padding">       
                    <div class="col-sm-12">
                        <form id="form_" autocomplete="off">
                            <div class="col-sm-12">                                    
                                <hr>
                                <div class="row ">
                                    <div class="col-sm-12">
                                        <table id="tabla_consulta" class="table table-striped table-bordered" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>NOMBRE</th>
                                                    <th>DESCRIPCIÓN</th>                                                
                                                    <th>FECHA INGRESO</th>
                                                    <th>USUARIO INGRESO</th>
                                                    <th>FECHA MODIFICACIÓN</th>
                                                    <th>USUARIO MODIFICACIÓN</th>
                                                    <th>ESTADO</th>
                                                </tr>
                                            </thead>
                                        </table>
                                    </div>                 
                                </div>  
                            </div>
                        </form>                             
                    </div>                         
                </div>
            </div>
        </div>
    </div>  
    <hr>
    <div class="row">
        <div class="col-sm-12">
            <div class="widget content-formularios">
                <div class="widget-header">
                    <h2>
                        <i class="fa fa-file"></i> REGISTRO DE CONVENIO
                        <a id="lbl_inf_editable"></a>
                    </h2>
                </div>
                <div class="widget-content padding">
                    <div class="col-sm-12">
                        <form id="form-informacion" autocomplete="off" enctype="multipart/form-data">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-6 d-none">
                                        <div class="form-group row">
                                            <div class="col-sm-8">
                                                <div class="input-group">
                                                    <input id="txt_id" type="text" class="form-control"
                                                           name="txt_id" value="" />              
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label for="txt_descripcion" class="col-sm-4 control-label">Descripción<strong style="color: red">(*)</strong></label>
                                            <div class="col-sm-8">
                                                <div class="input-group">
                                                    <input id="txt_descripcion" type="text" class="form-control"
                                                           name="txt_descripcion" value="" placeholder="Descripción."/>              
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label for="Nombres" class="col-sm-4 control-label">Nombres<strong style="color: red">(*)</strong></label>
                                            <div class="col-sm-8">
                                                <input id="txt_nombres" type="text" class="form-control"
                                                       name="txt_nombres" placeholder="Nombres."/>
                                            </div>
                                        </div>
                                    </div>
                                </div>                                            
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label for="txt_usuario" class="col-sm-4 control-label">Usuario<strong style="color: red">(*)</strong></label>
                                            <div class="col-sm-8">
                                                <input id="txt_usuario" type="text" class="form-control"
                                                       name="txt_usuario" placeholder="Usuario." maxlength="10"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label for="Estado" class="col-sm-4 control-label">Estado<strong style="color: red">(*)</strong></label>
                                            <div class="col-sm-8">
                                                <select id="cmb_estado" name="cmb_estado" class="form-control">
                                                    <option value="S">Activo</option>
                                                    <option value="N">Inactivo</option>
                                                </select>
                                            </div>
                                        </div>                                            
                                    </div>
                                </div>
                                <div class="div_guardar col-md-12 ">
                                    <div class="float-right">
                                        <button id="btn_guardar" type="button" title="Guardar"class="btn btn-primary">GUARDAR
                                        </button>
                                    </div>
                                </div>
                                <div class="div_editar col-md-12 d-none">                                       
                                    <div class="float-right">                                                                 
                                        <button id="btn_editar"  type="button"  title="Actualizar" class="btn btn-success">EDITAR</button>                                                                       
                                    </div>
                                </div> 
                                <div  class="div_eliminar col-md-12 d-none">                                       
                                    <div class="float-right">                                                                 
                                        <button id="btn_eliminar" type="button"  title="Desactivar" class="btn btn-danger">ELIMINAR</button>                                                                       
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="recursos/libs/ace-lib/js/ace-elements.min.js"></script>
        <script src="recursos/libs/ace-lib/js/ace.min.js"></script>-->
    <script src="recursos/js/jquery/jquery-1.11.1.min.js?v=02"></script>  
    <script src="recursos/libs/jqueryui/jquery-ui-1.10.4.custom.min.js?v=02"></script>
    <script src="recursos/libs/jquery-ui-touch/jquery.ui.touch-punch.min.js?v=02"></script>  
    <script src="recursos/js/evento/cliente/principal.js?v=01" type="text/javascript"></script>
    <script src="recursos/libs/select2/select2.full.min.js?v=01"></script>
    <script src="recursos/libs/selectboxit/selectboxit.js?v=02"></script> 
    <!-- JS Para visualizacion de tablas -->       
    <script src="recursos/libs/datatables/datatables.min.js?v=02" type="text/javascript"></script>
    <script src="recursos/libs/datatables/dataTables.select.min.js?v=02" type="text/javascript"></script> 
    <!-- JS Para validar los campos de los formularios-->
    <script src="recursos/libs/validate/jquery.validate.min.js?v=02" type="text/javascript"></script>
    <script src="recursos/libs/validate/additional-methods.min.js?v=02" type="text/javascript"></script>               
    <!-- -->

</html>
