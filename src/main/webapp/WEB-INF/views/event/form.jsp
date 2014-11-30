<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">

<c:choose>
	<c:when test="${event['new']}"><c:set var="method" value="post"/></c:when>
	<c:otherwise><c:set var="method" value="put"/></c:otherwise>
</c:choose>

<h2><c:if test="${event['new']}">New </c:if>Address:</h2>
<form:form modelAttribute="event" method="${method}">
  <table>
    <tr>
      <th>
        Address: <form:errors path="address" cssClass="errors"/>
        <br/>
        <form:select path="address" items="${addresses}" itemLabel="street" itemValue="id"/>
      </th>
    </tr>
    <tr>
      <th>
        Description: <form:errors path="description" cssClass="errors"/>
        <br/>
        <form:input path="description" size="30" maxlength="80"/>
      </th>
    </tr>
    <tr>
      <th>
        Event Time: <form:errors path="eventTime" cssClass="errors"/>
        <br/>
        <form:input path="eventTime" size="15" maxlength="15"/> (yyyyMMdd:hhmm)
      </th>
      
    </tr>
    <tr>
      <th>
        <form:checkbox path="active"/> Is Active Address
      </th>
    </tr>
    <tr>
      <td>
        <c:choose>
          <c:when test="${event['new']}">
            <p class="submit"><input type="submit" value="Add Address"/></p>
          </c:when>
          <c:otherwise>
            <p class="submit"><input type="submit" value="Update Address"/></p>
          </c:otherwise>
        </c:choose>
      </td>
    </tr>
  </table>
</form:form>

        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>