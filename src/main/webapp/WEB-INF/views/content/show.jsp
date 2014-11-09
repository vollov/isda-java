<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <h1>Contents Show</h1>
	        <ul>
	        	<li>${content.code}</li>
	        	<li>${content.locale}</li>
	        	<li>${content.content}</li>
	        </ul>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>