<%
    HttpSession objSesionn = request.getSession(true);
    String NombreUsuario = (String) objSesionn.getAttribute("Session_Usuario");
    String NombreEmpresa = (String) objSesionn.getAttribute("Session_NameEmpresa");
    String NombreAgencia = (String) objSesionn.getAttribute("Session_NameAgencia");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="header navbar">
    <div class="header-container">
        <ul class="nav-left">
            <li> 
                <a class="side-nav-toggle">
                    <i class="ti-view-list-alt"></i>
                </a>
            </li>
            <li class="search-box">
                 <span class="navbar-text badge badge-info"> <%=NombreEmpresa%> --> <%=NombreAgencia%> </span>
            </li>
        </ul>
        <ul class="nav-right">
            <li class="user-profile dropdown">
                <a  class="dropdown-toggle"  data-toggle="dropdown" type="button">
                     <img class="profile-img img-fluid" src="${url}/recursos/img/perfil.png" alt="">
                    <div class="user-info">
                        <span class="name pdd-right-5"></span>
                        <i class="ti-angle-down font-size-10"></i>
                    </div>
                </a>
                <div class="dropdown-menu">
                    <div class="name-user">
                        <h6> <i class="ti-user pdd-right-10"></i><%=NombreUsuario%></h6>
                    </div>
                    <div class="dropdown-divider"></div>      
                    <a class="dropdown-item" href="${url}/administracion/configuracion/ChangePass.vs">
                        <i class="ti-key pdd-right-10"></i>
                        <span>Cambiar Contraseña</span>
                    </a>
                        <a class="dropdown-item cerrar-session" type="button"> 
                        <i class="ti-power-off pdd-right-10"></i>
                        <span>Cerrar Sesión</span>
                    </a>
                </div>
            </li>
        </ul>
    </div>
</div>                   
