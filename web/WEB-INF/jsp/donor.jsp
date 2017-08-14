<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/landing-page.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<script src="<c:url value="/resources/plugins/datatables/jquery.dataTables.min.js" />" ></script>
<script src="<c:url value="/resources/plugins/datatables/dataTables.bootstrap.min.js" />" ></script>
<link rel="stylesheet" href="<c:url value="/resources/plugins/datatables/dataTables.bootstrap.css" />">
<script src="<c:url value="/resources/js/jquery-2.2.3.min.js" />"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/utility.js" />"></script>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:choose>
    <c:when test="${actionType eq 'create'}">
        <c:set var="actionUrl" value="${contextPath}/donor/create" />
    </c:when>
    <c:otherwise>
        <c:set var="actionUrl" value="${contextPath}/donor/edit/${donor.id}" />
    </c:otherwise>
</c:choose>
<form:form id="donorForm" action="${actionUrl}" method="post" class="form-horizontal" role="form" modelAttribute="donor">

    <section class="content-header clearfix" style="background-color: blue">
        <h1 class="pull-left">
            Become a Donor!
            <small><i class="fa fa-arrow-circle-left"></i><a href="${contextPath}/donor/list">Back To List</a></small>
        </h1>
        <div class="pull-right">
            <button type="submit" name="save" class="btn bg-blue">
                <i class="fa fa-floppy-o"></i>
                Save
            </button>
        </div>    
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <form:hidden path="id" />
                <div>
                    <div class="form-group">
                        <label for="donorInput" class="col-md-4 control-label">Division<span class="mandatory">*</span></label>
                        <div class="col-md-8">
                            <form:select class="form-control" path="division.id" autofocus="autofocus">
                                <form:option value="" label="Select"></form:option>
                                <form:options items="${divisionList}" itemValue="id" itemLabel="${divisionName}"></form:options>
                            </form:select>
                            <form:errors path="division.id" cssClass="error"></form:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-md-4 control-label">Name<span class="mandatory">*</span></label>
                            <div class="col-md-8">
                            <form:input class="form-control" placeholder="Name" path="name" id="name" />
                            <form:errors path="name" cssStyle="color:red"></form:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="address" class="col-md-4 control-label">address<span class="mandatory">*</span></label>
                            <div class="col-md-8">
                            <form:input class="form-control" placeholder="address" path="address" id="address" />
                            <form:errors path="address" cssStyle="color:red"></form:errors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="bloodGroup" class="col-md-4 control-label">Blood Group<span class="mandatory">*</span></label>
                            <div class="col-md-8">
                            <form:input class="form-control" placeholder="bloodGroup" path="bloodGroup" id="bloodGroup" />
                            <form:errors path="bloodGroup" cssStyle="color:red"></form:errors>
                            </div>
                        </div>>    
                    </div>  
                </div>
            </div>
        </section>
</form:form>
