<%@ page import="com.ljh.musica.Album" %>



<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'songs', 'error')} ">
    <label for="songs">
        <g:message code="album.songs.label" default="Songs"/>

    </label>

    <ul>
        <g:each in="${albumInstance?.songs ?}" var="s">
            <li><g:link controller="song" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
        </g:each>
    </ul>
    <g:link controller="song" action="create"
            params="['album.id': albumInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'song.label', default: 'Song')])}</g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="album.title.label" default="Title"/>

    </label>
    <g:textField name="title" value="${albumInstance?.title}"/>
</div>

