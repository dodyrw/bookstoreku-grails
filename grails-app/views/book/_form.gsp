<%@ page import="com.dodyrw.bookstore.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="book.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${bookInstance?.author}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="book.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${com.dodyrw.bookstore.Category.list()}" optionKey="id" optionValue="name" required="" value="${bookInstance?.category?.id}"  class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publisher', 'error')} required">
	<label for="publisher">
		<g:message code="book.publisher.label" default="Publisher" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="publisher" required="" value="${bookInstance?.publisher}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${bookInstance?.title}"/>

</div>

