

<%@ page import="com.ljh.musica.Album" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="mobile">
        <g:set var="entityName" value="${message(code: 'album.label', default: 'Album')}" />
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
			<g:hasErrors bean="${albumInstance}">
			<div class="errors" role="alert">
				<g:renderErrors bean="${albumInstance}" as="list" />
			</div>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${albumInstance?.id}" />
				<g:hiddenField name="version" value="${albumInstance?.version}" />
			
				<div data-role="fieldcontain">
					<label for="songs"><g:message code="album.songs.label" default="Songs" /></label>
					
<ul>
<g:each in="${albumInstance?.songs?}" var="s">
    <li><g:link controller="song" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="song" action="create" params="['album.id': albumInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'song.label', default: 'Song')])}</g:link>

				</div>
			
				<div data-role="fieldcontain">
					<label for="title"><g:message code="album.title.label" default="Title" /></label>
					<g:textField name="title" value="${albumInstance?.title}" />
				</div>
			
				<g:actionSubmit data-icon="check" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
			</g:form>
		</div>
		<div data-role="footer">
		</div>
    </body>
</html>
