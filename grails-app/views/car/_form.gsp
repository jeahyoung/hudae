<%@ page import="com.ljh.musica.Car" %>



<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'carName', 'error')} ">
    <label for="carName">
        <g:message code="car.carName.label" default="Car Name"/>

    </label>
    <g:textField name="carName" value="${carInstance?.carName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'engine', 'error')} required">
    <label for="engine">
        <g:message code="car.engine.label" default="Engine"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="engine.id" from="${com.ljh.musica.Engine.list()}" optionKey="id"
              value="${carInstance?.engine?.id}"/>
</div>

