<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><spring:message code="page.title" /></title>
    <link href="resources/css/style.css" rel="stylesheet" />
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="resources/images/favicon.ico" rel="shortcut icon">
    <link href="resources/css/style.css" rel="stylesheet" />
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

	<script src="resources/lib/jquery/jquery.min.js"></script>
	<!-- UI Libs   -->
	<script src="resources/lib/twitter/bootstrap.min.js"></script>
</body>
</html>