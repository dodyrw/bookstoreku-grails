<%@ page import="com.dodyrw.bookstore.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="edit-book" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${bookInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${bookInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>

			<g:form url="[resource:bookInstance, action:'update']" method="PUT" class="form-horizontal" role="form">

				<g:hiddenField name="version" value="${bookInstance?.version}" />

				<g:render template="form"/>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<g:submitButton name="save" action="update" class="btn btn-primary" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					</div>
				</div>

			</g:form>
		</div>
	</body>
</html>
