<%@ page import="com.dodyrw.bookstore.Book" %>

<div class="form-group ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
	<label for="author" class="col-md-2 control-label">
		<g:message code="book.author.label" default="Author" />
		<span>*</span>
	</label>
	<div class="col-md-4">
		<g:textField name="author" class="form-control" required="" value="${bookInstance?.author}"/>
	</div>
</div>

<div class="form-group ${hasErrors(bean: bookInstance, field: 'category', 'error')} required">
	<label for="category" class="col-md-2 control-label">
		<g:message code="book.category.label" default="Category" />
		<span>*</span>
	</label>
	<div class="col-md-4">
		<g:select id="category" class="form-control" name="category.id" from="${com.dodyrw.bookstore.Category.list()}" optionKey="id" optionValue="name" required="" value="${bookInstance?.category?.id}"  class="many-to-one"/>
	</div>
</div>

<div class="form-group ${hasErrors(bean: bookInstance, field: 'publisher', 'error')} required">
	<label for="publisher" class="col-md-2 control-label">
		<g:message code="book.publisher.label" default="Publisher" />
		<span>*</span>
	</label>
	<div class="col-md-4">
		<g:textField name="publisher" class="form-control" required="" value="${bookInstance?.publisher}"/>
	</div>
</div>

<div class="form-group ${hasErrors(bean: bookInstance, field: 'title', 'error')} required">
	<label for="title" class="col-md-2 control-label">
		<g:message code="book.publisher.label" default="Title" />
		<span>*</span>
	</label>
	<div class="col-md-4">
		<g:textField name="title" class="form-control" required="" value="${bookInstance?.title}"/>
	</div>
</div>

