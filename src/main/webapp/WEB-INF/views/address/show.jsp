<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <h1>Address Show</h1>
	        <ul>
	        	<li>${address.city}</li>
	        	<li>${address.street}</li>
	        	<li>${address.zipCode}</li>
	        	<li>
		        	<c:choose>
						<c:when test="${address.active}">Active</c:when>
						<c:otherwise>Disabled</c:otherwise>
					</c:choose>
				</li>
	        </ul>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>