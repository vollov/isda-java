<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <h1>Picture List</h1>
	        <h2><a href="new">New Picture</a></h2>
	        
        	<table border="1">
        		<th>id</th>
	        	<th>picture</th>
	        	<th>description</th>
	        	<th>display id</th>
	        	<th>status</th>
	        	<th>Actions</th>
	        	
				<c:forEach var="picture" items="${pictures}" varStatus="status">
	        	<tr>
	        		<td>${status.index + 1}</td>
	        		<td>${picture.address.street}</td>
	        		<td>${picture.description}</td>
					<td>${picture.pictureTime}</td>
					<td>${picture.active}</td>
					<td>
						<a href="picture/${picture.id}">Show</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="picture/${picture.id}/edit">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="delete?id=${picture.id}">Delete</a>
					</td>
	        	</tr>
				</c:forEach>
        	</table>
            
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>