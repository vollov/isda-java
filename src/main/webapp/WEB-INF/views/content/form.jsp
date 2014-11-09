<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
        
<c:choose>
	<c:when test="${content['new']}"><c:set var="method" value="post"/></c:when>
	<c:otherwise><c:set var="method" value="put"/></c:otherwise>
</c:choose>

<h2><c:if test="${content['new']}">New </c:if>Content:</h2>
<form:form modelAttribute="content" method="${method}">
  <table>
    <tr>
      <th>
        Code: <form:errors path="code" cssClass="errors"/>
        <br/>
        <form:input path="code" size="30" maxlength="80"/>
      </th>
    </tr>
    <tr>
      <th>
        Locale: <form:errors path="locale" cssClass="errors"/>
        <br/>
        <form:input path="locale" size="30" maxlength="30"/>
      </th>
    </tr>
    <tr>
      <th>
        Content: <form:errors path="content" cssClass="errors"/>
        <br/>
        <form:textarea path="content"/>
        
      </th>
    </tr>
    
    <tr>
      <td>
        <c:choose>
          <c:when test="${content['new']}">
            <p class="submit"><input type="submit" value="Add Content"/></p>
          </c:when>
          <c:otherwise>
            <p class="submit"><input type="submit" value="Update Content"/></p>
          </c:otherwise>
        </c:choose>
      </td>
    </tr>
  </table>
</form:form>

        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>