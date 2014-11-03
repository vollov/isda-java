<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div id="head-banner" class="container">
	<div id="lang-bar" class="row text-right">
		<a href="/en/index.html">English</a>
	</div>
	<div id="logo-bar">
		<spring:url value="/static/images/logo.jpg" var="site_logo"/>
		
		<img src="${site_logo}" class="img-responsive" alt="ISDA Logo">
	</div>
</div>