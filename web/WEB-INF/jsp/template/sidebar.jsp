<%-- 
    Document   : sidebar
    Created on : Jan 9, 2017, 4:07:12 PM
    Author     : Philip
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<script src="<c:url value="/resources/js/utility.js" />" ></script>
<script>
    function menuSelect (url) {
        var element = $('.treeview-menu li a[href="' + url + '"]').parent().addClass('active');
        var parentUl, liToMakeActive;
        if (element)
        {
            parentUl = element.parent();
            while (parentUl.length > 0 && parentUl[0].className != 'sidebar-menu') {
                liToMakeActive = parentUl.parent();
                liToMakeActive.addClass("active");
                parentUl = liToMakeActive.parent();
            }
        }
    }
    $(function(){menuSelect(window.location.pathname);});
    

</script>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar Menu -->
        <c:set var="pageListMap" value="${sessionScope.pageList1}" />
        <ul class="sidebar-menu">
<!--            <li class="header">MAIN NAVIGATION</li>-->
            <!-- Optionally, you can add icons to the links -->
            <li id="dashboard">
                <a href="${contextPath}/dashboard" class="menu-item-link">
                    <i class="fa fa-desktop"></i>
                    <span class="menu-item-title">Dashboard</span>
                </a>
            </li>
            <c:forEach items="${pageListMap}" var="entry">
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-link"></i>
                        <span>
                            <c:choose>
                                <c:when test="${pageContext.response.locale eq 'bn'}">
                                    ${entry.key.nameInBangla}
                                </c:when>
                                <c:otherwise>
                                    ${entry.key.nameInEnglish}
                                </c:otherwise>
                            </c:choose>   
                        </span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <c:set var="parentFormList" value="${entry.value}" />
                    <ul class="treeview-menu">
                        <c:forEach var="parentForm" items="${parentFormList}">
                            <c:set var="childFormList" value="${parentForm.value}" />
                            <c:choose>
                                <c:when test="${fn:length(childFormList) gt 0}">
                                    <li>                                        
                                        <a href="${contextPath}${parentForm.key.nameInEnglish}">
                                            <i class="fa fa-dot-circle-o"></i>
                                            <c:choose>
                                                <c:when test="${pageContext.response.locale eq 'bn'}">
                                                    ${parentForm.key.nameInBangla}
                                                </c:when>
                                                <c:otherwise>
                                                    ${parentForm.key.nameInEnglish}
                                                </c:otherwise>
                                            </c:choose>   
                                            <span class="pull-right-container">
                                                <i class="fa fa-angle-left pull-right"></i>
                                            </span>
                                        </a>      
                                        <ul class="treeview-menu">
                                            <c:forEach var="childForm" items="${childFormList}">
                                                <li>                                                    
                                                    <a href="${contextPath}${childForm.url}">
                                                        <i class="fa fa-circle-o"></i>
                                                        <c:choose>
                                                            <c:when test="${pageContext.response.locale eq 'bn'}">
                                                                ${childForm.nameInBangla}
                                                            </c:when>
                                                            <c:otherwise>
                                                                ${childForm.nameInEnglish}
                                                            </c:otherwise>
                                                        </c:choose> 
                                                    </a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li><a href="${contextPath}${parentForm.key.url}">
                                            <i class="fa fa-dot-circle-o"></i>
                                            <c:choose>
                                                <c:when test="${pageContext.response.locale eq 'bn'}">
                                                    ${parentForm.key.nameInBangla}
                                                </c:when>
                                                <c:otherwise>
                                                    ${parentForm.key.nameInEnglish}
                                                </c:otherwise>
                                            </c:choose> 
                                        </a>
                                    </li>
                                </c:otherwise>
                            </c:choose>                            
                        </c:forEach>
                    </ul>
                </li>
            </c:forEach>   
        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
