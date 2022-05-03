<%
    HttpSession objSesion = request.getSession(true);
    String BLMenu = (String) objSesion.getAttribute("Session_Menu");
    String VSstringImagen = "";//(String) objSesion.getAttribute("Session_NameEmpresa");


%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="url" value="${pageContext.request.contextPath}"></c:set>
<div class="side-nav">
    <div class="side-nav-inner">
        <div class="side-nav-logo">
            <a>
                <div class="logo logo-dark img-fluid" ></div>
            </a>
            <div class="mobile-toggle side-nav-toggle">
                <a href="">
                    <i class="ti-arrow-circle-left"></i>
                </a>
            </div>
        </div>        
        <ul class="side-nav-menu">
            <!--div class="user fuse-navy-900" fxlayout="column" style="flex-direction: column; box-sizing: border-box; display: flex;">
               
                <div class="avatar-container fuse-navy-700">
                    <img class="img-fluid" src="<%=VSstringImagen%>">
                </div>
            </div>
            <div _ngcontent-c28="" class="group-title ng-star-inserted">                
            </div-->
            <%=BLMenu%>
        </ul>
    </div>
</div>
