<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <h1>Contents List</h1>
	        <h2><a href="staff/new">New Staff</a></h2>
	        
        	<table border="1">
        		<th>id</th>
	        	<th>first name</th>
	        	<th>last name</th>
	        	<th>phone</th>
	        	<th>email</th>
	        	<th>title</th>
	        	<th>Actions</th>
	        	
				<c:forEach var="staff" items="${staffs}" varStatus="status">
	        	<tr>
	        		<td>${status.index + 1}</td>
	        		<td>${staff.firstName}</td>
	        		<td>${staff.lastName}</td>
					<td>${staff.phone}</td>
					<td>${staff.email}</td>
					<td>${staff.title}</td>
					<td>
						<a href="staff/${staff.id}">Show</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="staff/${staff.id}/edit">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="delete?id=${content.code}">Delete</a>
					</td>
	        	</tr>
				</c:forEach>
        	</table>
            
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>