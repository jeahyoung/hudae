
<%@ page import="com.ljh.musica.Song" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="mobile">
        <g:set var="entityName" value="${message(code: 'song.label', default: 'Song')}" />
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
			
				<dt><g:message code="song.id.label" default="Id" /></dt>
				
					<dd><g:fieldValue bean="${songInstance}" field="id"/></dd>
				
			
				<dt><g:message code="song.album.label" default="Album" /></dt>
				
					<dd><g:link controller="album" action="show" id="${songInstance?.album?.id}">${songInstance?.album?.encodeAsHTML()}</g:link></dd>
				
			
				<dt><g:message code="song.artist.label" default="Artist" /></dt>
				
					<dd><g:fieldValue bean="${songInstance}" field="artist"/></dd>
				
			
				<dt><g:message code="song.duration.label" default="Duration" /></dt>
				
					<dd><g:fieldValue bean="${songInstance}" field="duration"/></dd>
				
			
				<dt><g:message code="song.title.label" default="Title" /></dt>
				
					<dd><g:fieldValue bean="${songInstance}" field="title"/></dd>
				
			
			</dl>
			<g:form>
				<g:hiddenField name="id" value="${songInstance?.id}" />
				<g:actionSubmit data-icon="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" />
			</g:form>
		</div>
		<div data-role="footer">
		</div>
    </body>
</html>
