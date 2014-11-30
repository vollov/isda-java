<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <h1>HTTP 404 Page NOT found</h1>
 			<!-- 
            <spring:message code="content.about" /> ${contentText}
            -->
            
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>