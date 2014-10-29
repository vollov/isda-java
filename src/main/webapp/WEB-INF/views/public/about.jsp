<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <h1> Guanyu -- ${page}</h1>
 
            <spring:message code="content.about" />
            
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>