<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
        
        <form method="POST" enctype="multipart/form-data"
		action="/upload">
		File to upload: <input type="file" name="file"><br /> Name: <input
			type="text" name="name"><br /> <br /> <input type="submit"
			value="Upload"> Press here to upload the file!
	</form>
        
        
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>