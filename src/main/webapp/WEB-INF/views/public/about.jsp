<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <h1> Guanyu -- ${page}</h1>
 
            <p><spring:message code="about.p1" /></p>
            <p><spring:message code="about.p2" /></p>
            <p><spring:message code="about.p3" /></p>
            <p><spring:message code="about.p4" /></p>
            
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>