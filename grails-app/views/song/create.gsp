

<%@ page import="com.ljh.musica.Song" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="mobile">
        <g:set var="entityName" value="${message(code: 'song.label', default: 'Song')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
		<div data-role="header" data-position="fixed">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
			<g:hasErrors bean="${songInstance}">
			<div class="errors" role="alert">
				<g:renderErrors bean="${songInstance}" as="list" />
			</div>
			</g:hasErrors>
			<g:form action="save" >
			
				<div data-role="fieldcontain">
					<label for="album"><g:message code="song.album.label" default="Album" /></label>
					<g:select name="album.id" from="${com.ljh.musica.Album.list()}" optionKey="id" value="${songInstance?.album?.id}"  />
				</div>
			
				<div data-role="fieldcontain">
					<label for="artist"><g:message code="song.artist.label" default="Artist" /></label>
					<g:textField name="artist" value="${songInstance?.artist}" />
				</div>
			
				<div data-role="fieldcontain">
					<label for="duration"><g:message code="song.duration.label" default="Duration" /></label>
					<g:field type="number" name="duration" value="${fieldValue(bean: songInstance, field: 'duration')}" />
				</div>
			
				<div data-role="fieldcontain">
					<label for="title"><g:message code="song.title.label" default="Title" /></label>
					<g:textField name="title" value="${songInstance?.title}" />
				</div>
			
				<g:submitButton name="create" data-icon="check" value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</g:form>
		</div>
		<div data-role="footer">
		</div>
    </body>
</html>
