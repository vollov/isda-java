<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
        <h1>Single File Upload</h1>

        <form method="post" enctype="multipart/form-data" action="singleSave">
			Upload File: <input type="file" name="file">
			<br /><br />
			Description: <input type="text" name="desc"/>
			<br/><br/><input type="submit" value="Upload"> 
		</form>
        
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>