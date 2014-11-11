<%@ page import="com.dodyrw.bookstore.Category" %>

<div class="form-group ${hasErrors(bean: categoryInstance, field: 'name', 'error')} required">
	<label for="name" class="col-md-2 control-label">
		<g:message code="category.name.label" default="Name" />
		<span>*</span>
	</label>
	<div class="col-md-4">
		<g:textField name="name" class="form-control" required="" value="${categoryInstance?.name}"/>
	</div>
</div>
