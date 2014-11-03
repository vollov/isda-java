<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <h1>Contents List</h1>
	        <h2><a href="new">New Content</a></h2>
	        
        	<table border="1">
        		<th>id</th>
	        	<th>code</th>
	        	<th>locale</th>
	        	<th>Content</th>
	        	<th>Actions</th>
	        	
				<c:forEach var="content" items="${contents}" varStatus="status">
	        	<tr>
	        		<td>${status.index + 1}</td>
	        		<td>${content.code}</td>
					<td>${content.locale}</td>
					<td>${content.content}</td>
					<td>
						<a href="edit/${content.code}/${content.locale}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="delete?id=${content.code}">Delete</a>
					</td>
	        	</tr>
				</c:forEach>
        	</table>
            
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>