<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">


        <form method="post" enctype="multipart/form-data" action="save">
	<table>
    <tr>
    <th>
        Upload File: <input type="file" name="file">
    </th>
    </tr>    
   	<tr>
    <th>
        Description: <input type="text" name="description"/>
    </th>
    </tr>
    <tr>
    <th>
        Display id: <input type="text" name="displayId"/>
    </th>
    </tr>
    <tr>
    <th>
        Is Active: <input type="checkbox" name="active"/>
    </th>
    </tr>
    <tr>
      <td>
      <input type="submit" value="Upload">
    </td>
    </tr>
  </table>  
</form>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>