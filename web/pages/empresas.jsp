<%
    
    HttpSession objSesion = request.getSession();
     String usuario="";
     String combo= "";
     String mensaje= "";
     boolean ses = true;
     try {
 //    ses = (boolean) objSesion.getAttribute("Session");
    if(ses){
     usuario = (String) objSesion.getAttribute("Session_Usuario");
     combo = (String) objSesion.getAttribute("Session_Empresas");
     System.out.println(combo);     
    }else{
          objSesion.invalidate();
    mensaje= "No tiene ninguna session activa.";
    }              
  } catch (Exception e) {
    objSesion.invalidate();
    mensaje= "No tiene ninguna session activa.";
         }
    
%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="url" value="${pageContext.request.contextPath}"></c:set>


<!DOCTYPE html>
<html html lang="es">
    <head>        
        <title>Empresas - BANCO DEL LITORAL</title>      
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        
        <link href="${url}/recursos/css/bootstrap/bootstrap.min.css?v=03" rel="stylesheet"> 
        <link href="${url}/recursos/css/font-awesome/css/font-awesome.min.css?v=03" rel="stylesheet">
        <link href="${url}/recursos/css/general/login.css?v=04" rel="stylesheet" type="text/css"> 
        <!--<link href="${url}/recursos/css/general/login_navidad.css?v=05" rel="stylesheet" type="text/css">--> 
        <link href="${url}/recursos/css/general/spinners.css?v=03" rel="stylesheet">          
        <link href="${url}/recursos/img/favicon.ico?v=03" rel="shortcut icon" >     
                <link href="${url}/recursos/libs/select2/select2.min.css?v=03"  rel="stylesheet" type="text/css">
        <!--link href="${url}/recursos/libs/selectboxit/selectboxit.css?v=03" rel="stylesheet" type="text/css" /-->
        <link href="${url}/recursos/libs/jquery.loading/jquery.loading.min.css?v=03" rel="stylesheet" type="text/css"/>         
        <link href="${url}/recursos/libs/jquery.prelodr/prelodr.min.css?v=03" rel="stylesheet" type="text/css" />
        <script src="${url}/recursos/js/jquery/jquery-1.11.1.min.js?v=03"></script> 
        <script src="${url}/recursos/libs/jquery.loading/jquery.loading.min.js?v=03" type="text/javascript"></script>
                      
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
                        <!--<h3><img class="img-fluid" src="${url}/recursos/img/logo_navidad.png?v=07" alt="ds"></h3>-->
                    </div>
                    <div class="card-body">
                          <% if (ses) {%>
                        <h3>Bienvenido: <%=usuario%></h3>
                        <div class="padding-40">
                            <select class="combo-empresa form-control select2" id="combo-empresa">
                                <%=combo%>
                            </select>
                        </div>
                        <div class="padding-40">
                            <select class="combo-agencia form-control select2"  name="combo-agencia" id="combo-agencia" disabled="true">
                                 <option value="99">Seleccione Agencia</option>
                            </select>
                        </div>
                        <div class="form-group" style="text-align: center;">
                            <button type="button" id="btn_inicia_session" class="btn login_btn">Ingresar</button>
                        </div>
                             <div class="error-content"></div>
                        <div class="d-flex justify-content-center links">
                            <a href="../"><i class="fa fa-arrow-circle-o-left"></i> Regresar a login</a>
                        </div>  
                            
                        <div class="footer-page d-flex justify-content-center">
                            <p>© 2020 Banco Litoral todos los derechos reservados</p>
                        </div>
                    <%} else {%>

                                <h3><%=mensaje%></h3>

                                <div class="form-group" style="text-align: center;">
                                    <a  href="${url}/" class="btn login_btn">Ir a Login</a>
                                </div>

                                <%}%>
                    </div>                 
                </div>
            </div>
        </div>
    </body>
   
    <script src="${url}/recursos/libs/jqueryui/jquery-ui-1.10.4.custom.min.js?v=03"></script>
    <script src="${url}/recursos/libs/jquery-ui-touch/jquery.ui.touch-punch.min.js?v=03"></script>
    <!--script src="${url}/recursos/libs/selectboxit/selectboxit.js?v=03"></script-->  
      <script src="${url}/recursos/libs/select2/select2.full.min.js"></script>
    <script src="${url}/recursos/js/jquery/jquery.validate.min.js?v=03"></script>
    <script src="${url}/recursos/js/evento/funciones/metodos.js?v=03"></script>
    <script src="${url}/recursos/js/evento/funciones/login.js?v=04"></script>
    <script>        
       // $('.combo-empresa').selectBoxIt();
         $('.combo-empresa').select2({  container: 'body'});
      
       // $('.combo-agencia').selectBoxIt();
       // $('.combo-agencia').data("selectBox-selectBoxIt").add({value: "0", text: "Seleccione una agencia"});;                  
        $(window).load(function () {
            function explode(){
                $(".preloader").fadeOut("slow");
            }
            setTimeout(explode, 6000);
        });
    </script>
</html>
