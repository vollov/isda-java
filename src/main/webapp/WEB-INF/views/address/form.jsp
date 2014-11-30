<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">

<c:choose>
	<c:when test="${address['new']}"><c:set var="method" value="post"/></c:when>
	<c:otherwise><c:set var="method" value="put"/></c:otherwise>
</c:choose>

<h2><c:if test="${address['new']}">New </c:if>Address:</h2>
<form:form modelAttribute="address" method="${method}">
  <table>
    <tr>
      <th>
        Street: <form:errors path="street" cssClass="errors"/>
        <br/>
        <form:input path="street" size="30" maxlength="80"/>
      </th>
    </tr>
    <tr>
      <th>
        City: <form:errors path="city" cssClass="errors"/>
        <br/>
        <form:input path="city" size="30" maxlength="80"/>
      </th>
    </tr>
    <tr>
      <th>
        PostCode: <form:errors path="zipCode" cssClass="errors"/>
        <br/>
        <form:input path="zipCode" size="6" maxlength="6"/>
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
          <c:when test="${address['new']}">
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