<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <h1>Staff Show</h1>
	        <ul>
	        	<li>${staff.firstName}</li>
	        	<li>${staff.lastName}</li>
	        	<li>${staff.phone}</li>
	        	<li>${staff.email}</li>
	        	<li>${staff.title}</li>
	        </ul>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>