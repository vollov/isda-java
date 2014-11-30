<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <h1>Event List</h1>
	        <h2><a href="event/new">New Event</a></h2>
	        
        	<table border="1">
        		<th>id</th>
	        	<th>street</th>
	        	<th>description</th>
	        	<th>event time</th>
	        	<th>status</th>
	        	<th>Actions</th>
	        	
				<c:forEach var="event" items="${events}" varStatus="status">
	        	<tr>
	        		<td>${status.index + 1}</td>
	        		<td>${event.address.street}</td>
	        		<td>${event.description}</td>
					<td>${event.eventTime}</td>
					<td>${event.active}</td>
					<td>
						<a href="event/${event.id}">Show</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="event/${event.id}/edit">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="picture/${event.id}/list">Edit Pictures</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="delete?id=${event.id}">Delete</a>
					</td>
	        	</tr>
				</c:forEach>
        	</table>
            
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>