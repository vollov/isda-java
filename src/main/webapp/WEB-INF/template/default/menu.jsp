<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="nav-menu">
	<div class="container">
		<div class="navbar navbar-default" role="navigation">
		
			<ul class="nav navbar-nav">
				<li>
					<spring:url value="/home" var="homeUrl" htmlEscape="true"/>
					<a <c:if test="${page == 'home'}">class="active"</c:if> href="${homeUrl}"><spring:message code="menu.home" /></a>
				</li>
				<li>
					<spring:url value="/about" var="aboutUrl" htmlEscape="true"/>
					<a <c:if test="${page == 'about'}">class="active"</c:if> href="${aboutUrl}"><spring:message code="menu.about" /></a>
				</li>
			</ul>
		</div>
	</div>
</div>

<div id="breadcrumb">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="${homeUrl}"><spring:message code="menu.home" /></a></li>
			<li>${pageText}</li>
		</ol>
	</div>
</div>