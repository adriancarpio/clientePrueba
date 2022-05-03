<%-- 
    Document   : AutorizacionDenegada
    Created on : 25/09/2020, 8:57:14
    Author     : alozado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="url" value="${pageContext.request.contextPath}"></c:set>


<!DOCTYPE html>
<html html lang="es">
    <head>

        <title>Error Interno</title>
        <!--Made with love by Mutiullah Samim -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <link href="${url}/recursos/css/bootstrap/bootstrap.min.css?v=04" rel="stylesheet" />
        <link href="${url}/recursos/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="${url}/recursos/css/general/login.css?v=02" rel="stylesheet" type="text/css">        
        <link href="${url}/recursos/css/general/spinners.css?v=01" rel="stylesheet">  
        <link href="${url}/recursos/img/favicon.ico" rel="shortcut icon" >                        
         <link href="${url}/recursos/css/general/litoral.css?v=02" rel="stylesheet" type="text/css">      
        <script src="${url}/recursos/js/jquery/jquery-1.11.1.min.js?v=05"></script>
        <script src="${url}/recursos/js/evento/login.js?v=05"></script>
        <script src="${url}/recursos/js/jquery/jquery.validate.min.js?v=05"></script>
        <script src="${url}/recursos/js/evento/funciones.js?v=05"></script>
    </head>
    <body>

        <div class="app">
            <div class="authentication bg">
                <div class="page-404 container">
                    <div class="full-height">
                        <div class="vertical-align full-height pdd-horizon-70">
                            <div class="table-cell">
                                <div class="text-center">
                                    <h1 class="font-size-100 text-error ls-3 lh-1"><b>500</b></h1>
                                    <p class="font-size-28 text-light text-error text-opacity lh-1-4 mrg-btm-30">
                                        Lo sentimos,<br class="hidden-sm hidden-xs"> Algo salio mal en el servidor.
                                    </p>
                                    <a href="${url}" class="btn login_btn">Ir al inicio</a>
                                </div>
                            </div>
                        </div>
                    </div>		
                </div>
            </div>
        </div>


    </body>
</html>
