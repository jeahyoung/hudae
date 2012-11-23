
<%@ page import="com.ljh.musica.Album" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="mobile">
        <g:set var="entityName" value="${message(code: 'album.label', default: 'Album')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
		<div data-role="header" data-position="fixed">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<div data-role="navbar">
				<ul>
					<li><a data-icon="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link data-icon="grid" data-ajax="false" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>
		</div>
		<div data-role="content">
			<g:if test="${flash.message}">
			<div class="message">${flash.message}</div>
			</g:if>
			<dl>
			
				<dt><g:message code="album.id.label" default="Id" /></dt>
				
					<dd><g:fieldValue bean="${albumInstance}" field="id"/></dd>
				
			
				<dt><g:message code="album.songs.label" default="Songs" /></dt>
				
					<g:each in="${albumInstance.songs}" var="s">
						<dd><g:link controller="song" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></dd>
					</g:each>
				
			
				<dt><g:message code="album.title.label" default="Title" /></dt>
				
					<dd><g:fieldValue bean="${albumInstance}" field="title"/></dd>
				
			
			</dl>
			<g:form>
				<g:hiddenField name="id" value="${albumInstance?.id}" />
				<g:actionSubmit data-icon="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" />
			</g:form>
		</div>
		<div data-role="footer">
		</div>
    </body>
</html>
