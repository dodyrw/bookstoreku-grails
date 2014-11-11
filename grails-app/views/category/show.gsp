
<%@ page import="com.dodyrw.bookstore.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-category" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>

			<g:if test="${flash.message}">
			<div class="alert alert-success" role="alert">${flash.message}</div>
			</g:if>

			<g:form url="[resource:categoryInstance, action:'delete']" method="DELETE" class="form-horizontal" role="form">

				<div class="form-group">
					<label for="name" class="col-md-1">
						<g:message code="category.name.label" default="Name" />
					</label>
					<div class="col-md-11">
						${categoryInstance?.name}
					</div>
				</div>

				<div class="form-group">
					<label for="action" class="col-md-12">
						<g:link class="btn btn-primary" action="edit" resource="${categoryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</label>
				</div>
			</g:form>


		</div>
	</body>
</html>
