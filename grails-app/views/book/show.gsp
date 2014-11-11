
<%@ page import="com.dodyrw.bookstore.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-book" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="alert alert-success" role="alert">${flash.message}</div>
			</g:if>

			<g:form url="[resource:bookInstance, action:'delete']" method="DELETE" class="form-horizontal" role="form">

				<div class="form-group">
					<label for="author" class="col-md-1">
					<g:message code="book.author.label" default="Author" />
					</label>
					<div class="col-md-11">
						${bookInstance?.author}
					</div>
				</div>

				<div class="form-group">
					<label for="category" class="col-md-1">
						<g:message code="book.category.label" default="Category" />
					</label>
					<div class="col-md-11">
						${bookInstance?.category.name}
					</div>
				</div>

				<div class="form-group">
					<label for="publisher" class="col-md-1">
						<g:message code="book.publisher.label" default="Publisher" />
					</label>
					<div class="col-md-11">
						${bookInstance?.publisher}
					</div>
				</div>

				<div class="form-group">
					<label for="title" class="col-md-1">
						<g:message code="book.title.label" default="Title" />
					</label>
					<div class="col-md-11">
						${bookInstance?.title}
					</div>
				</div>


				<div class="form-group">
					<label for="action" class="col-md-12">
						<g:link class="btn btn-primary" action="edit" resource="${bookInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</label>
				</div>
			</g:form>

		</div>
	</body>
</html>
