<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!--        <link href="recursos/libs/datatables/datatables.min.css" rel="stylesheet" type="text/css"/>
                <link  href="recursos/libs/datatables/dt-1.10.21/css/dataTables.bootstrap4.min.css?v=01" rel="stylesheet" >-->
        <link rel="stylesheet" href="recursos/libs/ace-lib/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
        <link rel="stylesheet" href="recursos/libs/ace-lib/css/ace.css?v=03" class="ace-main-stylesheet" id="main-ace-style" />
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.4/css/dataTables.bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.3.4/css/select.bootstrap.min.css">

        <!--        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">-->

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
                                <!--                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <div class="form-group row">
                                                                            <label for="txt_fecha_inicial" class="col-sm-4 control-label">Fecha de Inicio</label>                                                 
                                                                            <div class="col-sm-8">
                                                                                <div class="input-group date calendar">
                                                                                    <input type="text" class="form-control txt_fecha_inicial" id="txt_fecha_inicial" name="txt_fecha_inicial" placeholder="Fecha Inicio." readonly="" >
                                                                                    <div class="input-group-append">
                                                                                        <button class="btn btn-default btn-ligth-default txt_fecha_inicial" id="btn_fecha_inicio" name="btn_fecha_inicio" type="button">
                                                                                            <i class="icon-calendar"></i>
                                                                                        </button>
                                                                                    </div>                                                            
                                                                                </div>                                                
                                                                            </div>
                                                                        </div>                                            
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="form-group row">
                                                                            <label for="txt_fecha_final" class="col-sm-4 control-label">Fecha de Corte</label>                                                 
                                                                            <div class="col-sm-8">
                                                                                <div class="input-group date calendar">
                                                                                    <input type="text" class="form-control txt_fecha_final" id="txt_fecha_final" name="txt_fecha_final" placeholder="Fecha Corte." readonly="">
                                                                                    <div class="input-group-append">
                                                                                        <button class="btn btn-default btn-ligth-default txt_fecha_final" id="btn_fecha_corte" name="btn_fecha_corte" type="button">
                                                                                            <i class="icon-calendar"></i>
                                                                                        </button>
                                                                                    </div>                                                            
                                                                                </div>                                                
                                                                            </div>
                                                                        </div>                                            
                                                                    </div>
                                                                </div>    
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <div class="form-group row">
                                                                            <label for="cmb_usuario_trx" class="col-sm-4 control-label">Usuario</label>
                                                                            <div class="col-sm-8">
                                                                                <select class="form-control "  name="cmb_usuario_trx" id="cmb_usuario_trx">
                                
                                                                                </select>
                                                                            </div>
                                                                        </div>                                            
                                                                    </div>
                                                                </div>
                                                                <div class="row">  
                                                                    <div class="col-sm-12 ">
                                                                        <div class="div_buscar col-md-12">                                       
                                                                            <div class="bottoneria-pull-left">                                                                 
                                                                                <button id="btn_buscar_rr"  type="button"  title="Buscar" class="btn btn-default pull-right btn-add"><span class="fa fa-search"></span></button>                                                                       
                                                                            </div>
                                                                        </div>                                          
                                                                    </div>
                                                                </div>-->
                                <hr>
                                <div class="row ">
                                    <div class="col-sm-12">
                                        <table id="table_consulta" class="table table-striped table-bordered" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>NOMBRE</th>
                                                    <th>DESCRIPCIÓN</th>
                                                    <th>ESTADO</th>
                                                    <th>FECHA INGRESO</th>
                                                    <th>USUARIO INGRESO</th>
                                                    <th>FECHA MODIFICACIÓN</th>
                                                    <th>USUARIO MODIFICACIÓN</th>
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
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label for="txt_identificacion_convenio" class="col-sm-4 control-label">Identificación<strong style="color: red">(*)</strong></label>
                                            <div class="col-sm-8">
                                                <div class="input-group">
                                                    <input id="txt_identificacion_convenio" type="text" class="form-control"
                                                           name="txt_identificacion_convenio" value="" placeholder="Identificación."/>              
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
                                            <label for="txt_telefono_c" class="col-sm-4 control-label">Teléfono<strong style="color: red">(*)</strong></label>
                                            <div class="col-sm-8">
                                                <input id="txt_telefono_c" type="text" class="form-control"
                                                       name="txt_telefono_c" placeholder="Teléfono." maxlength="10"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label for="txt_correo_c" class="col-sm-4 control-label">Correo<strong style="color: red">(*)</strong></label>
                                            <div class="col-sm-8">
                                                <input id="txt_correo_c" type="email" class="form-control"
                                                       name="txt_correo_c" placeholder="Correo."/>
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
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="recursos/libs/ace-lib/js/ace-elements.min.js"></script>
    <script src="recursos/libs/ace-lib/js/ace.min.js"></script>

    <script src="recursos/js/evento/cliente/principal.js?v=04" type="text/javascript"></script>
    <!--<script src="recursos/libs/datatables/datatables.min.js?v=02" type="text/javascript"></script>
    <script src="recursos/libs/datatables/dataTables.select.min.js?v=02" type="text/javascript"></script> -->
    <script src="//cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js" ></script>
    <!--<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>-->
    <!--<script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js" ></script>-->
    <!--<script src="https://cdn.datatables.net/1.11.4/js/dataTables.bootstrap.min.js" ></script>-->
    <script src="https://cdn.datatables.net/select/1.3.4/js/dataTables.select.min.js" ></script>

    <!--    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script></body>-->
</html>
