<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="url" value="${pageContext.request.contextPath}"></c:set>

<!--script src="${url}/recursos/libs/jquery.validate.min.js?v=04"></script-->
<!--script src="${url}/recursos/js/controlador/master.js?v=04"></script-->
<!DOCTYPE html>
<html html lang="es">
    <head>
        <title>BANCO LITORAL</title>     
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="${url}/recursos/libs/bootstrap/css/bootstrap.min.css?v=04" rel="stylesheet" />
        <link href="${url}/recursos/css/general/login.css?v=02" rel="stylesheet" type="text/css">
        <link href="${url}/recursos/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="${url}/recursos/css/general/spinners.css?v=01" rel="stylesheet">  
        <link href="${url}/recursos/img/favicon.ico" rel="shortcut icon" >
       
       
        <script src="${url}/recursos/js/jquery/jquery-1.11.1.min.js?v=04"></script>
         <script src="${url}/recursos/libs/select2/select2.full.min.js?V=04"></script>
        <script src="${url}/recursos/js/evento/funciones/login.js?v=04"></script>
        <script src="${url}/recursos/js/jquery/jquery.validate.min.js?v=04"></script>
        <script src="${url}/recursos/libs/bootstrap/js/bootstrap.min.js?v=04"></script>
      
    </head>
    <body contexturl="${url}">
        <div class="preloader">
            <div class="loader">
                 <img src="${url}/recursos/img/load.gif">
            </div>
        </div>
        <div class="bg-bubbles"></div>
        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                         <h3><img class="img-fluid" src="${url}/recursos/img/logo.png?v=01" alt="ds"></h3>
                        <div class="loading" style="display: none;">
                             <img src="${url}/recursos/img/load.gif">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10">
                                <form id="recuperarcontrasena" autocomplete="off">
                                    <div class="input-group form-group">
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="icon-user"></i>
                                            </span>
                                        </div>
                                        <input type="text" id="txt_usuario" name="usuario" class="form-control" placeholder="Usuario">

                                    </div>
                                    <div class="form-group" style="text-align: center;">
                                        <button type="submit" id="btn_recuperarcontrasena" value="" class="btn login_btn">Procesar</button>
                                    </div>
                                    <div class="error-content"></div>
                                    <div class="d-flex justify-content-center links">
                                        <a href="../"><i class="fa fa-arrow-circle-o-left"></i> Regresar a login</a>
                                    </div> 
                                </form>
                            </div>
                            <div class="col-sm-1"></div>
                        </div>                  
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-center">
                            <p>© 2020 Banco Litoral todos los derechos reservados</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
      
    <!--script src="${url}/resources/libs/jqueryui/jquery-ui-1.10.4.custom.min.js?v=04"></script>
    <script src="${url}/resources/libs/jquery-ui-touch/jquery.ui.touch-punch.min.js?v=04"></script>
    <script src="${url}/resources/libs/selectboxit/selectboxit.js?v=04"></script-->
    <script>         

        $(window).load(function () {
            function explode() {
                $(".preloader").fadeOut("slow");
            }
            setTimeout(explode, 3000);

        });

    </script>
</html>
