<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="container-fluid">
	<div class="page-title">
		<div class="title-left">
			<h2>${titlePage }</h2>
		</div>
	</div>
	<form:form cssClass="user" modelAttribute="modelForm"
		servletRelativeAction="/category/save" method="POST">
		<form:hidden path="Id" />
		<form:hidden path="createDate" />
		<form:hidden path="activeFlag" />
		<div class="form-group">
			<form:input path="code" cssClass="form-control form-control-user"
				disabled="${viewOnly }" placeholder="Enter Code..." />
			<div class="has-error">
				<form:errors path="code" cssClass="help-block"></form:errors>
			</div>
		</div>
		<div class="form-group">
			<form:input path="name" cssClass="form-control form-control-user"
				disabled="${viewOnly }"
				placeholder=" Enter Code..." />
			<div class="has-error">
				<form:errors path="name" cssClass="help-block"></form:errors>
			</div>
		</div>
		<div class="form-group">
			<form:input path="description"
				cssClass="form-control form-control-user"
				disabled="${viewOnly }"
				placeholder=" Enter description..." />
			<div class="has-error">
				<form:errors path="description" cssClass="help-block"></form:errors>
			</div>
		</div>
		<button class="btn btn-primary btn-user btn-block" type="button"
			onclick="cancel();">Cancel</button>
		<c:if test="${!viewOnly }">
			<button class="btn btn-primary btn-user btn-block" type="reset">Reset</button>
			<button type="submit" class="btn btn-primary btn-user btn-block">Login</button>
		</c:if>
		<hr>
	</form:form>
</div>

<script type="text/javascript">
	$(document).ready(
			function() {
				$("#categorylistId").addClass('current-page').siblings()
						.removeClass('current-page');
				var parent = $('#categorylistId').parents('a');
				console.log(parent);
				parent.addClass('active').siblings().removeClass('active');
				$('categorylistId').parents.show();
			});
	function cancel() {
		window.location.href = '<c:url value="/category/list"/>'
	}
</script>