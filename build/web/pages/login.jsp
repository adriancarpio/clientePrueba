<%   
    HttpSession objSesion = request.getSession(true);
    objSesion.invalidate();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="url" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html html lang="es">
    <head>        
        <title>BANCO DEL LITORAL</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">         
        <link href="${url}/recursos/css/bootstrap/bootstrap.min.css?v=03" rel="stylesheet" type="text/css"> 
        <link href="${url}/recursos/css/font-awesome/css/font-awesome.min.css?v=03" rel="stylesheet" type="text/css">
        <link href="${url}/recursos/css/general/login.css?v=04" rel="stylesheet" type="text/css"> 
        <!--<link href="${url}/recursos/css/general/login_navidad.css?v=04" rel="stylesheet" type="text/css">--> 
        <link href="${url}/recursos/css/general/spinners.css?v=03" rel="stylesheet">  
        <link href="${url}/recursos/img/favicon.ico?v=03" rel="shortcut icon" >
    </head>
    <body contexturl="${url}">
        <div class="preloader">
            <div class="loader">
                <img class="img-fluid" src="${url}/recursos/img/load.gif">
            </div>
        </div>
        <div class="bg-bubbles"></div>
        <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <div class="card-header">
                    <h3><img class="img-fluid" src="${url}/recursos/img/logo.png?v=04" alt="ds"></h3>
                    <!--<h3><img class="img-fluid" src="${url}/recursos/img/logo_navidad.png?v=05" alt="ds"></h3>-->
                    <div class="loading" style="display: none;">
                        <img src="${url}/recursos/img/load.gif">
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-10">
                            <form id="login" autocomplete="off">
                                <div class="input-group form-group">
                                    <div class="input-group-append">
                                        <span class="input-group-text">
                                            <i class="icon-user"></i>
                                        </span>
                                    </div>
                                    <input  id="txt_usuario" name="usuario" type="text" class="form-control" placeholder="Usuario" maxlength="15">
                                </div>
                                <div class="input-group form-group">
                                    <div class="input-group-append">
                                        <span class="input-group-text">
                                            <i class="icon-lock"></i>
                                        </span>
                                    </div>
                                    <input type="password" id="txt_contrasenia" name="password" class="form-control" placeholder="Contraseña" maxlength="12">                                  
                                </div>
                                <div class="form-group" style="text-align: center;">
                                    <button type="submit" id="btn_login" class="btn login_btn">Ingresar</button>
                                </div>                                    
                                <div class="error-content"></div>
                                <div class="d-flex justify-content-center links">
                                    <a href="${url}/pages/recuperarcontrasena.jsp"><u>Recuperar Contraseña</u></a>
                                </div>
                                <div class="footer-page d-flex justify-content-center">
                                    <p style="text-align:center">© <script>var f = new Date();document.write(f.getFullYear());</script> Banco del Litoral todos los derechos reservados</p>
                                </div>
                            </form>
                        </div>
                        <div class="col-sm-1"></div>
                    </div>                  
                </div>                 
            </div>
        </div>
    </div>  
    </body>
    <script src="${url}/recursos/js/jquery/jquery-1.11.1.min.js?v=03"></script>
    <script src="${url}/recursos/js/evento/funciones/login.js?v=03"></script>
        <script src="${url}/recursos/libs/select2/select2.full.min.js"></script>
    <script src="${url}/recursos/js/jquery/jquery.validate.min.js?v=03"></script>
    <script src="${url}/recursos/js/evento/funciones/metodos.js?v=04"></script>
    <!--script src="${url}/recursos/js/jquery/init.js?v=02"></script-->
    <script src="${url}/recursos/js/evento/funciones/init.js?v=05"></script>
               <script type="text/javascript" src="${url}/recursos/js/evento/snow.js?v=01"></script>      
        <script type="text/javascript">
$(function() {
//    $(document).snow({ SnowImage: "${url}/recursos/img/snow.gif" });
});
</script>
    <script>
    $(window).load(function () {
        function explode() {
            $(".preloader").fadeOut("slow");
        }
        setTimeout(explode, 3000);
    });
    </script>
</html>
