

<%@ page import="com.ljh.musica.Car" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="mobile">
        <g:set var="entityName" value="${message(code: 'car.label', default: 'Car')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
		<div data-role="header" data-position="fixed">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<div data-role="navbar">
				<ul>
					<li><a data-icon="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link data-icon="grid" data-ajax="false" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>
		</div>
		<div data-role="content">
			<g:if test="${flash.message}">
			<div class="message" role="alert">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${carInstance}">
			<div class="errors" role="alert">
				<g:renderErrors bean="${carInstance}" as="list" />
			</div>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${carInstance?.id}" />
				<g:hiddenField name="version" value="${carInstance?.version}" />
			
				<div data-role="fieldcontain">
					<label for="carName"><g:message code="car.carName.label" default="Car Name" /></label>
					<g:textField name="carName" value="${carInstance?.carName}" />
				</div>
			
				<div data-role="fieldcontain">
					<label for="engine"><g:message code="car.engine.label" default="Engine" /></label>
					<g:select name="engine.id" from="${com.ljh.musica.Engine.list()}" optionKey="id" value="${carInstance?.engine?.id}"  />
				</div>
			
				<g:actionSubmit data-icon="check" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
			</g:form>
		</div>
		<div data-role="footer">
		</div>
    </body>
</html>
