<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <h1>Event Show</h1>
	        <ul>    
        	    <li>${event.address.street}</li>
        		<li>${event.description}</li>
				<li>${event.eventTime}</li>
				<li>${event.active}</li>	
	        	<li>
		        	<c:choose>
						<c:when test="${event.active}">Active</c:when>
						<c:otherwise>Disabled</c:otherwise>
					</c:choose>
				</li>
	        </ul>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>