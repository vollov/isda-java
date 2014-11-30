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
					<spring:url value="/page/about" var="aboutUrl" htmlEscape="true"/>
					<a <c:if test="${page == 'about'}">class="active"</c:if> href="${aboutUrl}"><spring:message code="menu.about" /></a>
				</li>
				<li>
					<spring:url value="/page/services" var="servicesUrl" htmlEscape="true"/>
					<a <c:if test="${page == 'services'}">class="active"</c:if> href="${servicesUrl}"><spring:message code="menu.services" /></a>
				</li>
				<li>
					<spring:url value="/page/education" var="educationUrl" htmlEscape="true"/>
					<a <c:if test="${page == 'education'}">class="active"</c:if> href="${educationUrl}"><spring:message code="menu.education" /></a>
				</li>
				<li>
					<spring:url value="/page/investments" var="investmentsUrl" htmlEscape="true"/>
					<a <c:if test="${page == 'investments'}">class="active"</c:if> href="${investmentsUrl}"><spring:message code="menu.investments" /></a>
				</li>
				<li>
					<spring:url value="/page/events" var="eventsUrl" htmlEscape="true"/>
					<a <c:if test="${page == 'events'}">class="active"</c:if> href="${eventsUrl}"><spring:message code="menu.events" /></a>
				</li>
								<li>
					<spring:url value="/page/activities" var="activitiesUrl" htmlEscape="true"/>
					<a <c:if test="${page == 'activities'}">class="active"</c:if> href="${activitiesUrl}"><spring:message code="menu.activities" /></a>
				</li>
			</ul>
		</div>
	</div>
</div>

<div id="breadcrumb">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="${homeUrl}"><spring:message code="menu.home" /></a></li>
			<li>${menuText}</li>
		</ol>
	</div>
</div>