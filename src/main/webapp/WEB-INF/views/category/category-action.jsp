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
		<div class="form-group">
			<form:input path="code" cssClass="form-control form-control-user"
				placeholder="Enter Code..." />
			<div class="has-error">
				<form:errors path="code" cssClass="help-block"></form:errors>
			</div>
		</div>
		<div class="form-group">
			<form:input path="code" cssClass="form-control form-control-user"
				placeholder="Enter Code..." />
			<div class="has-error">
				<form:errors path="name" cssClass="help-block"></form:errors>
			</div>
		</div>
		<div class="form-group">
			<form:input path="code" cssClass="form-control form-control-user"
				placeholder="Enter Code..." />
			<div class="has-error">
				<form:errors path="description" cssClass="help-block"></form:errors>
			</div>
		</div>
		<a href="index.html" class="btn btn-primary btn-user btn-block">
			Login </a>
		<hr> 
	</form:form>
</div>