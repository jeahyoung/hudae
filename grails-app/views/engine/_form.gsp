<%@ page import="com.ljh.musica.Engine" %>



<div class="fieldcontain ${hasErrors(bean: engineInstance, field: 'engineName', 'error')} ">
    <label for="engineName">
        <g:message code="engine.engineName.label" default="Engine Name"/>

    </label>
    <g:textField name="engineName" value="${engineInstance?.engineName}"/>
</div>

