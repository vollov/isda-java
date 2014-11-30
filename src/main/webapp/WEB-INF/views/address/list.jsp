<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <h1>Address List</h1>
	        <h2><a href="address/new">New Address</a></h2>
	        
        	<table border="1">
        		<th>id</th>
	        	<th>street</th>
	        	<th>city</th>
	        	<th>post code</th>
	        	<th>status</th>
	        	<th>Actions</th>
	        	
				<c:forEach var="address" items="${addresses}" varStatus="status">
	        	<tr>
	        		<td>${status.index + 1}</td>
	        		<td>${address.street}</td>
	        		<td>${address.city}</td>
					<td>${address.zipCode}</td>
					<td>${address.active}</td>
					<td>
						<a href="address/${address.id}">Show</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="address/${address.id}/edit">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="delete?id=${address.id}">Delete</a>
					</td>
	        	</tr>
				</c:forEach>
        	</table>
            
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>