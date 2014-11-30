<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <h3>${menuText}</h3>
 			<!-- 
            <spring:message code="content.about" />
            -->
            ${content}
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>