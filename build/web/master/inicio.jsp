<%
    HttpSession sessiones = request.getSession();
    String usuario = "";
    try {
        usuario = sessiones.getAttribute("VSSessionidentificacion").toString();
    } catch (Exception e) {
        usuario = "";
    }
    //if (usuario.equals("")) {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="url" value="${pageContext.request.contextPath}"></c:set>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
            <title>Banco Litoral</title>   
            <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
            <meta name="apple-mobile-web-app-capable" content="yes" />
            <meta name="description" content=""/>
            <meta name="keywords" content="">
            <meta name="author" content=""/>
            <link href="${url}/recursos/img/favicon.ico" rel="shortcut icon" >   

        <link href="${url}/recursos/libs/jqueryui/ui-lightness/jquery-ui-1.10.4.custom.min.css?v=02" rel="stylesheet" />
        <link href="${url}/recursos/css/bootstrap/bootstrap.min.css?v=02" rel="stylesheet" />
        <link href="${url}/recursos/css/font-awesome/css/font-awesome.min.css?v=02" rel="stylesheet" />

        <link href="${url}/recursos/libs/bootstrap-datepicker/css/datepicker.css?v=02" rel="stylesheet" />
        <!--link href="${url}/recursos/css/general/login.css?v=03" rel="stylesheet" type="text/css"--> 
        <link href="${url}/recursos/libs/selectboxit/selectboxit.css?v=02" rel="stylesheet" type="text/css" />
        <link href="${url}/recursos/libs/select2/select2.min.css?v=02" rel="stylesheet" />
        <!--link href='https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css' rel='stylesheet' type='text/css'-->

        <link href="${url}/recursos/libs/nifty-modal/css/component.css?v=02" rel="stylesheet" />
        <link href="${url}/recursos/libs/jquery.niftymodal/jquery.niftymodals.css?v=02" rel="stylesheet" />


        <link href="${url}/recursos/libs/jquery.confirm/jquery-confirm.min.css?v=02" rel="stylesheet" />

        <link href="${url}/recursos/libs/jquery.prelodr/prelodr.min.css?v=02" rel="stylesheet" type="text/css" />
        <link href="${url}/recursos/libs/jquery.loading/jquery.loading.min.css?v=02" rel="stylesheet" type="text/css" />
        <link href="${url}/recursos/css/general/spinners.css?v=02" rel="stylesheet" type="text/css" />
        <link href="${url}/recursos/css/general/themes.css?v=02" rel="stylesheet" type="text/css" />
        <link href="${url}/recursos/css/general/style.css?v=02" rel="stylesheet" type="text/css" />
        <link href="${url}/recursos/css/general/ei-icon.css?v=02" rel="stylesheet" />
        <link href="${url}/recursos/css/general/themify-icons.css?v=02" rel="stylesheet" 
              <link href="${url}/recursos/css/general/style-responsive.css?v=02" rel="stylesheet" />  
        <link href="${url}/recursos/css/general/litoral.css?v=03" rel="stylesheet" />   

        <link href="${url}/recursos/libs/datatables/datatables.min.css" rel="stylesheet" type="text/css"/>
        <!--link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css"-->

        <link  href="${url}/recursos/libs/datatables/dt-1.10.21/css/dataTables.bootstrap4.min.css?v=01" rel="stylesheet" >
        <link href="${url}/recursos/Font-Awesome-5.15.2/css/all.css?v=02" rel="stylesheet" />

        <link href="${url}/recursos/reporteria/css/dx.common.css" rel="stylesheet" type="text/css"/>
        <link href="${url}/recursos/reporteria/css/dx.light.css" rel="stylesheet" type="text/css"/>

        <script src="${url}/recursos/js/jquery/jquery-1.11.1.min.js?v=02"></script>  

        <style type="text/css">
            .bootstrap-tagsinput{
                width: 100%;
            }
            .label-info{
                background-color: #17a2b8;

            }
            .label {
                display: inline-block;
                padding: .25em .4em;
                font-size: 75%;
                font-weight: 700;
                line-height: 1;
                text-align: center;
                white-space: nowrap;
                vertical-align: baseline;
                border-radius: .25rem;
                transition: color .15s ease-in-out,background-color .15s ease-in-out,
                    border-color .15s ease-in-out,box-shadow .15s ease-in-out;
            }
        </style>
    </head>
    <body class="page-body" contexturl="${url}">
        <%
            if (usuario.equals("")) {
        %>
        <script>
            $(document).ready(function () {
                //init_cerrarsession();
            });
        </script>
        <%  }%>  
        <div class="preloader">
            <div class="loader">
                <img src="${url}/recursos/img/load.gif">
            </div>
        </div>   
        <div id="app" class="app">
            <div class="layout">
                <%@ include file="menu-top.jsp"%>                 
                <div class="page-container">
                    <%@ include file="header.jsp"%>  
                    <div class="main-content">
                        <div class="container-fluid">
                            <dec:body/>
                        </div>                         
                    </div>  
                    <!--%@ include file="footer.jsp"%--> 
                </div>
            </div>   
        </div>                
        <div class="md-overlay"></div>
        <div class="contenormodalgeneral"></div>
        <div class="row">
            <div class="col-7" style="position: absolute; top: -100px;">
                <div id="contentenorgeneral"></div>
            </div>
        </div>
        <script type="text/javascript">
            $(window).scroll(function () {
                if ($(window).scrollTop() >= 900) {    // offset?
                    $('.side-nav-menu').css({'position': 'relative', 'top': '22px', 'bottom': 'auto'});
                } else {
                    $('.side-nav-menu').css({'position': 'relative', 'top': 'auto', 'bottom': '15px'});
                }
            });
            $('.side-nav-logo').click(function () {
                $('#app').removeClass('is-collapsed');
            });

        </script>
        <!--script>
            var resizefunc = [];
        </script-->   

        <script src="${url}/recursos/js/jquery/vendor.js?v=02"></script>
        <script src="${url}/recursos/js/jquery/init.js?v=02"></script>         
        <script src="${url}/recursos/libs/bootstrap/js/bootstrap.min.js?v=02"></script>

        <script src="${url}/recursos/libs/jqueryui/jquery-ui-1.10.4.custom.min.js?v=02"></script>
        <script src="${url}/recursos/libs/jquery-ui-touch/jquery.ui.touch-punch.min.js?v=02"></script>  
        <script src="${url}/recursos/libs/selectboxit/selectboxit.js?v=02"></script> 
        <script src="${url}/recursos/libs/select2/select2.full.min.js?v=02"></script>
        <!--script src='https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js'></script-->
        <script src="${url}/recursos/libs/jquery.nicescroll/jquery.nicescroll.min.js?v=02"></script>
        <script src="${url}/recursos/js/jquery/moment.js?v=05" type="text/javascript"></script>  
        <script src="${url}/recursos/libs/bootstrap-datepicker/js/bootstrap-datepicker.js?v=02"></script>
        <script src="${url}/recursos/js/jquery/daterangepicker.js?v=02" type="text/javascript"></script>

        <script src="${url}/recursos/libs/jquery.niftymodal/jquery.niftymodals.js?v=02"></script>
        <script src="${url}/recursos/libs/jquery.niftymodal/lib/js/cssParser.js?v=02"></script>

        <script src="${url}/recursos/libs/jquery.confirm/jquery-confirm.min.js?v=02"></script>

        <script src="${url}/recursos/libs/jquery.prelodr/prelodr.js?v=02"></script>
        <script src="${url}/recursos/libs/jquery.loading/jquery.loading.js?v=02"></script>  
        <!-- JS funcionalidad -->  
        <script src="${url}/recursos/js/evento/principal.js?v=02" type="text/javascript"></script>
        <script src="${url}/recursos/js/evento/funciones/init.js?v=07"></script>                   
        <script src="${url}/recursos/js/evento/funciones/metodos.js?v=02"></script>
        <script src="${url}/recursos/js/evento/funciones/JsDates.js?v=02"></script>
        <!-- JS Para visualizacion de tablas -->       
        <script src="${url}/recursos/libs/datatables/datatables.min.js?v=02" type="text/javascript"></script>
        <script src="${url}/recursos/libs/datatables/dataTables.select.min.js?v=02" type="text/javascript"></script> 
        <!-- JS Para validar los campos de los formularios-->
        <script src="${url}/recursos/libs/validate/jquery.validate.min.js?v=02" type="text/javascript"></script>
        <script src="${url}/recursos/libs/validate/additional-methods.min.js?v=02" type="text/javascript"></script>               
        <!-- -->

        <script src="${url}/recursos/reporteria/js/BabelPolyfill/polyfill-7.4.0.min.js" type="text/javascript"></script>
        <script src="${url}/recursos/reporteria/js/Excel/excel-3.3.1.min.js"type="text/javascript"></script>
        <script src="${url}/recursos/reporteria/js/FileSaver/filesaver-1.3.8.min.js" type="text/javascript"></script>

        <script src="${url}/recursos/reporteria/js/dx.all.js" type="text/javascript"></script>

        <script src="${url}/recursos/libs/tagsinput_revisited/jquery.tagsinput-revisited.js?V=01" type="text/javascript"></script>   
        <link href="${url}/recursos/libs/tagsinput_revisited/jquery.tagsinput-revisited.css" rel="stylesheet" />

        
          <script src="${url}/recursos/js/jquery/aes.js?V=01" type="text/javascript"></script>   
           <script src="${url}/recursos/js/jquery/pad-zeropadding.min.js?V=01" type="text/javascript"></script>   
    </body>
</html>
