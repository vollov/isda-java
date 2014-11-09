<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">

<c:choose>
	<c:when test="${staff['new']}"><c:set var="method" value="post"/></c:when>
	<c:otherwise><c:set var="method" value="put"/></c:otherwise>
</c:choose>

<h2><c:if test="${staff['new']}">New </c:if>Staff:</h2>
<form:form modelAttribute="staff" method="${method}">
  <table>
    <tr>
      <th>
        First Name: <form:errors path="firstName" cssClass="errors"/>
        <br/>
        <form:input path="firstName" size="30" maxlength="80"/>
      </th>
    </tr>
    <tr>
      <th>
        Last Name: <form:errors path="lastName" cssClass="errors"/>
        <br/>
        <form:input path="lastName" size="30" maxlength="80"/>
      </th>
    </tr>
    <tr>
      <th>
        Phone: <form:errors path="phone" cssClass="errors"/>
        <br/>
        <form:input path="phone" size="20" maxlength="20"/>
        
      </th>
    </tr>
    <tr>
      <th>
        Email: <form:errors path="email" cssClass="errors"/>
        <br/>
        <form:input path="email" size="30" maxlength="80"/>
      </th>
    </tr>
    <tr>
      <th>
        Title: <form:errors path="title" cssClass="errors"/>
        <br/>
        <form:input path="title" size="30" maxlength="80"/>
      </th>
    </tr>
    <tr>
      <td>
        <c:choose>
          <c:when test="${staff['new']}">
            <p class="submit"><input type="submit" value="Add Staff"/></p>
          </c:when>
          <c:otherwise>
            <p class="submit"><input type="submit" value="Update Staff"/></p>
          </c:otherwise>
        </c:choose>
      </td>
    </tr>
  </table>
</form:form>

        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>