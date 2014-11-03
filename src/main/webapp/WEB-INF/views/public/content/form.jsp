<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
		<h1>New/Edit Content</h1>
		<table>
			<spring:url value="/admin/content/save" var="url_content_save"/>
			<!-- action="${url_content_save}" -->
			<form:form method="post" modelAttribute="content">
			<tr>
				<td>Code:</td>
				<td><form:input path="code" value="${content.code}"/></td>
			</tr>
			<tr>
				<td>Locale:</td>
				<td><form:input path="locale"/></td>
			</tr>
			<tr>
				<td>Content:</td>
				<td><form:textarea path="content"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="Save">
				</td>
			</tr>			
			</form:form>
		</table>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>