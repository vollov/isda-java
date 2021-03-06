<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><spring:message code="page.title" /></title>
    
    <spring:url value="/static/css/style.css" var="site_style"/>
    <spring:url value="/static/css/bootstrap.min.css" var="bootstrap_style"/>
    <spring:url value="/static/images/favicon.ico" var="favicon"/>
    <spring:url value="/static/lib/jquery/jquery.min.js" var="js_jquery"/>
    <spring:url value="/static/lib/twitter/bootstrap.min.js" var="js_bootstrap"/>
    
    <link href="${bootstrap_style}" rel="stylesheet" />
    <link href="${site_style}" rel="stylesheet" />
    <link href="${favicon}" rel="shortcut icon">
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div id="header">
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="menu" />
	</div>

	<div id="main" class="container">
		<tiles:insertAttribute name="body" />
	</div>
	
	<div id="footer">
		<tiles:insertAttribute name="footer" />
	</div>

	<script src="${js_jquery}"></script>
	<!-- UI Libs   -->
	<script src="${js_bootstrap}"></script>
</body>
</html>