<%@ page import="com.dodyrw.bookstore.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="edit-category" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${categoryInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${categoryInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>

			<g:form url="[resource:categoryInstance, action:'update']" method="PUT" class="form-horizontal" role="form">

				<g:render template="form"/>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<g:submitButton name="update" class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					</div>
				</div>

			</g:form>

		</div>
	</body>
</html>
