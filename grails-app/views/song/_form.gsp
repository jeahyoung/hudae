<%@ page import="com.ljh.musica.Song" %>



<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'album', 'error')} required">
	<label for="album">
		<g:message code="song.album.label" default="Album" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="album.id" from="${com.ljh.musica.Album.list()}" optionKey="id" value="${songInstance?.album?.id}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'artist', 'error')} ">
	<label for="artist">
		<g:message code="song.artist.label" default="Artist" />
		
	</label>
	<g:textField name="artist" value="${songInstance?.artist}" />
</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'duration', 'error')} required">
	<label for="duration">
		<g:message code="song.duration.label" default="Duration" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="duration" value="${fieldValue(bean: songInstance, field: 'duration')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="song.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${songInstance?.title}" />
</div>

