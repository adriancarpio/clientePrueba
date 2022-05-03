<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="pck_funciones.FncGeneral"%>
<%
    FncGeneral cls_general_ = new FncGeneral();
    List lista = new ArrayList();

    boolean acceso = false;
    String mensaje = "";

    try {
        String randon = request.getParameter("randon");
        String usuario = request.getParameter("usuario");
        lista = cls_general_.ValidaSolicitud(usuario, randon);
        mensaje = lista.get(1).toString();
       if (lista.get(0).toString().equals("00")) {
            acceso = true;
       }
    } catch (Exception ex) {
        System.out.println(ex.toString());
        mensaje = "ERROR AL VALIDAR LA SOLICITUD POR FAVOR INTENTE NUEVAMENTE MÁS TARDE";
    }


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="url" value="${pageContext.request.contextPath}"></c:set>


<!DOCTYPE html>
<html html lang="es">
    <head>

        <title>BANCO LITORAL</title>       
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        
        <link href="${url}/recursos/css/bootstrap/bootstrap.min.css?v=04" rel="stylesheet" />
        <link href="${url}/recursos/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="${url}/recursos/css/general/login.css?v=02" rel="stylesheet" type="text/css">        
        <link href="${url}/recursos/css/general/spinners.css?v=01" rel="stylesheet">  
        <link href="${url}/recursos/img/favicon.ico" rel="shortcut icon" >                        
        
        <script src="${url}/recursos/js/jquery/jquery-1.11.1.min.js?v=05"></script>
         <script src="${url}/recursos/libs/select2/select2.full.min.js?V=05"></script>
        <script src="${url}/recursos/js/evento/funciones/login.js?v=06"></script>
        <script src="${url}/recursos/js/jquery/jquery.validate.min.js?v=05"></script>
        <script src="${url}/recursos/js/evento/funciones/metodos.js?v=05"></script>
      
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
                                <% if (acceso) {%>
                                <form id="cambio_clave_usuario" autocomplete="off">
                                    <div class="input-group form-group">
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="icon-lock"></i>
                                            </span>
                                        </div>
                                        <input type="password" id="password" name="password" class="form-control" placeholder="Nueva Clave">

                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="icon-lock"></i>
                                            </span>
                                        </div>
                                        <input type="password" id="confirmacion" name="confirmacion" class="form-control" placeholder="Confirmar Clave">

                                    </div>
                                    <div class="form-group" style="text-align: center;">
                                        <button type="submit" id="cambio_clave_usuario_input" class="btn login_btn">Cambiar</button>
                                    </div>
                                    <div class="error-content"></div>


                                    <div class="d-flex justify-content-center links">
                                        <a href="../"><i class="fa fa-arrow-circle-o-left"></i> Regresar a login</a>
                                    </div>
                                </form>
                                <%} else {%>

                                <h3><%=mensaje%></h3>

                                <div class="form-group" style="text-align: center;">
                                    <a  href="${url}/" class="btn login_btn">Ir a Login</a>
                                </div>

                                <%}%>
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
    <script>
       $('input').focus(function () {
            var hermano = $(this).siblings();
            var hijo = hermano.children('span');
            hijo.css("border-left", "solid 1px #80c41c")
                    .css("border-top", "solid 1px #80c41c")
                    .css("border-bottom", "solid 1px #80c41c");
        });

        $('input').focusout(function () {
            var hermano = $(this).siblings();
            var hijo = hermano.children('span');
            hijo.css("border-left", "solid 1px #fff")
                    .css("border-top", "solid 1px #fff")
                    .css("border-bottom", "solid 1px #fff");
        });
        $(window).load(function () {
            function explode() {
                $(".preloader").fadeOut("slow");
            }
            setTimeout(explode, 3000);

        });
    </script>
</html>
